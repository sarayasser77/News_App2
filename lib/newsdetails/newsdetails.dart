import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatenews/providers/newsprovider.dart';
class Newsdetails extends StatelessWidget {
  String image;
  String content;
  String source;
  String title;
  int index;
  Newsdetails({Key? key, required this.content,required this.image,required this.source,required this.index,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.green,
          toolbarHeight: MediaQuery.of(context).size.height*.15,
          title: Text('$title')
      ),
      backgroundColor: Colors.green.shade100,
       body: SingleChildScrollView(
         child: Container(

           padding: EdgeInsets.all(20),
           margin: EdgeInsets.all(20),
           decoration: BoxDecoration(
             color: Colors.white,border: Border.all(color: Colors.green),
               borderRadius: BorderRadius.circular(20),),
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 20
                 ,horizontal: 10
             ),
             child: SafeArea(
               child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  FadeInImage.assetNetwork(placeholder: 'images/placehorder2.jpg',
                      image: image ,
                  width: MediaQuery.of(context).size.width*.9,
                  ),
                   const SizedBox(height: 20,),
                   Text(content,
                     style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w300)),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text(source),
                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
       ),
    );

  }
}