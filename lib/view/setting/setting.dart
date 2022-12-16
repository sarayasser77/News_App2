import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:updatenews/homepage/homepage.dart';
class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill,
          image: AssetImage('images/backgroundsetting.jpg',)
        )
      ),
        alignment: Alignment.center,
        child: CircleAvatar(
          radius: 150,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 140,
            backgroundColor: Colors.green.shade900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.language,color: Colors.white,size: 26,),
                    SizedBox(width: 20,),
                    Text('Language',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),)
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.help,color: Colors.white,size: 26,),
                    SizedBox(width: 40,),
                    Text('Help',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx){
                        return home();
                      }));
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 26,))
                    ,SizedBox(width: 40,),
                    Text('Back',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w300),)
                  ],
                ),
              ],
            )
          ),
        ),
       ),
      );
  }
}
