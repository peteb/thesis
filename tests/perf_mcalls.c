#include <stdio.h>

int main() {
	int i = 0;
	while (i < 30000000) {
		i = i + 1;
	}
	printf("%i\n", i);
	
	return 0;
}