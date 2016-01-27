#define MAX_HIGH 63
#define MIN_HIGH 1

unsigned int modPowFastKocherReduction(unsigned int num, unsigned int e, unsigned int m){

		unsigned int s = 1;
		unsigned int y = num;
		unsigned int res = 0;
		unsigned int count = 0;

		__CPROVER_assume(e <= MAX_HIGH && e >= MIN_HIGH);

		while (e > 0) {
			if (e % 2 == 1) {
				// res = (s * y) % m;
				// reduction:
				unsigned int tmp = s * y;
				if (tmp > m) {
					tmp = tmp - m;
					count++;
				}
				res = tmp % m;
				count++;
			} else {
				res = s;
				count++;
			}
			s = (res * res) % m; // squaring the base
			e /= 2;
			count++;
		}
		// return res;
  return count;
}

int main(void){
    unsigned int l;
    unsigned int h = nondet_uint();
	
	// when MAX_HIGH is 15:
	l = 40;
    int Output = modPowFastKocherReduction(l,h,1717);
	assert(0);
    return Output;
}
