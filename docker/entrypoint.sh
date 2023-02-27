#!/bin/bash
set -e

# setup ros environment
echo "ROS workspace: /root/catkin_ws"
source "/opt/ros/kinetic/setup.bash"
source "/root/catkin_ws/devel/setup.bash"

bash /root/ros_entrypoint.sh


exec "$@"