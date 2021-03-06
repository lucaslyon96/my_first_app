import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  final ValueChanged<String> didProviderVerificationCode;

  VerificationPage({Key key, this.didProviderVerificationCode})
      : super (key: key);

  @override
  //Here we can use State<StatefulWidget>
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final _verificationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 40),
        child: _verificationForm(),
      ),
    );
  }
  Widget _verificationForm(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _verificationCodeController,
          decoration: InputDecoration(
            icon: Icon(Icons.confirmation_number),
            labelText: 'Verification code'
          ),
        ),
        FlatButton(
            onPressed: _verify,
            child: Text('Verify'),
            color: Theme.of(context).accentColor)
      ],
    );
  }
  void _verify(){
    final verificationCode = _verificationCodeController.text.trim();
    widget.didProviderVerificationCode(verificationCode);
  }
}
