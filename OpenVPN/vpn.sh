#!/bin/bash
printf "vpnbook servers\n1.443pl\n2.443de4\n3.53pl\n4.53de4\n5.80pl\n6.80de4\n7.2500pl\n8.2500de4\npwd for getting the link of the password\n"
printf "\nchoice : "
read re
if [ $re == 1 ]
then
	sudo openvpn vpnbook-pl226-tcp443.ovpn
#fi

elif [ $re == 2 ]
then
	sudo openvpn vpnbook-de4-tcp443.ovpn
#fi
elif [ $re == 3 ]
then
	sudo openvpn vpnbook-pl226-udp53.ovpn
#fi
elif [ $re == 4 ]
then
	sudo openvpn vpnbook-de4-udp53.ovpn
#fi

elif [ $re == 5 ]
then
	sudo openvpn vpnbook-pl226-tcp80.ovpn
#fi
elif [ $re == 6 ]
then
	sudo openvpn vpnbook-de4-tcp80.ovpn
#fi

elif [ $re == 7 ]
then
	sudo openvpn vpnbook-pl226-udp25000.ovpn
#fi
elif [ $re == 8 ]
then
	sudo openvpn vpnbook-de4-udp25000.ovpn
#fi
elif [ $re == "pwd" ]
then
	printf "link : \n"
	sudo python3 vpnpass.py
#fi

else
	echo "try again"
fi


