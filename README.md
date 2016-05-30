# Summative Task

## Overall goal

My summative task will be a software program which displays any function.

The program will have two methods of input. One will be a selection of example functions such as x^2, 1/x, and sin(x), which will be programmed as clickable buttons to view the functions. The second method of input will be a textbox, which will take any function input and display it.

If possible, I will attempt to make the viewing area of the cartesian coordinate system changeable, but this will be one of the later goals, if reached at all.

## Sub-goals

* Create a cartesian coordinate system as a basis for the functions being created
* Create "example function" buttons
* Implement example functions like x, x^2, x^3, 1/x, sin(x), etc
* Create a working textbox, that can take a String input
* Use the String input to graph the function
* Implement a changeable viewing area for the cartesian coordinate system

## Questions

* What (if anything – although there is probably at least something) does the user need to know about what your program does?

My program displays any given function within certain display parameters.

* What (if anything) does the user need to know to operate your program (keystrokes, et cetera)?

The only thing a user would need to operate my program is the mouse, which can be used to press the buttons on the left side of the program.

* How does your program show evidence of your understanding of object-oriented programming concepts like encapsulation and inheritance?

The closest thing my program has connected to object-oriented programming was my drawWord() method.
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L108-L116
This is because my program was not reliant on object-oriented programming.

* What evidence can you provide that your program is human-readable?

The comments placed throughout the code assist in making the program human-readable, however the code I wrote is as readable as I could make it.

* For example, where have you used:
* descriptive function names

The mouseClicked() function:
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L62
The drawWord() function:
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L108-L109

* meaningful variable names

chartWidth and chartHeight describe the total width and height of the function viewing area
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L1-L2

* comments that describe the intention of a block of code

The draw() and drawString() functions have a good amount of comments that describe the process of the software
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L12-L31
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L107-L116

* What is the most important algorithm, or algorithm(s), in your program?

The algorithm that draws the function on the chart is vital to the program
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L25-L31

* That is, where is the "core idea" of your program?

The core idea of my program was in the drawing of any function. I wanted to be able to graph any function, which is possible when changing the "parsed function"
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L104

* Explain how this works.

The program works by having a set x value mapped to a the set point on the chart. The y value of the graph is evaluated using the x value, and this is repeated many many times increasing the x value slightly every time.
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L25-L31

* How have you made your program easy to use?

The program is incredibly easy to use, being controlled with just a couple of buttons on the left side of the software.
https://github.com/rsgc-power-r/summative-task/blob/master/functions/functions.pde#L38-L89

* How have you made correct use of source control?

Yes, I frequently kept GitHub updated with my latest code.

* For example, show that you have:
* made frequent commits

I have approximately 15 - 20 commits over the course of the project

* kept commits "atomic" (i.e.: one accomplishment per commit, rather than a batch of things all committed at once)

Each commit has had a major impact on the project

* descriptive commit messages

Each commit has been described well by the commit message

