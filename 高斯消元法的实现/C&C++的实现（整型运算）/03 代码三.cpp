#include<cstdio>
#include<cmath>

const double EPS = 1E-8;
double B[110][110];
int n;

int main() {
    scanf("%d", &n);
    for (register int i = 0; i < n; i++) {
        for (register int j = 0; j < n; j++)
            scanf("%lf", &B[i][j]);//����ϵ��
        scanf("%lf", &B[i][n]);//����ֵ
    }
    for (register int i = 0; i < n; i++) {
        int pivot = i;
        for (register int j = i; j < n; j++)//ѡ��һ����ǰλ��ϵ������ֵ���ĵ�����������ֹ���
            if (fabs(B[j][i] - B[pivot][i]) <= EPS) pivot = j;
        for (register int j = 0; j <= n; j++) {//����������Ҫ�����е�ȫ����������
            double t = B[i][j];
            B[i][j] = B[pivot][j];
            B[pivot][j] = t;
        }
        if (fabs(B[i][i]) <= EPS) {//�����λ��ϵ�������㣬��0x=a��һ���޽�
            printf("No Solution\n");
            return 0;
        }
        for (register int j = i + 1; j <= n; j++) B[i][j] /= B[i][i];//����λ��ϵ����Ϊ1
        for (register int j = 0; j < n; j++)
            if (i != j)
                for (register int k = i + 1; k <= n; k++) B[j][k] -= B[j][i] * B[i][k];//�����������üӼ�����ȥϵ��ֵ
    }
    for (register int i = 0; i < n; i++) printf("%.2lf\n", B[i][n]);//�����������
    return 0;
}