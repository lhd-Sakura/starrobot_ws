execute_process(COMMAND "/home/star/starrobot_ws/build/serial_p/rosserial/rosserial_vex_cortex/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/star/starrobot_ws/build/serial_p/rosserial/rosserial_vex_cortex/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
