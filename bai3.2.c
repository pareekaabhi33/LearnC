#include <stdio.h>

int main() {
	int m, n;
	printf("Nhap m, n > 0: ");
	scanf("%d%d", &m, &n);
	
	if(m > 0 && n > 0) {
		int i, j;
		for(i = 1; i <= m; i++) {
			for(j = 1; j <= n; j++) {
				printf(" x ");
			}
			printf("\n");
		}
	} else {
		printf("Nhap m, n > 0!");
	}
	
	return 0;
}
