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

class PowerKey {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.powerkey1 = null;
      this.powerkey2 = null;
      this.powerkey3 = null;
      this.powerkey4 = null;
    }
    else {
      if (initObj.hasOwnProperty('powerkey1')) {
        this.powerkey1 = initObj.powerkey1
      }
      else {
        this.powerkey1 = false;
      }
      if (initObj.hasOwnProperty('powerkey2')) {
        this.powerkey2 = initObj.powerkey2
      }
      else {
        this.powerkey2 = false;
      }
      if (initObj.hasOwnProperty('powerkey3')) {
        this.powerkey3 = initObj.powerkey3
      }
      else {
        this.powerkey3 = false;
      }
      if (initObj.hasOwnProperty('powerkey4')) {
        this.powerkey4 = initObj.powerkey4
      }
      else {
        this.powerkey4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerKey
    // Serialize message field [powerkey1]
    bufferOffset = _serializer.bool(obj.powerkey1, buffer, bufferOffset);
    // Serialize message field [powerkey2]
    bufferOffset = _serializer.bool(obj.powerkey2, buffer, bufferOffset);
    // Serialize message field [powerkey3]
    bufferOffset = _serializer.bool(obj.powerkey3, buffer, bufferOffset);
    // Serialize message field [powerkey4]
    bufferOffset = _serializer.bool(obj.powerkey4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerKey
    let len;
    let data = new PowerKey(null);
    // Deserialize message field [powerkey1]
    data.powerkey1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [powerkey2]
    data.powerkey2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [powerkey3]
    data.powerkey3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [powerkey4]
    data.powerkey4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/PowerKey';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b797b23d4e603a9d30a243a455a1cc76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool powerkey1
    bool powerkey2
    bool powerkey3
    bool powerkey4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerKey(null);
    if (msg.powerkey1 !== undefined) {
      resolved.powerkey1 = msg.powerkey1;
    }
    else {
      resolved.powerkey1 = false
    }

    if (msg.powerkey2 !== undefined) {
      resolved.powerkey2 = msg.powerkey2;
    }
    else {
      resolved.powerkey2 = false
    }

    if (msg.powerkey3 !== undefined) {
      resolved.powerkey3 = msg.powerkey3;
    }
    else {
      resolved.powerkey3 = false
    }

    if (msg.powerkey4 !== undefined) {
      resolved.powerkey4 = msg.powerkey4;
    }
    else {
      resolved.powerkey4 = false
    }

    return resolved;
    }
};

module.exports = PowerKey;
