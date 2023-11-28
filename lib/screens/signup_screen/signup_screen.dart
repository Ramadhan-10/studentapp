import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:studentapp/constants.dart';
import 'package:studentapp/components/custom_buttons.dart';
import 'package:studentapp/screens/login_screen/login_screen.dart';
//import 'package:studentapp/routes.dart';

late bool _passwordVisible;

class SignupScreen extends StatefulWidget {
  static String routeName = 'SignupScreen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen, keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 35.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Student',
                          style: Theme.of(context).textTheme.subtitle1),
                      Text('create your Account',
                          style: Theme.of(context).textTheme.subtitle2),
                      sizedBox,
                    ],
                  ),
                  Image.asset(
                    'assets/images/splash.png',
                    height: 20.h,
                    width: 40.w,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                decoration: BoxDecoration(
                  color: kOtherColor,
                  //reusable radius,
                  borderRadius: kTopBorderRadius,
                ),
                child: Form(
                  key: _form,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        sizedBox,
                        TextFormField(
                          textAlign: TextAlign.start,
                          style: kInputTextStyle,
                          decoration: InputDecoration(
                            labelText: 'Mobile Number/Email',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        sizedBox,
                        TextFormField(
                          obscureText: _passwordVisible,
                          textAlign: TextAlign.start,
                          style: kInputTextStyle,
                          controller: _pass,
                          validator: (val) {
                            if (val == null || val.isEmpty) return 'Empty';
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              iconSize: kDefaultPadding,
                            ),
                          ),
                        ),
                        sizedBox,
                        TextFormField(
                          obscureText: _passwordVisible,
                          textAlign: TextAlign.start,
                          style: kInputTextStyle,
                          controller: _confirmPass,
                          validator: (val) {
                            if (val == null || val.isEmpty) return 'Empty';
                            if (val != _pass.text) return 'Not Match';
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'ReType Password',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              iconSize: kDefaultPadding,
                            ),
                          ),
                        ),
                        sizedBox,
                        DefaultButton(
                          onPress: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                LoginScreen.routeName, (route) => false);
                          },
                          title: 'SIGN UP',
                          iconData: Icons.arrow_forward_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
