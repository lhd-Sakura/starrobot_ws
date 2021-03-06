# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from starrobot_msgs/Key.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Key(genpy.Message):
  _md5sum = "3171c264b80fece5877bbb1adde04ad3"
  _type = "starrobot_msgs/Key"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool key1
bool key2
bool key3
bool key4"""
  __slots__ = ['key1','key2','key3','key4']
  _slot_types = ['bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       key1,key2,key3,key4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Key, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.key1 is None:
        self.key1 = False
      if self.key2 is None:
        self.key2 = False
      if self.key3 is None:
        self.key3 = False
      if self.key4 is None:
        self.key4 = False
    else:
      self.key1 = False
      self.key2 = False
      self.key3 = False
      self.key4 = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4B().pack(_x.key1, _x.key2, _x.key3, _x.key4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.key1, _x.key2, _x.key3, _x.key4,) = _get_struct_4B().unpack(str[start:end])
      self.key1 = bool(self.key1)
      self.key2 = bool(self.key2)
      self.key3 = bool(self.key3)
      self.key4 = bool(self.key4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4B().pack(_x.key1, _x.key2, _x.key3, _x.key4))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 4
      (_x.key1, _x.key2, _x.key3, _x.key4,) = _get_struct_4B().unpack(str[start:end])
      self.key1 = bool(self.key1)
      self.key2 = bool(self.key2)
      self.key3 = bool(self.key3)
      self.key4 = bool(self.key4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4B = None
def _get_struct_4B():
    global _struct_4B
    if _struct_4B is None:
        _struct_4B = struct.Struct("<4B")
    return _struct_4B
