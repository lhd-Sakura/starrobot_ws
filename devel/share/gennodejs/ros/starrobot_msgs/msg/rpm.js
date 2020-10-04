// Auto-generated. Do not edit!

// (in-package starrobot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rpm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MotorRpm1 = null;
      this.MotorRpm2 = null;
      this.MotorRpm3 = null;
      this.MotorRpm4 = null;
    }
    else {
      if (initObj.hasOwnProperty('MotorRpm1')) {
        this.MotorRpm1 = initObj.MotorRpm1
      }
      else {
        this.MotorRpm1 = 0;
      }
      if (initObj.hasOwnProperty('MotorRpm2')) {
        this.MotorRpm2 = initObj.MotorRpm2
      }
      else {
        this.MotorRpm2 = 0;
      }
      if (initObj.hasOwnProperty('MotorRpm3')) {
        this.MotorRpm3 = initObj.MotorRpm3
      }
      else {
        this.MotorRpm3 = 0;
      }
      if (initObj.hasOwnProperty('MotorRpm4')) {
        this.MotorRpm4 = initObj.MotorRpm4
      }
      else {
        this.MotorRpm4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rpm
    // Serialize message field [MotorRpm1]
    bufferOffset = _serializer.int32(obj.MotorRpm1, buffer, bufferOffset);
    // Serialize message field [MotorRpm2]
    bufferOffset = _serializer.int32(obj.MotorRpm2, buffer, bufferOffset);
    // Serialize message field [MotorRpm3]
    bufferOffset = _serializer.int32(obj.MotorRpm3, buffer, bufferOffset);
    // Serialize message field [MotorRpm4]
    bufferOffset = _serializer.int32(obj.MotorRpm4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rpm
    let len;
    let data = new rpm(null);
    // Deserialize message field [MotorRpm1]
    data.MotorRpm1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [MotorRpm2]
    data.MotorRpm2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [MotorRpm3]
    data.MotorRpm3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [MotorRpm4]
    data.MotorRpm4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/rpm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73b53ebe68c9f903353f1f4c0eba54e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 MotorRpm1
    int32 MotorRpm2
    int32 MotorRpm3
    int32 MotorRpm4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rpm(null);
    if (msg.MotorRpm1 !== undefined) {
      resolved.MotorRpm1 = msg.MotorRpm1;
    }
    else {
      resolved.MotorRpm1 = 0
    }

    if (msg.MotorRpm2 !== undefined) {
      resolved.MotorRpm2 = msg.MotorRpm2;
    }
    else {
      resolved.MotorRpm2 = 0
    }

    if (msg.MotorRpm3 !== undefined) {
      resolved.MotorRpm3 = msg.MotorRpm3;
    }
    else {
      resolved.MotorRpm3 = 0
    }

    if (msg.MotorRpm4 !== undefined) {
      resolved.MotorRpm4 = msg.MotorRpm4;
    }
    else {
      resolved.MotorRpm4 = 0
    }

    return resolved;
    }
};

module.exports = rpm;
