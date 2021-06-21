import 'package:pay_flow/src/utils/formatters.dart';
import 'package:pay_flow/src/domain/entities/bank_slip.dart';

class BankSlipViewModel {
  final String name;
  final String barCode;
  final String dueDate;
  final String currencyCost;

  const BankSlipViewModel({
    required this.name,
    required this.barCode,
    required this.dueDate,
    required this.currencyCost,
  });

  factory BankSlipViewModel.fromBankSlip(BankSlip bankSlip) =>
      BankSlipViewModel(
        name: bankSlip.name,
        barCode: bankSlip.barCode,
        dueDate: dateTimeToString(date: bankSlip.dueDate),
        currencyCost: toCurrency(value: bankSlip.cost),
      );
}
