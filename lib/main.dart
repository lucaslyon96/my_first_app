import 'package:flutter/material.dart';
import 'package:list_view_card/auth_service.dart';
import 'package:list_view_card/sign_up_page.dart';
import 'login_page.dart';
//import 'auth_service.dart';


void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{
  final _authService = AuthService();
  @override
  void initState() {
    super.initState();
    _authService.showLogin();
  }
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Profile List",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: StreamBuilder<AuthState>(
       stream: _authService.authStateController.stream,
        builder: (context, snapshot){
         if (snapshot.hasData){
           return Navigator(
             pages: [
               if (snapshot.data.authFlowStatus == AuthFlowStatus.login)
                  MaterialPage(child: LoginPage(
                    shouldShowSignUp: () => _authService.showSignUp(),
                  )),
               if (snapshot.data.authFlowStatus == AuthFlowStatus.signUp)
                  MaterialPage(child: SingUpPage(
                    shouldShowLogin: () => _authService.showLogin(),
                  ))
             ],
             onPopPage: (route, result) => route.didPop(result),
           );
         }
         else {
           return Container(
             alignment: Alignment.center,
             child: CircularProgressIndicator(),
           );
         }
        }
      )



      //debugShowCheckedModeBanner: false,
    );
  }
}
