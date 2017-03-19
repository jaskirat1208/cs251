cd group1/Normal/summary

paste n1.txt n2.txt n3.txt n4.txt n5.txt| awk '
BEGIN{j=0;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5;
	printf "%0.2f	%0.2f   ",j,sum/5;
	j=j+0.33
	min =$1;
	max=$1;
	for(i=1; i<=5; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../../data_for_plot1.txt
cd ../..
cd Uniform/summary
paste u1.txt u2.txt u3.txt u4.txt u5.txt | awk '
BEGIN{j=0;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5;
	printf "%0.2f	%0.2f   ",j,sum/5;
	j=j+0.33
	min =$1;
	max=$1;
	for(i=1; i<=5; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../../data_for_plot2.txt
cd ../..
# rm "ques_2_plot.pdf"
# gnuplot "plot_for_ques2.gnu"
cd ..
cd group2/Normal/summary

paste n1.txt n2.txt n3.txt n4.txt n5.txt| awk '
BEGIN{j=0;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5;
	printf "%0.2f	%0.2f   ",j,sum/5;
	j=j+0.33
	min =$1;
	max=$1;
	for(i=1; i<=5; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../../data_for_plot3.txt
cd ../..
cd Uniform/summary
paste u1.txt u2.txt u3.txt u4.txt u5.txt | awk '
BEGIN{j=0;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5;
	printf "%0.2f	%0.2f   ",j,sum/5;
	j=j+0.33
	min =$1;
	max=$1;
	for(i=1; i<=5; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../../data_for_plot4.txt
cd ../..
# rm "ques_2_plot.pdf"
 
cd ..
gnuplot "plot.gnu"