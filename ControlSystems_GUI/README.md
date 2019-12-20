This Repository contains two Control Systems Matlab GUI's.

1.Latest.fig

2.unnamed.fig

The GUI's were developed by Students Shivam Acharya and Sugam Sachan for a class assignment
Both the GUI's give a good idea of how different transfer functions/and their corresponding
pole zero maps can be related to the system's bode plot.The transfer functions used as examples
were taken from filter circuits to see if we can draw some inference between frequency response of
a circuit and it's transfer functio,and further see how this transfer function changes when values and components
of the circuit are further changed

ABOUT THE GUI'S-

1-Latest.fig

This GUI allows the user to plot poles and zeros on the s-plane,according to which a transfer function
is calculated and its bode plot is plotted. Using this app we can clearly try finding diff conditions for
a)one pole one zero
b)one zero two poles
c)two zeros two poles
scenarios to act as low pass,high pass,band pass,band stop and notch filters
{errors-complex poles can only be automatically be taken as conjugates upto two poles as double precision
causes incorrect conjugate calculation leading to small imaginary part being present in zz* multiplication
this can be overcome by rounding off pole and zero values,which is as of now implemented in the code.need to find
an alternate way to this
error2-how to make sure that code doesnt take conjugate of real pole and zeros when you are rounding off,
this is a problem faced when above problem is solved by rounding off} 
Design-Sugam,Shivam
Code-Sugam,Shivam
Theory/Analysis-Shivam,Sugam

2-unnamed.figure

This GUI accomplishes the same goals but the way input is taken is different. User has to
directly enter the transfer function here,and one can select one of various plots from the drop down menu to be plotted
into the single graph
Latest.fig is an improved more better version of this GUI as its tedious to calculate a transferfunction for a
pole zero configuration one would like to analyse to draw parallels between frequency response and P-Z configuration
Similar scenarios can be analysed here but it is rather a bit tedious here
{errors-Make sure all the plots in the drop down menu are working in this edition}
Design-Sugam
Code-Sugam

Observations-(write this down after making some code gui corrections)
