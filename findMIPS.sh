OUTPUT_PATH=$pwd/output
DURATION=600

mkdir -p $OUTPUT_PATH
declare -a arr=($)

for i in "${arr[@]}"; do 
	PID=`pidof ${i} | awk '{print $1;}'`
	echo "perf started on:  ${i}  ${PID}"
	perf stat -I 5000 -o $OUTPUT_PATH/${i}_output.perf --append -p ${PID} & done

sleep $DURATION
killall -9 perf

ls -l $OUTPUT_PATH/*.perf
echo "PERF TEST IS COMPLETE"
