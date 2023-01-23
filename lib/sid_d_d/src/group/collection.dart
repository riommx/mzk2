class Collection<T> {
  final List<T> _groups = [];
  Iterable<T> get groups => List.unmodifiable(_groups);
  void add({required T group}) => _groups.add(group);
  void remove({required int index}) => _groups.removeAt(index);
}
