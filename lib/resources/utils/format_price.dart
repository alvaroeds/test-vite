extension FormatPrice on double {
  String get formattedPrice => 'S/ $_price$_zero';

  String get _zero => _hasDot ? '0' : '.00';

  bool get _hasDot => _price.toString().contains('.');

  double get _price => double.parse(toStringAsFixed(1));
}
