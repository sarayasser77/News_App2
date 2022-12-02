import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatenews/search/search.dart';

import '../../homepage/homepage.dart';
import '../../providers/newsprovider.dart';
import '../../newsdetails/newsdetails.dart';
class Science extends StatefulWidget {
  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        width: MediaQuery.of(context).size.width*.75,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*.25,
              decoration: BoxDecoration(color: Colors.green.shade500),
              child: Text('NewsApp!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.height*.05),),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx){return home();}));
                    }, icon:Icon(Icons.view_list_sharp,size: MediaQuery.of(context).size.height*.04,)),
                    SizedBox(width: 30,),
                    Text('Categories',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.height*.038 ),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    IconButton(onPressed: (){

                    }, icon:Icon(Icons.settings,size: MediaQuery.of(context).size.height*.04,)),
                    SizedBox(width: 30,),
                    Text('Setting',style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.height*.038 ),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx){
                return Search();
              }));
            }, icon: Icon(Icons.search,size: MediaQuery.of(context).size.height*.04,))
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                ),
                color: Colors.green
            ),
          ),
          toolbarHeight: MediaQuery.of(context).size.height*.13,
          title: Text('Science',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),)

      ),

      body:   Provider.of<Newsprovider>(context).Sciencedata.isEmpty?
      Center(
        child: CircularProgressIndicator(color: Colors.green,),
      )

          :Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  click=true;
                  setState(() {
                  });
                },
                child: Container(
                  height: 50,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){return
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color:click==true? Colors.green:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.green),
                          ),
                          width: 100,height: 100,
                          child:Text('BBC NEWS',style: TextStyle(color: Colors.green),) ,
                        );
                      },
                      separatorBuilder: (context,index){
                        return SizedBox(width: 5,);
                      },
                      itemCount: 10),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.02,
            ),
            Expanded(flex: 15,
              child: ListView.separated(itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx){
                          return Newsdetails(content: Provider.of<Newsprovider>(context).Sciencedata[index]['description']??'',
                              image: Provider.of<Newsprovider>(context).Sciencedata[index]['urlToImage']??'',
                              source: Provider.of<Newsprovider>(context).Sciencedata[index]['source']['name']??'',
                              index: index, title: Provider.of<Newsprovider>(context).Businessdata[index]['title']??'',);
                        }
                        )

                        );
                      }
                      ,child: FadeInImage.assetNetwork(placeholder:'images/placehorder2.jpg' ,
                        imageErrorBuilder: (c,v,b){
                          return Image.asset('images/placehorder.jpg');
                        },
                        image: Provider.of<Newsprovider>(context).Sciencedata[index]['urlToImage']??''
                    ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text(Provider.of<Newsprovider>(context).Sciencedata[index]['source']['id']??'',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text(Provider.of<Newsprovider>(context).Sciencedata[index]['title']??'',style: TextStyle(color: Colors.black,fontSize: 25,),
                      maxLines:4,
                      overflow: TextOverflow.ellipsis,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(Provider.of<Newsprovider>(context).Sciencedata[index]['publishedAt']??'',style: TextStyle(color: Colors.grey),)
                      ],
                    )
                  ],
                );
              },
                  separatorBuilder: (context,index){
                    return SizedBox(height: MediaQuery.of(context).size.height*.07,);
                  },
                  itemCount: Provider.of<Newsprovider>(context).Sciencedata.length),
            ),
          ],
        ),
      ),
    );
  }
}

