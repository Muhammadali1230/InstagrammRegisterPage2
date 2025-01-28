import 'package:flutter/material.dart';
import 'package:instagram_register1/data/data_base.dart';
import 'package:instagram_register1/switch_acc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SwitchAcc()),
                  );
                },

                child: Text("log out ")),
            Icon(Icons.login_outlined),
          ],
        ),
      ),
      body: Center(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HELLO " , style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 24,),
            Text(listUser[index] , style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600
            ),),
        
          ],
        ),
      )),
    );
  }
}
