// Generated by gencpp from file starrobot_msgs/Servo.msg
// DO NOT EDIT!


#ifndef STARROBOT_MSGS_MESSAGE_SERVO_H
#define STARROBOT_MSGS_MESSAGE_SERVO_H


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
struct Servo_
{
  typedef Servo_<ContainerAllocator> Type;

  Servo_()
    : servo1(0.0)
    , servo2(0.0)
    , servo3(0.0)
    , servo4(0.0)  {
    }
  Servo_(const ContainerAllocator& _alloc)
    : servo1(0.0)
    , servo2(0.0)
    , servo3(0.0)
    , servo4(0.0)  {
  (void)_alloc;
    }



   typedef float _servo1_type;
  _servo1_type servo1;

   typedef float _servo2_type;
  _servo2_type servo2;

   typedef float _servo3_type;
  _servo3_type servo3;

   typedef float _servo4_type;
  _servo4_type servo4;





  typedef boost::shared_ptr< ::starrobot_msgs::Servo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::starrobot_msgs::Servo_<ContainerAllocator> const> ConstPtr;

}; // struct Servo_

typedef ::starrobot_msgs::Servo_<std::allocator<void> > Servo;

typedef boost::shared_ptr< ::starrobot_msgs::Servo > ServoPtr;
typedef boost::shared_ptr< ::starrobot_msgs::Servo const> ServoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::starrobot_msgs::Servo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::starrobot_msgs::Servo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::starrobot_msgs::Servo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::starrobot_msgs::Servo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Servo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Servo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Servo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Servo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::starrobot_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e8a9ccaa500241e3aac1566f1f2857aa";
  }

  static const char* value(const ::starrobot_msgs::Servo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe8a9ccaa500241e3ULL;
  static const uint64_t static_value2 = 0xaac1566f1f2857aaULL;
};

template<class ContainerAllocator>
struct DataType< ::starrobot_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "starrobot_msgs/Servo";
  }

  static const char* value(const ::starrobot_msgs::Servo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::starrobot_msgs::Servo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 servo1\n\
float32 servo2\n\
float32 servo3\n\
float32 servo4\n\
";
  }

  static const char* value(const ::starrobot_msgs::Servo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::starrobot_msgs::Servo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.servo1);
      stream.next(m.servo2);
      stream.next(m.servo3);
      stream.next(m.servo4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Servo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::starrobot_msgs::Servo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::starrobot_msgs::Servo_<ContainerAllocator>& v)
  {
    s << indent << "servo1: ";
    Printer<float>::stream(s, indent + "  ", v.servo1);
    s << indent << "servo2: ";
    Printer<float>::stream(s, indent + "  ", v.servo2);
    s << indent << "servo3: ";
    Printer<float>::stream(s, indent + "  ", v.servo3);
    s << indent << "servo4: ";
    Printer<float>::stream(s, indent + "  ", v.servo4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARROBOT_MSGS_MESSAGE_SERVO_H
