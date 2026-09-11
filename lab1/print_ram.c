#include <stdio.h>
extern unsigned char ram[]; // RAM declared in assembly
extern void fill_ram(void); // Assembly function
extern void fill_ram_alt(void); // Assembly function
int main() {
    printRam();
    printf("\n");
    printf("\nRunning task 1 assembly code...\n\n");
    fill_ram(); // Run assembly code
    printf("\nRunning task 2 assembly code...\n\n");
    fill_ram_alt();
    printf("\nRunning task 3 assembly code...\n\n");
    
    printf("\nRunning task 4 assembly code...\n\n");

    

    printRam();
    return 0;
}

void printRam() {
    printf("RAM contents from 50H to 58H:\n");
    for (int i = 0x50; i <= 0x58; i++) { 
        printf("%02X ", ram[i]);
    }
}