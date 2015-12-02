#include <stdio.h>
#include <stdlib.h>
void main(){
	int i,j;
	float quantidade[3][5],total[3],media[3];
	for(i=1;i<4;i++){
		for(j=1;j<6;j++){
			printf("Quantidade de vendas do vendedor %d no mes %d: ",j,i);
			do{
				scanf("%f",&quantidade[i][j]);
			}while(quantidade[i][j]<0);
			total[i]+=quantidade[i][j];
		}
	}
	for(i=1;i<4;i++){
		media[i]=total[i]/5;
	}
	printf("\nTotal de vendas em:\n\tNovembro: %1.f\n\tDezembro: %1.f\n\tJaneiro: %1.f\n Media em:\n\tNovembro: %1.f\n\tDezembro: %1.f\n\tJaneiro %1.f\n\n",total[1],total[2],total[3],media[1],media[2],media[3]);
}
