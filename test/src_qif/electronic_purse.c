int main(void){
	unsigned int S, Output = 0;
	__CPROVER_assume(S < 20);
	while (S >= 5){
		S = S - 5;
		Output = Output + 1;
	}
	return Output;
}


