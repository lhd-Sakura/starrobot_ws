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

class Crash {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.crash1 = null;
      this.crash2 = null;
      this.crash3 = null;
      this.crash4 = null;
    }
    else {
      if (initObj.hasOwnProperty('crash1')) {
        this.crash1 = initObj.crash1
      }
      else {
        this.crash1 = false;
      }
      if (initObj.hasOwnProperty('crash2')) {
        this.crash2 = initObj.crash2
      }
      else {
        this.crash2 = false;
      }
      if (initObj.hasOwnProperty('crash3')) {
        this.crash3 = initObj.crash3
      }
      else {
        this.crash3 = false;
      }
      if (initObj.hasOwnProperty('crash4')) {
        this.crash4 = initObj.crash4
      }
      else {
        this.crash4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Crash
    // Serialize message field [crash1]
    bufferOffset = _serializer.bool(obj.crash1, buffer, bufferOffset);
    // Serialize message field [crash2]
    bufferOffset = _serializer.bool(obj.crash2, buffer, bufferOffset);
    // Serialize message field [crash3]
    bufferOffset = _serializer.bool(obj.crash3, buffer, bufferOffset);
    // Serialize message field [crash4]
    bufferOffset = _serializer.bool(obj.crash4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Crash
    let len;
    let data = new Crash(null);
    // Deserialize message field [crash1]
    data.crash1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [crash2]
    data.crash2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [crash3]
    data.crash3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [crash4]
    data.crash4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Crash';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02b77d6efd11009bfc24883f65767248';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool crash1
    bool crash2
    bool crash3
    bool crash4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Crash(null);
    if (msg.crash1 !== undefined) {
      resolved.crash1 = msg.crash1;
    }
    else {
      resolved.crash1 = false
    }

    if (msg.crash2 !== undefined) {
      resolved.crash2 = msg.crash2;
    }
    else {
      resolved.crash2 = false
    }

    if (msg.crash3 !== undefined) {
      resolved.crash3 = msg.crash3;
    }
    else {
      resolved.crash3 = false
    }

    if (msg.crash4 !== undefined) {
      resolved.crash4 = msg.crash4;
    }
    else {
      resolved.crash4 = false
    }

    return resolved;
    }
};

module.exports = Crash;
