# Set reconfigure trap.
trap "echo 'Received signal. Reconfiguring displays.' ; echo 'AZAZAZA LoL'" RTMIN+5

# Wait for signals
while :
do
    sleep 60 &
    wait 
done

