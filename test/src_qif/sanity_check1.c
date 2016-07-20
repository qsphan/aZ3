int main(void){
	unsigned int Source, base, Output;
	base = 0x00001000;
	if (Source < 16)
		Output = base + Source;
	else
		Output = base;
	assert(0);
	return Output;
}
