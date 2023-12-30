for ((i=4; i>=2; i--));do

echo "i-->$i"
num=10
let seed=$i*$num
echo $seed
echo "save_$i"
python train0.py --save_performance_dir "save_$i" --torch_seed $seed
mv save save_m_$i
done
