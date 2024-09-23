i=1
while :
do
echo "My ${i} jenkins job today's $(date)" | sudo tee -a /home/flux/jenkins_practice/jenkins_job1
i=$((i+1))
sleep 1
 if [[ $i > 5 ]]
 then
 echo "today's build limit reached"
 exit
 fi
done