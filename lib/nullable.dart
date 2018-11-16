library nullable;

nullable<T>(T value, [defaultValue]) => Nullable<T>(value)._call(defaultValue);

nullablec<T>(T value) => Nullable<T>(value);

setUnlessNull(Function setter, [value, defaultValue]) {
  if (null != value) return setter(value);

  if (null != defaultValue) return setter(defaultValue);
}

class Nullable<T> {
  T _value;

  Nullable(this._value);

  operator |(defaultValue) => _call(defaultValue);

  _call(defaultValue) {
    if (null == _value) {
      if (null == defaultValue) return null;

      return (defaultValue is Function) ? defaultValue() : defaultValue;
    }

    return _value;
  }
}
