import 'package:flutter/material.dart';
class Searchdetails extends StatelessWidget{
  String image="";
  String content="";
  String source="";
  Searchdetails({Key? key, required this.image,required this.content,required this.source}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: MediaQuery.of(context).size.height*.11
      ),
      backgroundColor: Colors.green.shade100,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(20),),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20
                ,horizontal: 10
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInImage.assetNetwork(placeholder: 'images/placehorder.jpg',
                  image: image ,
                  width: MediaQuery.of(context).size.width*.9,
                ),
                const SizedBox(height: 20,),
                Text(content,


                  style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w400),),
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
    );
  }

}