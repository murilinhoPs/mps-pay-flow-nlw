import 'package:flutter/material.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/utils/formatters.dart';
import 'package:pay_flow/src/domain/entities/bank_slip.dart';
import 'package:pay_flow/src/application/modules/home/widgets/list_header.dart';
import 'package:pay_flow/src/application/core/view_models/bank_slip_view_model.dart';
import 'package:pay_flow/src/application/modules/home/widgets/app_bar/home_app_bar.dart';
import 'package:pay_flow/src/application/modules/home/widgets/bank_slip_card.dart';

const itemCount = 6;

class BankSlipsPage extends StatelessWidget {
  final BankSlipViewModel? bankSlipViewModel;

  const BankSlipsPage({
    Key? key,
    this.bankSlipViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(bankSlipCount: itemCount),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
        child: Column(
          children: [
            ListHeader(
              title: Strings.myBankSlips,
              titleDetails: '$itemCount ${Strings.inTotal}',
            ),
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
                      name: '${Strings.bankSlipUpper}: $index',
                      cost: index + .43,
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
}
