#include <stdio.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - Inifinite loop
 * Return: (0) always
 */

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - Entry point
 * Return: (0) always
 */

int main(void)
{
	int pid = 0;
	char i;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid != 0)
			printf("Zombie process created, PID: %d\n", pid);
		else
	  		exit(EXIT_SUCCESS);
	}
	infinite_while();
	return (EXIT_SUCCESS);
}
