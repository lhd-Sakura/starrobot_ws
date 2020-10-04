#include "starrobot_base.h"

int main(int argc, char** argv )
{
    ros::init(argc, argv, "starrobot_base_node");
    starrobotBase starbot;
    ros::spin();
    return 0;
}
