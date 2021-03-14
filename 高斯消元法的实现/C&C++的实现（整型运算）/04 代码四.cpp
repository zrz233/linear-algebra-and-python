void Gauss() {
	for(int i = 0; i < n; i ++) {
		r = i;
		for(int j = i + 1; j < n; j ++)
			if(fabs(A[j][i]) > fabs(A[r][i])) r = j;
		if(r != i) for(int j = 0; j <= n; j ++) std :: swap(A[r][j], A[i][j]);

		for(int j = n; j >= i; j --) {
			for(int k = i + 1; k < n; k ++)
				A[k][j] -= A[k][i] / A[i][i] * A[i][j];
		}
	}

	for(int i = n - 1; i >= 0; i --) {
		for(int j = i + 1; j < n; j ++)
			A[i][n] -= A[j][n] * A[i][j];
		A[i][n] /= A[i][i];
	}
}