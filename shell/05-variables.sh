#!/bib/bash
start_time=$(date +%s)

echo "Script Start Time"
echo "${start_time}"
sleep 10
end_time=$(date +%s)
echo "Script End Time"
echo "${end_time}"
Time_diff=$(($end_time-$start_time))
echo "Time Difference"
echo "${Time_diff}seconds"





