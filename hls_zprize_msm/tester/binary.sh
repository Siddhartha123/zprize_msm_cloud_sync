while read p; do
    echo "ibase=16; obase=2; $p" | bc
done < $1.txt > $1.vhdl.txt
