gnome-terminal -x bash -c "cd ~;source starrobot_ws/devel/setup.bash;roslaunch starrobot_bringup bringup.launch;read"
sleep 5s
gnome-terminal -x bash -c "cd ~/map;rosrun map_server map_server map.yaml;read"
sleep 1s
gnome-terminal -x bash -c "cd ~;source starrobot_ws/devel/setup.bash;roslaunch starrobot_nav navigate.launch;read"
sleep 1s
gnome-terminal -x bash -c "cd ~;source starrobot_ws/devel/setup.bash;roslaunch starrobot_bringup global_localication_node.launch;read"
sleep 5s
gnome-terminal -x bash -c "cd ~;source starrobot_ws/devel/setup.bash;roslaunch multipoint_navigation patrol_nav.launch;read"
sleep 5s
gnome-terminal -x bash -c "cd ~;source starrobot_ws/devel/setup.bash;roslaunch starrobot_rviz view_navigate.launch;read"
