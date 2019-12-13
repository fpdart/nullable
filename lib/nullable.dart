extension Nullable<T, V> on _F<T, V> {
  /// The `nullable` version of the function. Returns null on null argument
  T nullable(V v) => v == null ? null : this(v);
}

typedef T _F<T, V>(V v);
