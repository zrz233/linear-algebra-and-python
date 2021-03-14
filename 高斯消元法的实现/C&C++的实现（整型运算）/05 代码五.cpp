#include<iostream>
#include<cstdio>
#include<algorithm>
using namespace std;
inline int qr(void){
	char c=getchar();
	int x=0,q=1;
	while(c<48||c>57)
		q=c==45?-1:q,c=getchar();
	while(c>=48&&c<=57)
		x=(x<<1)+(x<<3)+(c^48),c=getchar();
	return q*x;
}
#define RP(t,a,b)	for(int t=(a),edd=(b);t<=edd;t++)
typedef double db;
const double EPS=1e-20;//这是坑点，一点要小一点，这个EPS。 
int n;
const int maxn=105;
int ans[maxn];
inline db fabs(double x){
	return x>=0?x:-x;
}
struct node{
	db dat[maxn];
	double& operator [](const int &x){
		return dat[x];//重载运算符，返回引用 ， 就算有dat有更多维，这样就好了，原理有关c++的“地址”系统 
	}
	node operator *(const db &x){
		node ans=(*this);//this是个指针，指向运算符左边的地址 
		for(int t=1;t<=n+1;t++)
			ans[t]*=x;
		return ans;
	}
	node operator /(const db &x){
		node ans=(*this);
		for(int t=1;t<=n+1;t++)
			ans[t]/=x;
		return ans;	
	}
	node operator -(node &x){
		node ans=(*this);
		for(int t=1;t<=n+1;t++)
			ans[t]-=x[t];
		return ans;
	}
	node operator *=(const db &x){
		return (*this)=(*this)*x;
	}
	node operator /=(const db &x){
		return (*this)=(*this)/x;
	}
	node operator -=( node &x){
		return (*this)=(*this)-x;
	}
}data[maxn];
bool vis[maxn];
inline int big(int x){
	db ans=0;
	int ret;
	for(int t=1;t<=n;t++)
		if(!vis[t]&&ans<fabs(data[t][x]))
			ret=t;
	vis[ret]=1;//根据数学原理，不可重复选择一个方程来消元 
	return ret;//为了避免乘一个过小的数字，选择一个对于该未知数绝对值最大的系数 
}
inline void kkk(void){
	RP(t0,1,n){
		int sttd=big(t0);
		const db a=data[sttd][t0];
		RP(t,1,n)
			if(t!=sttd){
				if(fabs(data[t][t0])<EPS){
					cout<<"No Solution";//防止除0 
					return;
				}
				data[t]*=(a/data[t][t0]),data[t]-=data[sttd];//将选定x0的系数和基准方程变为一致，在通过加减消元消掉，
															 //此后该未知数的系数就是0，不会再产生影响 
			}
		ans[t0]=sttd;//记录结果是哪个方程得出的 
	}
	RP(t,1,n)
		if(fabs(data[ans[t]][t])<EPS){
			cout<<"No Solution"<<endl;
			return;
		}
	RP(t,1,n){
		printf("%.2lf\n",(data[ans[t]][n+1]/data[ans[t]][t]));
	}
	return;
}
int main(){
	n=qr();
	RP(t,1,n)
		RP(i,1,n+1)
			data[t][i]=qr();
	kkk();
	return 0;
}
