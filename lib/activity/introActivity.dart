import 'package:flutter/material.dart';

class IntroActivity extends StatefulWidget {
  const IntroActivity({super.key});

  @override
  State<IntroActivity> createState() => _IntroActivityState();
}

class _IntroActivityState extends State<IntroActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004b40),

      appBar: AppBar(
        backgroundColor: Color(0xff004b40),
        toolbarHeight: 1,
      ),
      
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 26),
              height: 391,
              decoration: BoxDecoration(
                  color: Color(0x3487d1a4),
                  borderRadius: BorderRadius.circular(18)),
              child: Image.asset('assets/image/quran_icon.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hafiz',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xdf87d1a4)),
            ),
            const Text('Learn Quran and\nRecite everyday',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){

              Navigator.pushNamedAndRemoveUntil(
                context, '/HomeActivity', (predicate) => false,);
              setState(() {});

            },
                style: ElevatedButton.styleFrom(foregroundColor: Color(0xff004b40)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Get Start',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_outlined,color: Color(0xff004b40),)
                  ],
                ))
            
          ],
        ),
      ),
    );
  }
}
