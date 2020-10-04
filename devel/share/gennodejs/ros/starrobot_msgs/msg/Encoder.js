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

class Encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MotorEncoder1 = null;
      this.MotorEncoder2 = null;
      this.MotorEncoder3 = null;
      this.MotorEncoder4 = null;
    }
    else {
      if (initObj.hasOwnProperty('MotorEncoder1')) {
        this.MotorEncoder1 = initObj.MotorEncoder1
      }
      else {
        this.MotorEncoder1 = 0;
      }
      if (initObj.hasOwnProperty('MotorEncoder2')) {
        this.MotorEncoder2 = initObj.MotorEncoder2
      }
      else {
        this.MotorEncoder2 = 0;
      }
      if (initObj.hasOwnProperty('MotorEncoder3')) {
        this.MotorEncoder3 = initObj.MotorEncoder3
      }
      else {
        this.MotorEncoder3 = 0;
      }
      if (initObj.hasOwnProperty('MotorEncoder4')) {
        this.MotorEncoder4 = initObj.MotorEncoder4
      }
      else {
        this.MotorEncoder4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder
    // Serialize message field [MotorEncoder1]
    bufferOffset = _serializer.int64(obj.MotorEncoder1, buffer, bufferOffset);
    // Serialize message field [MotorEncoder2]
    bufferOffset = _serializer.int64(obj.MotorEncoder2, buffer, bufferOffset);
    // Serialize message field [MotorEncoder3]
    bufferOffset = _serializer.int64(obj.MotorEncoder3, buffer, bufferOffset);
    // Serialize message field [MotorEncoder4]
    bufferOffset = _serializer.int64(obj.MotorEncoder4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder
    let len;
    let data = new Encoder(null);
    // Deserialize message field [MotorEncoder1]
    data.MotorEncoder1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [MotorEncoder2]
    data.MotorEncoder2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [MotorEncoder3]
    data.MotorEncoder3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [MotorEncoder4]
    data.MotorEncoder4 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fcb479f75c8295a0270fd74c95e7c94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 MotorEncoder1
    int64 MotorEncoder2
    int64 MotorEncoder3
    int64 MotorEncoder4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoder(null);
    if (msg.MotorEncoder1 !== undefined) {
      resolved.MotorEncoder1 = msg.MotorEncoder1;
    }
    else {
      resolved.MotorEncoder1 = 0
    }

    if (msg.MotorEncoder2 !== undefined) {
      resolved.MotorEncoder2 = msg.MotorEncoder2;
    }
    else {
      resolved.MotorEncoder2 = 0
    }

    if (msg.MotorEncoder3 !== undefined) {
      resolved.MotorEncoder3 = msg.MotorEncoder3;
    }
    else {
      resolved.MotorEncoder3 = 0
    }

    if (msg.MotorEncoder4 !== undefined) {
      resolved.MotorEncoder4 = msg.MotorEncoder4;
    }
    else {
      resolved.MotorEncoder4 = 0
    }

    return resolved;
    }
};

module.exports = Encoder;
