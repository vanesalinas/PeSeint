Algoritmo a14_ventas
	Definir i,j,k como entero;
	Definir sucursal2, art3, mayorsucursal, sucursal, artvendidos como entero;
	Definir total, max, precio, recaudacion como real;
	Definir titulo, titulo2 como caracter;
	
	Dimension precio[5], sucursal[5,4], artvendidos[5], recaudacion[5];
	
	//leer precio 5 artículos
	Para i<-0 hasta 4 hacer
		Escribir sin saltar "Ingrese el precio de venta del artículo ",i+1;
		Leer precio[i];
	FinPara
	
	//Matriz de ventas por sucursal
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 3 hacer
            Escribir "SUCURSAL ",j+1;
            Escribir "Ingrese cantidad vendida del art.",i+1;
            Leer sucursal[i,j];
		FinPara
	FinPara
	
	//Cantidad por articulo
	sucursal2<-0;
	art3<-0;
	Para i<-0 hasta 4 hacer
		artvendidos[i]<-0;
		Para j<-0 hasta 3 hacer
            artvendidos[i]<-artvendidos[i] + sucursal[i,j];
            Si j==1 entonces
				sucursal2<-sucursal2+sucursal [i,j];
            Finsi
            Si i==2 y j==0 entonces
				art3<-art3+sucursal[i,j];
            Finsi
		FinPara
	Finpara
	
	//Recaudacion sucursales y total
	Total<-0;
	Para i<-0 hasta 4 hacer
		recaudacion[i]<-0;
		Para j<-0 hasta 3 hacer
			Para k<-0 hasta 3 hacer
				Recaudacion[i]<-recaudacion[i]+(sucursal[i,j]*precio[i]);
           		Total<-Total+recaudacion[i];
			finpara
		Finpara
		
	Finpara
	
	//Maximo
	max<-recaudacion[0];
	mayorsucursal<-0;
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 3 hacer
            Si recaudacion[i]>max entonces
				max<-recaudacion[i];
				mayorsucursal<-j;
			Finsi
		Finpara
	FinPara
	
	//mostrar por pantalla
	Escribir "";
	Escribir "Artículos vendidos por sucursal";
	Escribir "-------------------------------" sin saltar; //subrayado
	Escribir "";
	Escribir "        Suc.1      Suc.2      Suc.3      Suc.4  TOTALES";
	Para i<-0 hasta 4 hacer
		Para j<-0 hasta 3 hacer
			SI j==3 entonces
				Si sucursal[i,j]<=9 entonces
					Escribir "   00", sucursal[i,j],"    = ",artvendidos[i];
				SiNo
					Si sucursal[i,j]<=99 y sucursal[i,j]>9 entonces
						Escribir "   0", sucursal[i,j],"     ";
					Sino
						Escribir "   ", sucursal[i,j],"     ";
					Finsi
				finsi
			Sino
				si j==0 Entonces
					Si sucursal[i,j]<=9 entonces
						Escribir sin saltar "Art.",i+1,"    00", sucursal[i,j],"     ";
					Sino
						Si sucursal[i,j]<=99 y sucursal[i,j]>9 entonces
							Escribir sin saltar "Art.",i+1,"    0", sucursal[i,j],"     ";
						Sino
							Escribir sin saltar "Art.",i+1,"    ", sucursal[i,j],"     ";
						Finsi
					Finsi
				SiNo
					Si sucursal[i,j]<=9 entonces
						Escribir sin saltar "   00", sucursal[i,j],"     ";
					Sino
						Si sucursal[i,j]<=99 y sucursal[i,j]>9 entonces
							Escribir sin saltar "   0", sucursal[i,j],"     ";
						Sino
							Escribir sin saltar "   ", sucursal[i,j],"     ";
						Finsi
					Finsi
				finsi
			Finsi
		FinPara
	FinPara
	escribir "";
	Escribir "**La sucursal 2 vendió un total de ", sucursal2," artículos";
	escribir "";
	Escribir "**La sucursal 1 vendió ",art3," unidades del art.3";
	escribir "";
	escribir"Recaudación por sucursal";
	Escribir "------------------------" sin saltar; //subrayado
	escribir"";
	Para i<-0 hasta 3 hacer
		Escribir "Sucursal ",i+1,": $",recaudacion[i];
	Finpara
	escribir "";
	Escribir "**El total recaudado por la empresa fue de $",total;
	escribir "";
	Escribir "**La mayor recaudación la obtuvo la sucursal ", mayorsucursal+1;
	escribir "";
FinAlgoritmo
