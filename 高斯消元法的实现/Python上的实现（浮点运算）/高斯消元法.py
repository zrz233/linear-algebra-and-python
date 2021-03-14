# coding: utf8
import numpy as np

def matrixInput() -> object:
    matrix_a: object = np.mat([[1, 2, 13, 4],
                       [5, 6, 7, 8],
                       [9, 11, 32, 12],
                       [12, 121, 43, 42]], dtype=float)
    matrix_b: object = np.mat([22, 11, -31, -31])
    return matrix_a, matrix_b


def Elimination(mat_a):
    for i in range(0, (mat_a.shape[0]) - 1):
        if mat_a[i, i] != 0:
            for j in range(i + 1, mat_a.shape[0]):
                mat_a[j:j + 1, :] = mat_a[j:j + 1, :] - \
                                    (mat_a[j, i] / mat_a[i, i]) * mat_a[i, :]
        else:
            print("终断运算：")
            print(mat_a)
            break
    return mat_a

def back(new_mat: object):
    x = np.mat(np.zeros(new_mat.shape[0], dtype=float))
    number = x.shape[1] - 1
    b = number + 1
    x[0, number] = new_mat[number, b] / new_mat[number, number]
    for i in range(number - 1, -1, -1):
        try:
            x[0, i] = (new_mat[i, b] - np.sum(np.multiply(new_mat[i, i + 1:b], x[0, i + 1:b]))) / (new_mat[i, i])
        except:
            print("错误")
    print(x)


if __name__ == "__main__":
    mat_a, mat_b = matrixInput()
    print("原矩阵")
    print(np.hstack((mat_a, mat_b.T)))
    new_mat = Elimination(np.hstack((mat_a, mat_b.T)))
    print("三角矩阵")
    print(new_mat)
    print("方程的解")
    back(new_mat)