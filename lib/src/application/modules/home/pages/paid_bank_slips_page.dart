import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/core/view_models/bank_slip_view_model.dart';
import 'package:pay_flow/src/application/modules/home/widgets/bank_slip_card.dart';
import 'package:pay_flow/src/application/modules/home/widgets/app_bar/home_app_bar.dart';
import 'package:pay_flow/src/application/modules/home/widgets/list_header.dart';
import 'package:pay_flow/src/domain/entities/bank_slip.dart';
import 'package:pay_flow/src/utils/formatters.dart';
import 'package:pay_flow/src/utils/strings.dart';

const itemCount = 3;

class PaidBankSlips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        showRegistered: false,
        height: 120,
        bankSlipCount: itemCount,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          children: [
            ListHeader(
              title: Strings.bankStatementUpper,
              titleDetails: bankSlipDetails,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: 4.0),
                    Divider(
                      height: 0.8,
                      color: Colors.black.withOpacity(0.32),
                      thickness: 0.4,
                      endIndent: 16,
                      indent: 16,
                    ),
                    SizedBox(height: 8.0),
                  ],
                ),
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  final bankSlipViewModel = BankSlipViewModel.fromBankSlip(
                    BankSlip(
                      name: 'Boleto: $index',
                      cost: index + .46,
                      barCode: '27273,6045.7.6786783454.35',
                      dueDate: toDateTime(
                        date: '2021-06-27',
                      ),
                    ),
                  );

                  return BankSlipCard(
                    name: bankSlipViewModel.name,
                    currencyCost: bankSlipViewModel.currencyCost,
                    dueDate: bankSlipViewModel.dueDate,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  String get bankSlipDetails {
    if (itemCount == 0) return Strings.nonePaid;

    if (itemCount == 1) {
      return '$itemCount ${Strings.paidBankSlip}';
    }

    return '$itemCount ${Strings.paidBankSlips}';
  }
}
