class SearchResult {
  final bool cancel;
  final bool manual;

  SearchResult({required this.cancel, this.manual = false});

  //TODO: nombre, descripcion, latlng

  @override
  String toString() {
    // TODO: implement toString
    return "SEARCHRESULT => cancel: $cancel, manual: $manual";
  }
}
