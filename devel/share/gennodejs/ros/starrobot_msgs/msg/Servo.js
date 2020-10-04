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

class Servo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo1 = null;
      this.servo2 = null;
      this.servo3 = null;
      this.servo4 = null;
    }
    else {
      if (initObj.hasOwnProperty('servo1')) {
        this.servo1 = initObj.servo1
      }
      else {
        this.servo1 = 0.0;
      }
      if (initObj.hasOwnProperty('servo2')) {
        this.servo2 = initObj.servo2
      }
      else {
        this.servo2 = 0.0;
      }
      if (initObj.hasOwnProperty('servo3')) {
        this.servo3 = initObj.servo3
      }
      else {
        this.servo3 = 0.0;
      }
      if (initObj.hasOwnProperty('servo4')) {
        this.servo4 = initObj.servo4
      }
      else {
        this.servo4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Servo
    // Serialize message field [servo1]
    bufferOffset = _serializer.float32(obj.servo1, buffer, bufferOffset);
    // Serialize message field [servo2]
    bufferOffset = _serializer.float32(obj.servo2, buffer, bufferOffset);
    // Serialize message field [servo3]
    bufferOffset = _serializer.float32(obj.servo3, buffer, bufferOffset);
    // Serialize message field [servo4]
    bufferOffset = _serializer.float32(obj.servo4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Servo
    let len;
    let data = new Servo(null);
    // Deserialize message field [servo1]
    data.servo1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [servo2]
    data.servo2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [servo3]
    data.servo3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [servo4]
    data.servo4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'starrobot_msgs/Servo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8a9ccaa500241e3aac1566f1f2857aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 servo1
    float32 servo2
    float32 servo3
    float32 servo4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Servo(null);
    if (msg.servo1 !== undefined) {
      resolved.servo1 = msg.servo1;
    }
    else {
      resolved.servo1 = 0.0
    }

    if (msg.servo2 !== undefined) {
      resolved.servo2 = msg.servo2;
    }
    else {
      resolved.servo2 = 0.0
    }

    if (msg.servo3 !== undefined) {
      resolved.servo3 = msg.servo3;
    }
    else {
      resolved.servo3 = 0.0
    }

    if (msg.servo4 !== undefined) {
      resolved.servo4 = msg.servo4;
    }
    else {
      resolved.servo4 = 0.0
    }

    return resolved;
    }
};

module.exports = Servo;
