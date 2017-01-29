## Some general comments

So, I've just learned how to use `knitr`, and this small project
is just testing it out. You can check the R markdown files which 
produced the GIFs at the end (or [here's the first](https://github.com/mlliarm/fractals/blob/master/Fractals2.Rmd),
[the second](https://github.com/mlliarm/fractals/blob/master/Fractals3.Rmd) and 
[the third](https://github.com/mlliarm/fractals/blob/master/Fractals4.Rmd), if you're in a hurry).

Besides producing the images it also creates a cool report in html format.

To compile the `.Rmd` file you'll just have to type in your favorite shell (assuming you're on GNU/Linux):

      R -e "rmarkdown::render('Fractals2.Rmd')"

## Mandelbrot set

Using the complex map `z = z^2 + c`:

![Mandel1](images/Mandelbrot1a.gif)

## Variations of the Mandelbrot set

* Using the map `z = z^4 + c`:

![Mandel2](images/Mandelbrot2a.gif)

* Using the map `z = z^6 + c`:

![Mandel3](images/Mandelbrot3a.gif)

* Using the  map `z = z^8 + c`

![Mandel4](images/Mandelbrot4a.gif)

* Using the map `z = z^10 + c`

![Mandel5](images/Mandelbrot5a.gif)

## R markdown files

* [First experiment](https://github.com/mlliarm/fractals/blob/master/Fractals2.Rmd)
* [Second experiment](https://github.com/mlliarm/fractals/blob/master/Fractals3.Rmd)
* [Third experiment](https://github.com/mlliarm/fractals/blob/master/Fractals4.Rmd)

## Licence

![GPLv3](https://www.gnu.org/graphics/gplv3-127x51.png)

[GPL v3](https://github.com/mlliarm/fractals/blob/master/LICENSE)
