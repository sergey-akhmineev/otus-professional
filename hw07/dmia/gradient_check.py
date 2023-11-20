import numpy as np
from random import randrange


def eval_numerical_gradient(f, x):
    fx = f(x)
    grad = np.zeros(x.shape)
    h = 0.00001

    it = np.nditer(x, flags=['multi_index'], op_flags=['readwrite'])
    while not it.finished:
        ix = it.multi_index
        x[ix] += h
        fxh = f(x)
        x[ix] -= h

        grad[ix] = (fxh - fx) / h
        print(ix, grad[ix])
        it.iternext()
    return grad


def grad_check_sparse(f, x, analytic_grad, num_checks):
    h = 1e-5

    for i in range(num_checks):
        ix = tuple([randrange(m) for m in x.shape])

        x[ix] += h
        fxph = f(x)
        x[ix] -= 2 * h
        fxmh = f(x)
        x[ix] += h

        grad_numerical = (fxph - fxmh) / (2 * h)
        grad_analytic = analytic_grad[ix]
        rel_error = abs(grad_numerical - grad_analytic) / (abs(grad_numerical) + abs(grad_analytic))
        print('numerical: %f analytic: %f, relative error: %e' % (grad_numerical, grad_analytic, rel_error))