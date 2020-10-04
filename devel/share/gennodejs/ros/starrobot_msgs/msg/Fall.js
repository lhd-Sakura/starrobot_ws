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

class Fall {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fall1 = null;
      this.fall2 = null;
      this.fall3 = null;
      this.fall4 = null;
    }
    else {
      if (initObj.hasOwnProperty('fall1')) {
        this.fall1 = initObj.fall1
      }
      else {
        this.fall1 = false;
      }
      if (initObj.hasOwnProperty('fall2')) {
        this.fall2 = initObj.fall2
      }
      else {
        this.fall2 = false;
      }
      if (initObj.hasOwnProperty('fall3')) {
        this.fall3 = initObj.fall3
      }
      else {
        this.fall3 = false;
      }
      if (initObj.hasOwnProperty('fall4')) {
        this.fall4 = initObj.fall4
      }
      else {
        this.fall4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fall
    // Serialize message field [fall1]
    bufferOffset = _serializer.bool(obj.fall1, buffer, bufferOffset);
    // Serialize message field [fall2]
    bufferOffset = _serializer.bool(obj.fall2, buffer, bufferOffset);
    // Serialize message field [fall3]
    bufferOffset = _serializer.bool(obj.fall3, buffer, bufferOffset);
    // Serialize message field [fall4]
    bufferOffset = _serializer.bool(obj.fall4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fall
    let len;
    let data = new Fall(null);
    // Deserialize message field [fall1]
    data.fall1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall2]
    data.fall2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall3]
    data.fall3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall4]
    data.fall4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Fall';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec4daf7144d18cc51c5e99829b72588d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool fall1
    bool fall2
    bool fall3
    bool fall4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fall(null);
    if (msg.fall1 !== undefined) {
      resolved.fall1 = msg.fall1;
    }
    else {
      resolved.fall1 = false
    }

    if (msg.fall2 !== undefined) {
      resolved.fall2 = msg.fall2;
    }
    else {
      resolved.fall2 = false
    }

    if (msg.fall3 !== undefined) {
      resolved.fall3 = msg.fall3;
    }
    else {
      resolved.fall3 = false
    }

    if (msg.fall4 !== undefined) {
      resolved.fall4 = msg.fall4;
    }
    else {
      resolved.fall4 = false
    }

    return resolved;
    }
};

module.exports = Fall;
