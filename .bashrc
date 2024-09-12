#Drone Things
export DRONE_IP=10.42.0.1
alias drone='ssh elevate@$DRONE_IP'
#export ROS_IP=10.42.0.233
#alias export_drone='export ROS_MASTER_URI=http://$DRONE_IP:11311/ && export ROS_HOSTNAME=$ROS_IP'
#if the below command doesnt work, uncomment the above two lines and try sourcing again
alias export_drone='export ROS_MASTER_URI=http://$DRONE_IP:11311/ && export ROS_IP=get_interface_that_pings $DRONE_IP | get_ip_of_interface &&  export ROS_HOSTNAME=$ROS_IP'
