import 'package:flutter/material.dart';
import 'package:pay_flow/src/utils/strings.dart';
import 'package:pay_flow/src/application/theme/app_colors.dart';
import 'package:pay_flow/src/application/modules/home/pages/bank_slips_page.dart';
import 'package:pay_flow/src/application/modules/home/pages/paid_bank_slips_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageViewController = PageController();

  int _currentIndex = 0;

  void _changePage(int pageIndex) {
    pageViewController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 200),
      curve: pageIndex == pageViewController.initialPage
          ? Curves.easeInOutQuad
          : Curves.easeOutQuad,
    );

    setState(() => _currentIndex = pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pageViewController,
        physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        children: [
          BankSlipsPage(),
          PaidBankSlips(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textBody,
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            tooltip: Strings.bankSlips,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
            tooltip: Strings.bankStatement,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(56, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            primary: AppColors.primary,
            elevation: 0.8,
          ),
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageViewController.dispose();
  }
}
