// Generated by gencpp from file starrobot_msgs/Crash.msg
// DO NOT EDIT!


#ifndef STARROBOT_MSGS_MESSAGE_CRASH_H
#define STARROBOT_MSGS_MESSAGE_CRASH_H


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
struct Crash_
{
  typedef Crash_<ContainerAllocator> Type;

  Crash_()
    : crash1(false)
    , crash2(false)
    , crash3(false)
    , crash4(false)  {
    }
  Crash_(const ContainerAllocator& _alloc)
    : crash1(false)
    , crash2(false)
    , crash3(false)
    , crash4(false)  {
  (void)_alloc;
    }



   typedef uint8_t _crash1_type;
  _crash1_type crash1;

   typedef uint8_t _crash2_type;
  _crash2_type crash2;

   typedef uint8_t _crash3_type;
  _crash3_type crash3;

   typedef uint8_t _crash4_type;
  _crash4_type crash4;





  typedef boost::shared_ptr< ::starrobot_msgs::Crash_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::starrobot_msgs::Crash_<ContainerAllocator> const> ConstPtr;

}; // struct Crash_

typedef ::starrobot_msgs::Crash_<std::allocator<void> > Crash;

typedef boost::shared_ptr< ::starrobot_msgs::Crash > CrashPtr;
typedef boost::shared_ptr< ::starrobot_msgs::Crash const> CrashConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::starrobot_msgs::Crash_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::starrobot_msgs::Crash_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::starrobot_msgs::Crash_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::starrobot_msgs::Crash_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Crash_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Crash_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Crash_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Crash_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::starrobot_msgs::Crash_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02b77d6efd11009bfc24883f65767248";
  }

  static const char* value(const ::starrobot_msgs::Crash_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02b77d6efd11009bULL;
  static const uint64_t static_value2 = 0xfc24883f65767248ULL;
};

template<class ContainerAllocator>
struct DataType< ::starrobot_msgs::Crash_<ContainerAllocator> >
{
  static const char* value()
  {
    return "starrobot_msgs/Crash";
  }

  static const char* value(const ::starrobot_msgs::Crash_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::starrobot_msgs::Crash_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool crash1\n\
bool crash2\n\
bool crash3\n\
bool crash4\n\
";
  }

  static const char* value(const ::starrobot_msgs::Crash_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::starrobot_msgs::Crash_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.crash1);
      stream.next(m.crash2);
      stream.next(m.crash3);
      stream.next(m.crash4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Crash_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::starrobot_msgs::Crash_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::starrobot_msgs::Crash_<ContainerAllocator>& v)
  {
    s << indent << "crash1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.crash1);
    s << indent << "crash2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.crash2);
    s << indent << "crash3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.crash3);
    s << indent << "crash4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.crash4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARROBOT_MSGS_MESSAGE_CRASH_H