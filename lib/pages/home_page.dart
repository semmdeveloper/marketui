import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor:Colors.white,
      title: Text('Cars',style: TextStyle(color: Colors.red,fontSize: 30),),
      brightness: Brightness.light,
      actions: [
        Icon(Icons.notification_important,color: Colors.red,),
        SizedBox(width: 30,height: 50,),
        Icon(Icons.shopping_cart_outlined,color: Colors.red,),
        SizedBox(width: 10,height: 10,)

      ],
    ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //catrgory
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SingleTab(true,'All'),
                    SingleTab(false,'Red'),
                    SingleTab(false,'Blue'),
                    SingleTab(false,'Green'),
                    SingleTab(false,'Black'),


                  ],
                ),
              ),
              SizedBox(height: 10,),
              makeItem('assets/images/11.jpg'),
              makeItem('assets/images/22.jpg'),
              makeItem('assets/images/33.jpg'),
              makeItem('assets/images/44.jpg'),
              makeItem('assets/images/55.jpg'),
              makeItem('assets/images/66.jpg'),
              //cer
            ],

          ),
        ),
      ), 
    );
  }
  Widget SingleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: type? Colors.red:Colors.white,
              borderRadius: BorderRadius.circular(20),

            ),
            child: Center(
              child: Text(text,style: TextStyle(fontSize: type? 20:17),),
            ),

    ),
    );

  }
  Widget makeItem(String image){
    return Container(
      height: 230,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            blurRadius: 10,
            offset: Offset(0,10),
          ),
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Pdp Car' ,style: TextStyle(color: Colors.white,fontSize: 25),),
                       Text(' Electric' ,style: TextStyle(color: Colors.red,fontSize: 20),),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('10000\$',style: TextStyle(color: Colors.white,fontSize: 26),)

                     ],
                   ),


                 ],
               ),

             ),
            Row(
              children: [

                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_outline_sharp,size: 20,color: Colors.white,),
                  ),
                )

               ],

            ),

          ],
        )
      ),
    );
  }
}
