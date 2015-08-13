int main(void){
	unsigned int S1, S2, S3, Output;
	__CPROVER_assume(S1 < 10 && S2 < 10 && S3 < 10);
	Output = S1;
	Output = Output + S2;
	Output = Output + S3;
	return Output;
}


