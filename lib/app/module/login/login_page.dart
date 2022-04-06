import 'package:flutter/material.dart';
import 'package:vrsclone/app/module/home/home_page.dart';
import 'package:vrsclone/app/utils/app_color.dart';
import 'package:vrsclone/app/utils/app_sizes.dart';
import 'package:vrsclone/app/utils/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _loginForm(context),
          ],
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name *',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(),
          Container(
            width: 180,
            decoration: BoxDecoration(
              color: AppColors.loginBtnColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                AppStrings.roadShowLogin,
                style: TextStyle(
                    color: AppColors.textBlackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: AppFontSize.fontSize_16),
              ),
            ),
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(
              color: AppColors.loginBtnColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.readyStockLogin,
                style: TextStyle(
                    color: AppColors.textBlackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: AppFontSize.fontSize_16),
              ),
            ),
          )
        ],
      )),
    );
  }
}
