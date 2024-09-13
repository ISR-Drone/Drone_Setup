#Drone Things
export DRONE_IP=10.42.0.1
alias drone='ssh elevate@$DRONE_IP'
#export ROS_IP=10.42.0.233
#alias export_drone='export ROS_MASTER_URI=http://$DRONE_IP:11311/ && export ROS_HOSTNAME=$ROS_IP'
#if the below command doesnt work, uncomment the above two lines and try sourcing again
alias export_drone='export ROS_MASTER_URI=http://$DRONE_IP:11311/ && export ROS_IP=get_interface_that_pings $DRONE_IP | get_ip_of_interface &&  export ROS_HOSTNAME=$ROS_IP'


function get_interface_that_pings()
{
	local ip

	# accept piping
	if (( $# == 0 )) ;then
		ip=$(</dev/stdin)
	else
		ip=$1
	fi

    local interface=`ip -o route get $ip | perl -nle 'if ( /dev\s+(\S+)/ ) {print $1}'`
	echo $interface
}

function get_ip_of_interface()
{
	local interface

	# accept piping
	if (( $# == 0 )) ; then
		interface=$(</dev/stdin)
	else
		interface=$1
	fi

	local ip=`ip -f inet addr show $interface | grep -Po 'inet \K[\d.]+'`
	echo $ip
}
