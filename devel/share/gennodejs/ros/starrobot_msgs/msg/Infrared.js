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

class Infrared {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.infrared1 = null;
      this.infrared2 = null;
      this.infrared3 = null;
      this.infrared4 = null;
    }
    else {
      if (initObj.hasOwnProperty('infrared1')) {
        this.infrared1 = initObj.infrared1
      }
      else {
        this.infrared1 = false;
      }
      if (initObj.hasOwnProperty('infrared2')) {
        this.infrared2 = initObj.infrared2
      }
      else {
        this.infrared2 = false;
      }
      if (initObj.hasOwnProperty('infrared3')) {
        this.infrared3 = initObj.infrared3
      }
      else {
        this.infrared3 = false;
      }
      if (initObj.hasOwnProperty('infrared4')) {
        this.infrared4 = initObj.infrared4
      }
      else {
        this.infrared4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Infrared
    // Serialize message field [infrared1]
    bufferOffset = _serializer.bool(obj.infrared1, buffer, bufferOffset);
    // Serialize message field [infrared2]
    bufferOffset = _serializer.bool(obj.infrared2, buffer, bufferOffset);
    // Serialize message field [infrared3]
    bufferOffset = _serializer.bool(obj.infrared3, buffer, bufferOffset);
    // Serialize message field [infrared4]
    bufferOffset = _serializer.bool(obj.infrared4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Infrared
    let len;
    let data = new Infrared(null);
    // Deserialize message field [infrared1]
    data.infrared1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [infrared2]
    data.infrared2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [infrared3]
    data.infrared3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [infrared4]
    data.infrared4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Infrared';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4686eff1b895a48c46b472d5af75db05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool infrared1
    bool infrared2
    bool infrared3
    bool infrared4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Infrared(null);
    if (msg.infrared1 !== undefined) {
      resolved.infrared1 = msg.infrared1;
    }
    else {
      resolved.infrared1 = false
    }

    if (msg.infrared2 !== undefined) {
      resolved.infrared2 = msg.infrared2;
    }
    else {
      resolved.infrared2 = false
    }

    if (msg.infrared3 !== undefined) {
      resolved.infrared3 = msg.infrared3;
    }
    else {
      resolved.infrared3 = false
    }

    if (msg.infrared4 !== undefined) {
      resolved.infrared4 = msg.infrared4;
    }
    else {
      resolved.infrared4 = false
    }

    return resolved;
    }
};

module.exports = Infrared;
