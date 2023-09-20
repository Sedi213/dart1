import 'package:vntu1/core/base_operation.dart';

class AddOperation extends BaseOperation {
  AddOperation() : super("+",'+\\',1);

  @override
  double calc(double left, double right) {
    return left + right;
  }
}
