int main(void){
	unsigned int S, Output;
	Output = ((S >> 16) ^ S) & 0xffff;
	Output = Output | Output << 16;
	return Output;
}


