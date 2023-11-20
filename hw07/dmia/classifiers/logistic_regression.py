import numpy as np
from scipy import sparse


class LogisticRegression:
    def __init__(self):
        self.w = None
        self.loss_history = None

    def train(self, X, y, learning_rate=1e-3, reg=1e-5, num_iters=100,
              batch_size=200, verbose=False):
        X = LogisticRegression.append_biases(X)
        num_train, dim = X.shape
        if self.w is None:
            self.w = np.random.randn(dim) * 0.01
        self.loss_history = []
        for it in range(num_iters):
            indices = np.random.choice(num_train, batch_size)
            X_batch = X[indices, :]
            y_batch = y[indices]

            loss, grad_w = self.loss(X_batch, y_batch, reg)
            self.loss_history.append(loss)

            self.w -= learning_rate * grad_w

            if verbose and it % 100 == 0:
                print('iteration %d / %d: loss %f' % (it, num_iters, loss))

        return self

    @staticmethod
    def sigmoid(z):
        return 1.0 / (1.0 + np.exp(-z))

    def predict_proba(self, X, append_bias=False):
        if append_bias:
            X = LogisticRegression.append_biases(X)

        predictions = self.sigmoid(X.dot(self.w.T))
        y_proba = np.vstack([1 - predictions, predictions]).T
        return y_proba

    def predict(self, X):
        y_proba = self.predict_proba(X, append_bias=True)
        y_pred = y_proba.argmax(axis=1)
        return y_pred

    def loss(self, X_batch, y_batch, reg):
        dw = np.zeros_like(self.w)  # initialize the gradient as zero
        loss = 0
        h = self.sigmoid(X_batch.dot(self.w))
        loss = -np.dot(y_batch, np.log(h)) - np.dot((1 - y_batch), np.log(1.0 - h))
        dw = (h - y_batch) * X_batch
        num_train = X_batch.shape[0]
        loss = loss / num_train
        dw = dw / num_train
        loss += (reg / (2.0 * num_train)) * np.dot(self.w[:-1], self.w[:-1])
        dw[:-1] = dw[:-1] + (reg * self.w[:-1]) / num_train
        return loss, dw

    @staticmethod
    def append_biases(X):
        return sparse.hstack((X, np.ones(X.shape[0])[:, np.newaxis])).tocsr()