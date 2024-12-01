ps -x | grep jtagd
killall -v jtagd

cd ~/intelFPGA_lite/21.1/quartus/bin/

./jtagd
echo started new jtagd instance
