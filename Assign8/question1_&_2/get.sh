cd normal/summary

paste n1.txt n2.txt n3.txt n4.txt n5.txt n6.txt n7.txt n8.txt n9.txt n10.txt  | awk '
BEGIN{j=1;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5+$6+$7+$8+$9+$10;
	printf "%0.2f-%0.2f		%0.2f   ",j,j+0.25,sum/10;
	j=j+0.25
	min =$1;
	max=$1;
	for(i=1; i<=10; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../data_for_plot1.txt
cd ../..
cd uniform/summary
paste u1.txt u2.txt u3.txt u4.txt u5.txt u6.txt u7.txt u8.txt u9.txt u10.txt  | awk '
BEGIN{j=0;
printf "Title	avg 	min		max\n";

}
{

	sum = $1+$2+$3+$4+$5+$6+$7+$8+$9+$10;
	printf "%0.2f-%0.2f		%0.2f   ",j,j+0.25,sum/10;
	j=j+0.25
	min =$1;
	max=$1;
	for(i=1; i<=10; i++){
		if($i<min)	min=$i;
		if($i>max)	max=$i;
	}
	printf("%d 	  %d\n",min,max);
}
' > ../../data_for_plot2.txt
cd ../..
rm "ques_2_plot.pdf"
gnuplot "plot_for_ques2.gnu"

