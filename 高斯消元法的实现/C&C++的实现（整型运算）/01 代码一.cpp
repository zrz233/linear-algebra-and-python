#include<bits/stdc++.h>
#define _CRT_NO_SECURE_WARNING
#define re register
#define il inline
#define debug printf("Now is %d\n",__LINE__);
using namespace std;
#define maxn 105
#define D double
D a[maxn][maxn];
int n;
int main()
{
	scanf("%d", &n);
	for (re int i = 1; i <= n; ++i)
	{
		for (re int j = 1; j <= n + 1; ++j)
		{
			scanf("%lf", &a[i][j]);
		}
	}
	for (re int i = 1; i <= n; ++i)//ö���У�� 
	{
		re int max = i;
		for (re int j = i + 1; j <= n; ++j)//ѡ���������ϵ�� 
		{
			if (fabs(a[j][i]) > fabs(a[max][i]))
				//fabs��ȡ�������ľ���ֵ�ĺ���
			{
				max = j;
			}
		}
		for (re int j = 1; j <= n + 1; ++j)//����
		{
			swap(a[i][j], a[max][j]);
		}
		if (!a[i][i])//���ֵ����0��˵�����ж�Ϊ0���϶��޽� 
		{
			puts("No Solution");
			return 0;
		}
		for (re int j = 1; j <= n; ++j)//ÿһ���ȥһ���������Ӽ���Ԫ��
		{
			if (j != i)
			{
				re D temp = a[j][i] / a[i][i];
				for (re int k = i + 1; k <= n + 1; ++k)
				{
					a[j][k] -= a[i][k] * temp;
					//a[j][k]-=a[j][i]*a[i][k]/a[i][i];
				}
			}
		}
	}
	//�������������󣬾����������
	/*
	k1*a=e1
	k2*b=e2
	k3*c=e3
	k4*d=e4
	*/
	//��������Ľ��Ҫ�ǵó��Ը���ϵ������ȥ����
	for (re int i = 1; i <= n; ++i)
	{
		printf("%.2lf\n", a[i][n + 1] / a[i][i]);
	}
	return 0;
}