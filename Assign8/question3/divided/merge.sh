i=2

cd group1
# echo "Which  to be plotted ?"
rm -r "Normal/summary"
rm  -r "Uniform/summary"

mkdir "Normal/summary"
mkdir "Uniform/summary"
for (( i = 1; i <= 5; i++ )); do
	#statements 
	cat "Normal/n$i"".txt">"cum_normal.txt"
	Rscript "../summary_normal.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n4|tail -n3  > "Normal/summary/n$i.txt"

	cat "Uniform/u$i"".txt">"cum_uniform.txt"
	Rscript "../summary_uniform.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n4|tail -n3 > "Uniform/summary/u$i.txt"
done

# bash "get.sh"

# for (( i = 2; i <= 10; i++ )); do
cd ..
	
cd group2
# echo "Which  to be plotted ?"
rm -r "Normal/summary"
rm  -r "Uniform/summary"

mkdir "Normal/summary"
mkdir "Uniform/summary"
for (( i = 1; i <= 5; i++ )); do
	#statements 
	cat "Normal/n$i"".txt">"cum_normal.txt"
	Rscript "../summary_normal.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n4|tail -n3  > "Normal/summary/n$i.txt"

	cat "Uniform/u$i"".txt">"cum_uniform.txt"
	Rscript "../summary_uniform.R" |tail -n1 | tr -s " "| tr " " "\n"| head -n4|tail -n3 > "Uniform/summary/u$i.txt"
done

# bash "get.sh"

# for (( i = 2; i <= 10; i++ )); do
cd ..
bash "get.sh"