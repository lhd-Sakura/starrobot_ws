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

class Key {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key1 = null;
      this.key2 = null;
      this.key3 = null;
      this.key4 = null;
    }
    else {
      if (initObj.hasOwnProperty('key1')) {
        this.key1 = initObj.key1
      }
      else {
        this.key1 = false;
      }
      if (initObj.hasOwnProperty('key2')) {
        this.key2 = initObj.key2
      }
      else {
        this.key2 = false;
      }
      if (initObj.hasOwnProperty('key3')) {
        this.key3 = initObj.key3
      }
      else {
        this.key3 = false;
      }
      if (initObj.hasOwnProperty('key4')) {
        this.key4 = initObj.key4
      }
      else {
        this.key4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Key
    // Serialize message field [key1]
    bufferOffset = _serializer.bool(obj.key1, buffer, bufferOffset);
    // Serialize message field [key2]
    bufferOffset = _serializer.bool(obj.key2, buffer, bufferOffset);
    // Serialize message field [key3]
    bufferOffset = _serializer.bool(obj.key3, buffer, bufferOffset);
    // Serialize message field [key4]
    bufferOffset = _serializer.bool(obj.key4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Key
    let len;
    let data = new Key(null);
    // Deserialize message field [key1]
    data.key1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key2]
    data.key2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key3]
    data.key3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key4]
    data.key4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Key';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3171c264b80fece5877bbb1adde04ad3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool key1
    bool key2
    bool key3
    bool key4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Key(null);
    if (msg.key1 !== undefined) {
      resolved.key1 = msg.key1;
    }
    else {
      resolved.key1 = false
    }

    if (msg.key2 !== undefined) {
      resolved.key2 = msg.key2;
    }
    else {
      resolved.key2 = false
    }

    if (msg.key3 !== undefined) {
      resolved.key3 = msg.key3;
    }
    else {
      resolved.key3 = false
    }

    if (msg.key4 !== undefined) {
      resolved.key4 = msg.key4;
    }
    else {
      resolved.key4 = false
    }

    return resolved;
    }
};

module.exports = Key;
