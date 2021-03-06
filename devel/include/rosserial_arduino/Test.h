// Generated by gencpp from file rosserial_arduino/Test.msg
// DO NOT EDIT!


#ifndef ROSSERIAL_ARDUINO_MESSAGE_TEST_H
#define ROSSERIAL_ARDUINO_MESSAGE_TEST_H

#include <ros/service_traits.h>


#include <rosserial_arduino/TestRequest.h>
#include <rosserial_arduino/TestResponse.h>


namespace rosserial_arduino
{

struct Test
{

typedef TestRequest Request;
typedef TestResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Test
} // namespace rosserial_arduino


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosserial_arduino::Test > {
  static const char* value()
  {
    return "c63e85f503b805d84df783e71c6bb0d2";
  }

  static const char* value(const ::rosserial_arduino::Test&) { return value(); }
};

template<>
struct DataType< ::rosserial_arduino::Test > {
  static const char* value()
  {
    return "rosserial_arduino/Test";
  }

  static const char* value(const ::rosserial_arduino::Test&) { return value(); }
};


// service_traits::MD5Sum< ::rosserial_arduino::TestRequest> should match 
// service_traits::MD5Sum< ::rosserial_arduino::Test > 
template<>
struct MD5Sum< ::rosserial_arduino::TestRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosserial_arduino::Test >::value();
  }
  static const char* value(const ::rosserial_arduino::TestRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosserial_arduino::TestRequest> should match 
// service_traits::DataType< ::rosserial_arduino::Test > 
template<>
struct DataType< ::rosserial_arduino::TestRequest>
{
  static const char* value()
  {
    return DataType< ::rosserial_arduino::Test >::value();
  }
  static const char* value(const ::rosserial_arduino::TestRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosserial_arduino::TestResponse> should match 
// service_traits::MD5Sum< ::rosserial_arduino::Test > 
template<>
struct MD5Sum< ::rosserial_arduino::TestResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosserial_arduino::Test >::value();
  }
  static const char* value(const ::rosserial_arduino::TestResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosserial_arduino::TestResponse> should match 
// service_traits::DataType< ::rosserial_arduino::Test > 
template<>
struct DataType< ::rosserial_arduino::TestResponse>
{
  static const char* value()
  {
    return DataType< ::rosserial_arduino::Test >::value();
  }
  static const char* value(const ::rosserial_arduino::TestResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSSERIAL_ARDUINO_MESSAGE_TEST_H
