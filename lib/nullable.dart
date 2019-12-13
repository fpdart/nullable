extension Nullable1<T, V> on _F1<T, V> {
  T nullable(V v) => v == null ? null : this(v);
}

extension Nullable2<T, V1, V2> on _F2<T, V1, V2> {
  T nullable(V1 v1, V2 v2) => (v1 == null || v2 == null) ? null : this(v1, v2);
}

typedef T _F1<T, V>(V v);
typedef T _F2<T, V1, V2>(V1 v1, V2 v2);
