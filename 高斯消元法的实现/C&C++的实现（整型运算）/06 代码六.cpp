#include<iostream>
#include<cstdio>
#include<cmath>
#define maxn 110
#define eps (1e-6)
using namespace std;
int n;
double a[maxn][maxn];
bool p;
void init() {
    p = 1;
    scanf("%d", &n);
    for (int i = 1; i <= n; ++i)
        for (int j = 1; j <= n + 1; ++j)
            scanf("%lf", &a[i][j]);
}
void gauss_jordan() {
    for (int i = 1; i <= n; ++i) {
        int r = i;
        for (int j = i + 1; j <= n; ++j)
            if (fabs(a[r][i]) < fabs(a[j][i]))
                r = j;
        if (r != i)
            for (int j = 1; j <= n + 1; ++j)
                swap(a[i][j], a[r][j]);
        if (fabs(a[i][i]) < eps) {
            p = 0;
            return;
        }
        for (int j = 1; j <= n; ++j)
            if (j != i) {
                double tmp = a[j][i] / a[i][i];
                for (int k = i + 1; k <= n + 1; ++k)
                    a[j][k] -= a[i][k] * tmp;
            }
    }
    for (int i = 1; i <= n; ++i)
        a[i][n + 1] /= a[i][i];
}
void print() {
    if (!p) {
        printf("No Solution\n");
        return;
    }
    for (int i = 1; i <= n; ++i)
        printf("%.2lf\n", a[i][n + 1]);
}
int main() {
    init();
    gauss_jordan();
    print();
    return 0;
}