import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SwitchAcc extends StatefulWidget {
  const SwitchAcc({super.key});

  @override
  State<SwitchAcc> createState() => _SwitchAccState();
}

class _SwitchAccState extends State<SwitchAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
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
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3797EF)),
                ),
                SizedBox(
                  width: 24,
                )
              ],
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
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 17,
                  height: 17,
                  child: Image.asset("assets/Icon.png"),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "Log in with Facebook",
                  style: TextStyle(fontSize: 17, color: Colors.blue),
                )
              ],
            ),
            SizedBox(height: 52,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Line.png" , width: 132, height: 1,),
                Text("OR" , style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
                ),),
                Image.asset("assets/Line.png" , width: 132, height: 1 ,),

              ],
            ),
            SizedBox(  height: 64,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account? " , style: TextStyle(
                  fontSize: 17
                ),), SizedBox(width: 12,) , Text(" Sign up." , style: TextStyle(
                  color: Colors.blue , fontSize: 17
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
