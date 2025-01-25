import 'package:flutter/material.dart';
import 'package:instagram_register1/switch_acc.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Parol yoki login \n noto'g'ri \n qayta tekshiring" , style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.yellow
            ),),
            InkWell(
              splashColor: Colors.blueAccent,
              highlightColor: Colors.lightBlue,
              onTap: (){
                Navigator.pushReplacement(

                  context,
                  MaterialPageRoute(builder: (context) => SwitchAcc()),
                );

              },
              child: Container(
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.tealAccent,
                ),
                child: Center(child: Text("Qayta urinish ")),
              ),
            )
          ],
        )),
      ),
    );
  }
}