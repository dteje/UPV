#define PI = 3.14159

int main(){
	float radio, altura;
	float area_b, area_l, vol;
	
	printf("Radio de la base (en cm):");
	scanf("%f", &radio);
	printf("\n");
	
	printf("Altura (en cm):")
	scanf("%f", &altura);
	printf("\n");

	area_b = area_base(radio);
	area_l = area_lateral(altura, radio);
	vol = volumen(altura, radio);

	printf("Área de la base = %.2f cm2", area_b);
	printf("Área lateral = %.2f cm2", area_l);
	printf("Volumen del cono = %.2f cm3", vol);
}

float area_base(float r){
	float a = PI * r * r;
	return a;
}

float area_lateral(float h, float r){
	float aux = r*r + h*h;
	float g = sqrt(aux);
	float a = PI * r * g;
	return a;
}

float volumen(float h, float r){
	float v = (PI * r * r * h)/3;	
	return v;
}
