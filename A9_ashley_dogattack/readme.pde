/*
VIDEO
https://vimeo.com/194456879

INSTRUCTIONS
After reading the starting page, press SPACE on your 
keyboard to start a new game.The player controls the man's 
y position using the mouse (x is default). There are 5 dogs 
coming at the man at different speeds and the objective is to
not let them reach the man, or else the game is over and he gets 
attacked. To get rid of the dogs, the man must throw tennis balls
at each individual dog. This is done by simply clicking the mouse
button, where a tennis ball would thrown a ball where you clicked.
The problem is that once a dog has been eliminated, another one will 
return in his spot, so it's a neverending cycle (if you're good). 
On the top right of the screen, there is a score counter to keep track of 
your personal best. To restart the game, simply press the SPACE bar again.

CITATIONS:
Tennis ball:
http://pngimg.com/img/sport/tennis

Man:
http://www.clipartpanda.com/categories/people-running-scared-clipart

Dog:
http://clipart-finder.com/cartoon-dogs-clipart.html

Grass:
www.myfreetextures.com

Dog bark:
https://www.youtube.com/watch?v=yPkr1XQFNJA

Happy music:
https://www.youtube.com/watch?v=WRGzflyo9Bo

CODING QUALITY AND DESIGN
One of the seemingly most simplest sections to get took 
3 TA's & 1.5 hours to complete with me. When the man throws
the tennis balls,  its y position follows mouseY, 
even after it was thrown. This was a problem because 
the game has 5 dogs, and if the ball's y position just 
followed where mouseY went, the game would be won quite easily.
The solution to making sure the ball's y position remained at 
where it was when the mouse was pressed was just to make sure 
mouseY was no longer assigned to the ballY position.

Additionally, you may notice that as you move mouseY along
the canvas, the man either shrinks or grows. I realized when 
animating the tennis ball out of him that the tennis ball's size 
should also reflect the size of the man, therefore I mapped the 
tennis balls' size as well in acorrdance to mouseY and the canvas
and make sure that when the tennis ball was thrown, its y position
also reflected the size of the ball.

The design of the program uses solid colours and representational objects.
The characters (man & dogs) themselves relate to the overall theme of a 
"dog attack" which was a main design element that I wanted to ensure 
so the assignment made sense instead of having abstract objects. The game 
can be challenging especially if you accidentally miss even 1 dog, in which 
the game over image appears. On said page, there are instructions to try 
again and again!

RELEASE
I <Ashley Wong> grant permission to CS 105 course staff to use
my Assignment 9 program and video for the purpose of promoting CS 105.
(if you don't grant permission, erase the line above)

*/