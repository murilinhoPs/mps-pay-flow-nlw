import 'package:intl/intl.dart';

String toCurrency({
  required num value,
  String locale = 'pt-BR',
}) {
  return NumberFormat.simpleCurrency(
    locale: locale,
  ).format(value).replaceAll(String.fromCharCode(0x00A0), ' ');
}

DateTime toDateTime({
  required String date,
  String format = 'yyyy-MM-dd',
}) {
  final formatter = DateFormat(format);
  return formatter.parse(date);
}

String dateTimeToString({
  required DateTime date,
  String format = 'dd/MM/yyyy',
}) {
  final formatter = DateFormat(format);
  return formatter.format(date);
}
