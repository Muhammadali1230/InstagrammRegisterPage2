import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_register1/switch_acc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              'assets/instagram_logo.svg',
              width: 182,
              height: 49,
            ),
            SizedBox(
              height: 20,
            ),
            ClipOval(
              child: Image.asset(
                'assets/img.png',
                width: 85,
                height: 85,
              ),
            ),
            Text(
              'jacob_w',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 307,
              height: 44,
              decoration: BoxDecoration(
                  color: Color(0xFF3797EF),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwitchAcc()),
                );
              },
              child: Text(
                'Switch accounts',
                style: TextStyle(color: Color(0xFF3797EF), fontSize: 17),
              ),
            ),
            SizedBox(height: 250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?" , style: TextStyle(
                  fontSize: 14
                ),),
              SizedBox(
                width: 20,
              ),
              Text("Sign up.",style: TextStyle(
                  fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
