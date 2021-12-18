# 42seoul-minitalk
> Summary: The purpose of this project is to code a small data exchange program using UNIX signals.

## Common Instructions
- Must use C language
- Norm
- No error(segmentation falut, bus error, double free, etc)
- No leak
- Submit Makefile which will compile your source files
  - Flags -Wall, -Wextra and -Werror
  - Use cc(compiler)
  - No relink
  - Least contain $(NAME), all, clean, fclean, re
- To turn in bonuses to your project, you must include a rule bonus to your Makefile, which will add all the various headers libraies of functions that are forbidden on the main part of the project.\
Bonuses must be in a different file _bonus.{c/h}.
- If your project allows you to use your libft, you must copy its sources and its associated Makefile in a libft folder with its associated Makefile.\
Your project's Makefile must compile the library by using its Makefile, then compile the project.
- The executable files must be named client and server
- You have to handle errors sensitively.\
In no way can your program quit unexpectedly(Segmentation falut, bus error, double free, etc).
- Your program cannot have memory leaks.
- You can use one global variable but it must be justified.
- On the mandatory part you are allowed to use the following functions:
  - write
  - ft_printf and any equivalent YOU coded
  - signal
  - sigemptyset
  - sigaddset
  - sigaction
  - kill
  - getpid
  - malloc
  - free
  - pause
  - sleep
  - usleep
  - exit

## Mandatory Part
- You must create a communication program in the form of a client and server.
- The server must be launched first, and after being launched it must display its PID.
- The client will take as parameters:
  - The server PID.
  - The string that should be sent.
- The client must communicated the string passed as a parameter to the server.\
Once the string has been received, the server must display it.
- Communication between your programs should ONLY be done using UNIX signals.
- The server must be able to disply the string pretty quickly.\
By quickly we mean that if you think it is too long, then it is probably too long (hint: 1 second for 100 characters is COLOSSAL)
- Your server should be able to receive strings from several clients in a row, without nedding to e restarted.
- You can only use the two signals SIGUSR1 and SIGUSR2.

![image](https://user-images.githubusercontent.com/74703501/146633592-5c707c20-6466-4768-b3f5-b9cdf071b67c.png)

## Bonus
- The server confirms every signal received by sending a signal to the client.
- support Unicode characters!

