import 'package:vntu1/core/base_operation.dart';

class MulOperation extends BaseOperation {
  MulOperation() : super("*",'*',2);

  @override
  double calc(double left, double right) {
    return left * right;
  }
}
