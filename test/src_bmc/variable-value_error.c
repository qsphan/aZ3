#define FAILURE 0
#define SUCCESS 1

int g;

int foo() {
  int b; // non-deterministic choice
  if (b) {
    g = SUCCESS; return g;
  } else {
    g = FAILURE; return g;
  }
}

int main(void){
  int status;
  int c; // non-deterministic choice
  if (c) {
    foo();
    status = SUCCESS; // error: return value
  } else
    status = foo();

  assert(status = g);
  return status;
}


