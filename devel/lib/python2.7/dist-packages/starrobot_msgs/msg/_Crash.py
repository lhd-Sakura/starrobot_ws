# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from starrobot_msgs/Crash.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Crash(genpy.Message):
  _md5sum = "02b77d6efd11009bfc24883f65767248"
  _type = "starrobot_msgs/Crash"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool crash1
bool crash2
bool crash3
bool crash4"""
  __slots__ = ['crash1','crash2','crash3','crash4']
  _slot_types = ['bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       crash1,crash2,crash3,crash4

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Crash, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.crash1 is None:
        self.crash1 = False
      if self.crash2 is None:
        self.crash2 = False
      if self.crash3 is None:
        self.crash3 = False
      if self.crash4 is None:
        self.crash4 = False
    else:
      self.crash1 = False
      self.crash2 = False
      self.crash3 = False
      self.crash4 = False

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
      buff.write(_get_struct_4B().pack(_x.crash1, _x.crash2, _x.crash3, _x.crash4))
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
      (_x.crash1, _x.crash2, _x.crash3, _x.crash4,) = _get_struct_4B().unpack(str[start:end])
      self.crash1 = bool(self.crash1)
      self.crash2 = bool(self.crash2)
      self.crash3 = bool(self.crash3)
      self.crash4 = bool(self.crash4)
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
      buff.write(_get_struct_4B().pack(_x.crash1, _x.crash2, _x.crash3, _x.crash4))
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
      (_x.crash1, _x.crash2, _x.crash3, _x.crash4,) = _get_struct_4B().unpack(str[start:end])
      self.crash1 = bool(self.crash1)
      self.crash2 = bool(self.crash2)
      self.crash3 = bool(self.crash3)
      self.crash4 = bool(self.crash4)
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
