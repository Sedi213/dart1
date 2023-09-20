import 'package:flutter/cupertino.dart';

abstract class BaseOperation {
  final String symbol;
  final String symbolToRegEx;
  final int preority;
  BaseOperation(this.symbol,this.symbolToRegEx,this.preority);

  double calc(double left, double right);
}
