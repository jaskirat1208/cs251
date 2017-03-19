clear
reset
unset key
# Make the x axis labels easier to read.
set xtics rotate out
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set style fill solid border

# We need to set lw in order for error bars to actually appear.
set style histogram errorbars linewidth 1
# Make the bars semi-transparent so that the errorbars are easier to see.
set style fill solid 0.3
set bars front
plot 'data_for_plot1.txt' using 2:3:4:xticlabels(1) title columnheader 
set terminal pdf 
set output 'ques_2_plot.pdf'
set title "Answer for question 2: "
replot 'data_for_plot2.txt'  using 2:3:4:xticlabels(1) title columnheader