// Generated by gencpp from file starrobot_msgs/Key.msg
// DO NOT EDIT!


#ifndef STARROBOT_MSGS_MESSAGE_KEY_H
#define STARROBOT_MSGS_MESSAGE_KEY_H


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
struct Key_
{
  typedef Key_<ContainerAllocator> Type;

  Key_()
    : key1(false)
    , key2(false)
    , key3(false)
    , key4(false)  {
    }
  Key_(const ContainerAllocator& _alloc)
    : key1(false)
    , key2(false)
    , key3(false)
    , key4(false)  {
  (void)_alloc;
    }



   typedef uint8_t _key1_type;
  _key1_type key1;

   typedef uint8_t _key2_type;
  _key2_type key2;

   typedef uint8_t _key3_type;
  _key3_type key3;

   typedef uint8_t _key4_type;
  _key4_type key4;





  typedef boost::shared_ptr< ::starrobot_msgs::Key_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::starrobot_msgs::Key_<ContainerAllocator> const> ConstPtr;

}; // struct Key_

typedef ::starrobot_msgs::Key_<std::allocator<void> > Key;

typedef boost::shared_ptr< ::starrobot_msgs::Key > KeyPtr;
typedef boost::shared_ptr< ::starrobot_msgs::Key const> KeyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::starrobot_msgs::Key_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::starrobot_msgs::Key_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::starrobot_msgs::Key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::starrobot_msgs::Key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::starrobot_msgs::Key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::starrobot_msgs::Key_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::starrobot_msgs::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3171c264b80fece5877bbb1adde04ad3";
  }

  static const char* value(const ::starrobot_msgs::Key_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3171c264b80fece5ULL;
  static const uint64_t static_value2 = 0x877bbb1adde04ad3ULL;
};

template<class ContainerAllocator>
struct DataType< ::starrobot_msgs::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "starrobot_msgs/Key";
  }

  static const char* value(const ::starrobot_msgs::Key_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::starrobot_msgs::Key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool key1\n\
bool key2\n\
bool key3\n\
bool key4\n\
";
  }

  static const char* value(const ::starrobot_msgs::Key_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::starrobot_msgs::Key_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key1);
      stream.next(m.key2);
      stream.next(m.key3);
      stream.next(m.key4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Key_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::starrobot_msgs::Key_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::starrobot_msgs::Key_<ContainerAllocator>& v)
  {
    s << indent << "key1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.key1);
    s << indent << "key2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.key2);
    s << indent << "key3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.key3);
    s << indent << "key4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.key4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STARROBOT_MSGS_MESSAGE_KEY_H