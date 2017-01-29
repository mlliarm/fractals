## Link to the html knitted report

So, I've just learned how to use `knitr`, and this small project
is just testing it out. You can check the R markdown file which 
produced the GIFs at the end (or [here](https://github.com/mlliarm/fractals/blob/master/Fractals2.Rmd), if you're in a hurry).

Besides producing the images it also creates a cool report in html format.

To compile the `.Rmd` file you'll just have to type in your favorite shell (assuming you're on GNU/Linux):
    `R -e "rmarkdown::render('Fractals2.Rmd')"`

## Mandelbrot set

Using the complex map `z = z^2 + c`:

![Mandel1](Mandelbrot1a.gif)

## Variations of the Mandelbrot set

* Using the map `z = z^4 + c`:

![Mandel2](Mandelbrot2a.gif)

* Using the map `z = z^6 + c`:

![Mandel3](Mandelbrot3a.gif)

* Using the  map `z = z^8 + c`

![Mandel4](Mandelbrot4a.gif)

* Using the map `z = z^10 + c`

![Mandel5](Mandelbrot5a.gif)

## R markdown

[Code](https://github.com/mlliarm/fractals/blob/master/Fractals2.Rmd)

## Licence

![GPLv3](https://www.gnu.org/graphics/gplv3-127x51.png)

[GPL v3](https://github.com/mlliarm/fractals/blob/master/LICENSE)
