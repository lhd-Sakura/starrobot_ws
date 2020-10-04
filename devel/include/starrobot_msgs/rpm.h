// Generated by gencpp from file starrobot_msgs/rpm.msg
// DO NOT EDIT!


#ifndef STARROBOT_MSGS_MESSAGE_RPM_H
#define STARROBOT_MSGS_MESSAGE_RPM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace starrobot_msgs
{
template <class ContainerAllocator>
struct rpm_
{
  typedef rpm_<ContainerAllocator> Type;

  rpm_()
    : MotorRpm1(0)
    , MotorRpm2(0)
    , MotorRpm3(0)
    , MotorRpm4(0)  {
    }
  rpm_(const ContainerAllocator& _alloc)
    : MotorRpm1(0)
    , MotorRpm2(0)
    , MotorRpm3(0)
    , MotorRpm4(0)  {
  (void)_alloc;
    }



   typedef int32_t _MotorRpm1_type;
  _MotorRpm1_type MotorRpm1;

   typedef int32_t _MotorRpm2_type;
  _MotorRpm2_type MotorRpm2;

   typedef int32_t _MotorRpm3_type;
  _MotorRpm3_type MotorRpm3;

   typedef int32_t _MotorRpm4_type;
  _MotorRpm4_type MotorRpm4;





  typedef boost::shared_ptr< ::starrobot_msgs::rpm_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::starrobot_msgs::rpm_<ContainerAllocator> const> ConstPtr;

}; // struct rpm_

typedef ::starrobot_msgs::rpm_<std::allocator<void> > rpm;

typedef boost::shared_ptr< ::starrobot_msgs::rpm > rpmPtr;
typedef boost::shared_ptr< ::starrobot_msgs::rpm const> rpmConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::starrobot_msgs::rpm_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::starrobot_msgs::rpm_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace starrobot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'starrobot_msgs': ['/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::starrobot_msgs::rpm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::starrobot_msgs::rpm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::rpm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::rpm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::rpm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::rpm_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::starrobot_msgs::rpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "73b53ebe68c9f903353f1f4c0eba54e4";
  }

  static const char* value(const ::starrobot_msgs::rpm_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x73b53ebe68c9f903ULL;
  static const uint64_t static_value2 = 0x353f1f4c0eba54e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::starrobot_msgs::rpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "starrobot_msgs/rpm";
  }

  static const char* value(const ::starrobot_msgs::rpm_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::starrobot_msgs::rpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 MotorRpm1\n\
int32 MotorRpm2\n\
int32 MotorRpm3\n\
int32 MotorRpm4\n\
";
  }

  static const char* value(const ::starrobot_msgs::rpm_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::starrobot_msgs::rpm_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.MotorRpm1);
      stream.next(m.MotorRpm2);
      stream.next(m.MotorRpm3);
      stream.next(m.MotorRpm4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rpm_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::starrobot_msgs::rpm_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::starrobot_msgs::rpm_<ContainerAllocator>& v)
  {
    s << indent << "MotorRpm1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MotorRpm1);
    s << indent << "MotorRpm2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MotorRpm2);
    s << indent << "MotorRpm3: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MotorRpm3);
    s << indent << "MotorRpm4: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MotorRpm4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARROBOT_MSGS_MESSAGE_RPM_H
