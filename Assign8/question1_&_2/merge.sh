i=2


# echo "Which  to be plotted ?"
rm -r "normal/summary"
rm  -r "uniform/summary"

mkdir "normal/summary"
mkdir "uniform/summary"
for (( i = 1; i <= 10; i++ )); do
	#statements 
	cat "normal/n$i"".txt">"cum_normal.txt"
	Rscript "summary_normal.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n5|tail -n4  > "normal/summary/n$i.txt"

	cat "uniform/u$i"".txt">"cum_uniform.txt"
	Rscript "summary_uniform.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n5|tail -n4 > "uniform/summary/u$i.txt"
done

bash "get.sh"

# for (( i = 2; i <= 10; i++ )); do

	

