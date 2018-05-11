#include <ros/ros.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/point_types.h>
#include <boost/foreach.hpp>
#include <velodyne_height_map/heightmap.h>


typedef pcl::PointXYZI VPoint;
typedef pcl::PointCloud<VPoint> VPointCloud;


void callback(const VPointCloud::ConstPtr &msg)
{
//ROS_INFO("inside callback fn");
int a = 10;
//  sensor_msgs::PointCloud2 output;
//ROS_INFO("thest print- %f",msg->points.size());
for(int i=0;i<=10;i++)
{
int y = (320/2 + (msg->points[i].y/0.5));
ROS_INFO_STREAM("print_out   " << y );
}


}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "sub_pcl");
  ros::NodeHandle nh;
  ros::Rate loop_rate(10);
  uint32_t queue_size = 10;
  ros::Subscriber sub;
ros::Publisher obstacle_publisher_ = nh.advertise<VPointCloud>("velodyne_obstacles",1);
sub =  nh.subscribe ("velodyne_points", queue_size, callback);
  ros::spin();
}  
