import 'package:flutter/material.dart';

class Homeactivity extends StatefulWidget {
  const Homeactivity({super.key});

  @override
  State<Homeactivity> createState() => _HomeactivityState();
}

class _HomeactivityState extends State<Homeactivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu_rounded,color: Colors.grey,),
        title: Text(
          'Hafiz',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff004b40)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: Colors.grey,
          )
        ],
      ),


      body: ListView(
        children: [
          SizedBox(height: 10),
          BannerItme(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Popular',style: TextStyle(fontSize: 24,color: Color(
                0xFF004B40,),fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: SizedBox(
              height: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12
                ),
                children: [
                  GridItem(title: 'Quran',
                    ImageAsset: 'assets/image/quranicon.png',
                    ontab: (){},
                  ),
                  GridItem(title: 'Listening', ImageAsset: 'assets/image/headphoneicon.png',),
                  GridItem(title: 'Test', ImageAsset: 'assets/image/testicon.png',),
                  GridItem(title: 'Recite', ImageAsset: 'assets/image/recite.png',),

                ],
              ),
            ),
          ),

        ],
      ),

    );
  }

  
  Widget BannerItme(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/image/banner_back.png'),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset('assets/image/quran_icon.png',height: 170,width: 170,),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,),
            child: Text('ٱقْرَأْ بِٱسْمِ \nرَبِّكَ ٱلَّذِى خَلَقَ',
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
          ),
        )

      ],
    );
  }
  

}

class GridItem extends StatelessWidget {
  String? title;
  String? ImageAsset;
  GestureTapCallback? ontab;
  GridItem({required this.title,required this.ImageAsset,this.ontab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Stack(
        children: [
          Image.asset('assets/image/item1.png'),
          Padding(
            padding: const EdgeInsets.all(26),
            child: Text('$title',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(
                0xff004b40)),),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset('$ImageAsset',height: 100,width: 110,),
              ))

        ],
      ),
    );;
  }
}
