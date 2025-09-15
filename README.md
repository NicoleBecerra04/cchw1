# Homework 1

The purpose of this assignment was to create an interactive artwork using primitive shapes, psuedo-randomness, constraints, and an interaction with both the keyboard and mouse. Together, the purpose of the assignment is to explore interaction that is both functional and visually appealing.


## Description

My idea was to create an outer space themed artwork that uses circles, lines, and arches to create stars and other space shapes. To create an interactive element for the assignment, I made it to where the background color changes when the spacebar is pressed. When the mouse is clicked, a star is created in the canvas. To add constraints to my project, I made it to where the background color can only change to dark, cool colors to maintain the contrast against the white stars. As for the stars that are created when the user presses down on the mouse, I added a contraint so that the circles can only be between the size 8-15 in diameter. 

## Steps

My first step was defining my global variables, the background color and stars. I used void setup () to begin creating my canvas size, background color, and initialStars in a 2D array for easier use later. Then, I created an ArrayList to hold my float items, aka the stars. After inputting where each initial star is going to go, I used a for loop to loop over each row in initialStars and draw them in the canvas. Using the void draw () function, I used it to create the visual elements in my code that will be called to create the different background colors, stars, circles, lines, and instructions for how to use the interactive elements. 
I used white text (fill(255)) and textAlign(RIGHT, TOP) so the instructions to use my program sits in the top-right corner. Coordinates width - 20, 20 adds a small margin from the edges so that its not too close to the edge. void keyPressed () checks for the spacebar (key == ' '), and calls generateBackground() to pick a new background color, and void mousePressed makes it so that on each click, you create a star at mouseX, mouseY. random(8, 15) gives the constrained, pseudo-random diameter. 
To contrain the background color to cool toned darker colors, I used float to generate a random number for the r g b elements to create a new color with each mouse press. With drawStars (), I used noStroke() + fill(255) to draw solid white discs. This loops the ArrayList and draws each star by reading its x, y, diameter values. With drawCircles (), I used the pushStyle() and popStyle() blocks to isolate style changes and make the top-right filled circle and a larger outlined ring centered at (800,170) layered, filled + stroke to create a halo. This is to prevent stroke(), fill(), and strokeWeight() from changing and affecting the other blocks. 
Lastly, I used drawLines() to set the stroke weight and color for the thin vertical, horizontal, and diagonal lines. 


