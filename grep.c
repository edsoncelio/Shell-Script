/*
 * grep.c
 * 
 * Copyright 2015 Edson Celio <edson@OpenSuse.workgroup>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>

#define BUFFER_SIZE 8000

void carregar(char *argv[]){
char temp,linha[BUFFER_SIZE];
int id_texto,r,j=0;
if((id_texto=open(argv[1],O_RDONLY)) == -1){
	perror("open");
	exit(1);
	}
       while((r=read(id_texto,&temp,sizeof(char)))!= 0){             
            
            if(temp!='\n'){                                            // se não encontrar "\n" compara a palavra com a linha lida
            linha[j] = temp;
            j++;   
	  
	  }else{
		   if(strstr(linha,argv[2])!=NULL)
                    printf("%s\n",linha);
               memset(linha,0,sizeof(linha));                       // menset(void *str, int c, size_t n)
                j=0;	
	 }
	}
  }
  

int main(int argc, char *argv[]){
if(argc != 3){
    printf("parametros incorretos, usar : ./grep <arquivo> <palavra>\n");
    exit(1);
  }else{
   carregar(argv); 
  }
 
 return 0;
}
