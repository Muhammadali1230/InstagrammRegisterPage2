import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_register1/switch_acc.dart';

import 'data/data_base.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
TextEditingController _controllerUser = TextEditingController();
TextEditingController _controllerPassword = TextEditingController();
class _RegisterPageState extends State<RegisterPage> {
  User users = User();
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/instagram_logo.svg',
                width: 182,
                height: 49,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: 343,
                height: 44,
                child: TextField(
                  controller: _controllerUser,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 343,
                height: 44,
                child: TextField(
                  controller: _controllerPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  if(( _controllerPassword.text.isNotEmpty&& _controllerUser.text.isNotEmpty)&& (list.isEmpty || list.any((e) => e.user != _controllerUser) )){
                    users.user=_controllerUser.toString();
                    users.password = _controllerPassword.toString();
                    list.add(users);
                    Navigator.pushReplacement(

                      context,
                      MaterialPageRoute(builder: (context) => SwitchAcc()),
                    );

                  }else{
                    setState(() {
                      error='user yoki password kiritilmadi';
                    });
                  }
                },
                child:
                Container(
                  width: 307,
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color(0xFF3797EF),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child:  Text(
                      "Registartsiya",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),),
              Text(error , style: TextStyle(fontSize: 14),),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
