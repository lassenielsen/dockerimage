# dockerimage
This project contains the Dockerfile and scripts for building a docker image
with a working hapi compiler.

This image installs most of my github projects including librcp, libdpl, libpi
and of course hapi.

After cloning, go to folder ant type
> docker build -t hapi/debian .

This will build the imae, and after this, you can start the image with
> docker run -it hapi/debian /bin/bash

This will give you a root shell.
Go to /root/hapi/examples/compile and type
> make fib_service

This will compile the fib_service program.
Then type
> ./fib_service

This will start the fib_service program which will query an integer.
If you type one followed by enter, the program will evaluate fib(n) and print
it to the screen.

The main feature demonstrated by the fib_service example is, that although
fib_service is written as a sequential evaluation (you can inspect the
sourcecode in fib_service.pi) the program is optimized to utilize all the
available cpu cores without changing the computed result.
As a result of this a programmer can write, debug, and maintain a sequential
program (which is much simpler than a parallel program) and utilize the
multicore hardware with concurrent evaluation.

There are many more examples to expore - so dig in, and do write your own.
