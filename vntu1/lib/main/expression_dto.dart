import 'package:vntu1/core/base_operation.dart';

class ExpressionDto {
   double left;
   double right;
  final BaseOperation operation;

  ExpressionDto({
    required this.left,
    required this.right,
    required this.operation,
  });

  get preority => operation.preority;
}
