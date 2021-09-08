import 'package:flutter/material.dart';
import 'package:pay_flow/src/application/modules/home/pages/bank_slips_page.dart';
import 'package:pay_flow/src/application/modules/home/pages/paid_bank_slips_page.dart';
import 'package:pay_flow/src/application/modules/home/widgets/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:pay_flow/src/application/modules/home/widgets/bottom_navigation_bar/create_bank_slip_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageViewController = PageController();

  int _currentIndex = 0;

  void _changePageOnTap(int pageIndex) {
    pageViewController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 400),
      curve: pageIndex == pageViewController.initialPage
          ? Curves.easeInOutQuad
          : Curves.easeOutQuad,
    );

    onPageViewChange(pageIndex);
  }

  void onPageViewChange(int pageIndex) =>
      setState(() => _currentIndex = pageIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        onPageChanged: onPageViewChange,
        controller: pageViewController,
        pageSnapping: false,
        children: [
          BankSlipsPage(),
          PaidBankSlips(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        navBarCurrentIndex: _currentIndex,
        changePage: _changePageOnTap,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: CreateBankSlipButton(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
}
