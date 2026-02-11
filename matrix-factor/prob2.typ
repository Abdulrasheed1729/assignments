== Part II

#image("matrix_learning_results.pdf", )

=== Observation
Both ALS and LRR (which exploit the rank-2 structure) significantly outperform standard linear regression
The performance gap is most pronounced with small training sets.
As training size increases, all models improve, but low-rank methods maintain their advantage
ALS and LRR perform very similarly.

=== Code
```py
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import Ridge
from scipy.linalg import svd

np.random.seed(42)

def generate_low_rank_matrix(d=10, p=10, rank=2):
    A = np.random.randn(d, rank)
    B = np.random.randn(rank, p)
    W_star = A @ B
    return W_star

def generate_data(W_star, n, noise_std=0.1):
    d, p = W_star.shape
    X = np.random.randn(n, d)
    noise = np.random.randn(n, p) * noise_std
    Y = X @ W_star + noise
    return X, Y

def als(X, Y, rank=2, max_iter=100, tol=1e-6):
    n, d = X.shape
    n, p = Y.shape

    # Initialize A and B using SVD of the least squares solution
    XTX_inv = np.linalg.inv(X.T @ X )
    W_ls = XTX_inv @ X.T @ Y
    U, s, Vt = svd(W_ls, full_matrices=False)
    A = U[:, :rank] @ np.diag(np.sqrt(s[:rank]))
    B = Vt[:rank, :].T @ np.diag(np.sqrt(s[:rank]))

    prev_loss = float('inf')

    for iteration in range(max_iter):
        # FIx A and update B
        BTB = B.T @ B
        BTB_inv = np.linalg.inv(BTB )
        A = XTX_inv @ X.T @ Y @ B @ BTB_inv

        # Fix A update for B
        XA = X @ A
        ATXXA = A.T @ X.T @ X @ A
        ATXXA_inv = np.linalg.inv(ATXXA )
        B = Y.T @ XA @ ATXXA_inv

        # Compute loss
        W = A @ B.T
        loss = np.mean((Y - X @ W) ** 2)

        if abs(prev_loss - loss) < tol:
            break
        prev_loss = loss

    W = A @ B.T
    return W

def low_rank_regression(X, Y, rank=2):
    n, d = X.shape
    n, p = Y.shape

    # First solve the unconstrained problem
    XTX = X.T @ X
    XTY = X.T @ Y
    W_full = np.linalg.solve(XTX , XTY)

    # Truncate to rank-R approximation using SVD
    U, s, Vt = svd(W_full, full_matrices=False)
    s_truncated = s.copy()
    s_truncated[rank:] = 0
    W_rank = U @ np.diag(s_truncated) @ Vt

    return W_rank

def linear_regression(X, Y):
    n, d = X.shape
    XTX = X.T @ X
    XTY = X.T @ Y
    W = np.linalg.solve(XTX, XTY)
    return W

def compute_rmse(Y_true, Y_pred):
    return np.sqrt(np.mean((Y_true - Y_pred) ** 2))

def run_single_experiment(n_train, n_test=500, rank=2):

    W_star = generate_low_rank_matrix(d=10, p=10, rank=rank)

    # Generate training and test data
    X_train, Y_train = generate_data(W_star, n_train)
    X_test, Y_test = generate_data(W_star, n_test)

    # Train ALS model
    W_als = als(X_train, Y_train, rank=rank, max_iter=200)
    Y_pred_als = X_test @ W_als
    rmse_als = compute_rmse(Y_test, Y_pred_als)

    # Train LRR model
    W_lrr = low_rank_regression(X_train, Y_train, rank=rank)
    Y_pred_lrr = X_test @ W_lrr
    rmse_lrr = compute_rmse(Y_test, Y_pred_lrr)

    # Train Linear Regression model
    W_lr = linear_regression(X_train, Y_train)
    Y_pred_lr = X_test @ W_lr
    rmse_lr = compute_rmse(Y_test, Y_pred_lr)

    return rmse_als, rmse_lrr, rmse_lr

def main():

    n_runs = 50
    n_train_sizes = list(range(20, 101, 10))
    n_test = 500
    rank = 2

    results_als = np.zeros((n_runs, len(n_train_sizes)))
    results_lrr = np.zeros((n_runs, len(n_train_sizes)))
    results_lr = np.zeros((n_runs, len(n_train_sizes)))

    print("Starting experiments...")
    print(f"Number of runs: {n_runs}")
    print(f"Training sizes: {n_train_sizes}")
    print(f"Test size: {n_test}")
    print(f"Matrix rank: {rank}")
    print()

    for run_idx in range(n_runs):
        if (run_idx + 1) % 10 == 0:
            print(f"Completed {run_idx + 1}/{n_runs} runs...")

        for size_idx, n_train in enumerate(n_train_sizes):
            rmse_als, rmse_lrr, rmse_lr = run_single_experiment(n_train, n_test, rank)
            results_als[run_idx, size_idx] = rmse_als
            results_lrr[run_idx, size_idx] = rmse_lrr
            results_lr[run_idx, size_idx] = rmse_lr

    print("All experiments completed!")

    # Compute average errors
    avg_als = np.mean(results_als, axis=0)
    avg_lrr = np.mean(results_lrr, axis=0)
    avg_lr = np.mean(results_lr, axis=0)

    std_als = np.std(results_als, axis=0)
    std_lrr = np.std(results_lrr, axis=0)
    std_lr = np.std(results_lr, axis=0)

    # Print summary statistics
    print("Average RMSE Results:")
    print("-" * 60)
    print(f"{'n_train':<10} {'ALS':<15} {'LRR':<15} {'LR':<15}")
    print("-" * 60)
    for i, n in enumerate(n_train_sizes):
        print(f"{n:<10} {avg_als[i]:<15.4f} {avg_lrr[i]:<15.4f} {avg_lr[i]:<15.4f}")
    print()

    # Create plot
    plt.figure(figsize=(12, 7))

    plt.plot(n_train_sizes, avg_als, 'o-', linewidth=2, markersize=8,
             label='ALS (rank 2)', color='magenta')

    plt.plot(n_train_sizes, avg_lrr, 's-', linewidth=2, markersize=8,
             label='LRR (rank 2)', color='green')

    plt.plot(n_train_sizes, avg_lr, '^-', linewidth=2, markersize=8,
             label='Linear Regression', color='teal')

    plt.xlabel('Training Dataset Size (n)', fontsize=14, fontweight='bold')
    plt.ylabel('Test RMSE', fontsize=14, fontweight='bold')
    plt.legend(fontsize=12, loc='upper right', frameon=True, shadow=True)
    plt.grid(True, alpha=0.3, linestyle='--')
    plt.xticks(n_train_sizes, fontsize=11)
    plt.yticks(fontsize=11)

    ax = plt.gca()
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)
    ax.spines['left'].set_linewidth(1.5)
    ax.spines['bottom'].set_linewidth(1.5)

    plt.tight_layout()
    plt.savefig('matrix_learning_results.pdf',
                dpi=300, bbox_inches='tight', format="pdf")
```
