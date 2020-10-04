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

class Sonar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sonar1 = null;
      this.sonar2 = null;
      this.sonar3 = null;
      this.sonar4 = null;
    }
    else {
      if (initObj.hasOwnProperty('sonar1')) {
        this.sonar1 = initObj.sonar1
      }
      else {
        this.sonar1 = 0.0;
      }
      if (initObj.hasOwnProperty('sonar2')) {
        this.sonar2 = initObj.sonar2
      }
      else {
        this.sonar2 = 0.0;
      }
      if (initObj.hasOwnProperty('sonar3')) {
        this.sonar3 = initObj.sonar3
      }
      else {
        this.sonar3 = 0.0;
      }
      if (initObj.hasOwnProperty('sonar4')) {
        this.sonar4 = initObj.sonar4
      }
      else {
        this.sonar4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sonar
    // Serialize message field [sonar1]
    bufferOffset = _serializer.float32(obj.sonar1, buffer, bufferOffset);
    // Serialize message field [sonar2]
    bufferOffset = _serializer.float32(obj.sonar2, buffer, bufferOffset);
    // Serialize message field [sonar3]
    bufferOffset = _serializer.float32(obj.sonar3, buffer, bufferOffset);
    // Serialize message field [sonar4]
    bufferOffset = _serializer.float32(obj.sonar4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sonar
    let len;
    let data = new Sonar(null);
    // Deserialize message field [sonar1]
    data.sonar1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sonar2]
    data.sonar2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sonar3]
    data.sonar3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sonar4]
    data.sonar4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Sonar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f513f8756037fca86f700a692eb93b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 sonar1
    float32 sonar2
    float32 sonar3
    float32 sonar4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sonar(null);
    if (msg.sonar1 !== undefined) {
      resolved.sonar1 = msg.sonar1;
    }
    else {
      resolved.sonar1 = 0.0
    }

    if (msg.sonar2 !== undefined) {
      resolved.sonar2 = msg.sonar2;
    }
    else {
      resolved.sonar2 = 0.0
    }

    if (msg.sonar3 !== undefined) {
      resolved.sonar3 = msg.sonar3;
    }
    else {
      resolved.sonar3 = 0.0
    }

    if (msg.sonar4 !== undefined) {
      resolved.sonar4 = msg.sonar4;
    }
    else {
      resolved.sonar4 = 0.0
    }

    return resolved;
    }
};

module.exports = Sonar;
