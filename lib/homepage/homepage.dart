import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import '../providers/newsprovider.dart';
import '../view/Business/business.dart';
import '../view/Science/science.dart';
import '../view/Sports/sports.dart';
import '../view/entertainment/entertainment.dart';
import '../view/health/health.dart';
import '../view/technology/technology.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
List images=[
  'images/sports.jpg',
  'images/politics.jpg',
  'images/health.jpg',
  'images/business.jpg',
  'images/environment.jpg',
  'images/Science.jpg',
];

List names=[
  'Sports','technology','Health','Business','Entertainment','Science',
];
@override
initState() {
  super.initState();
  Future.delayed(Duration.zero, () async {
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'sports', index: null);
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'technology', index: null);
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'health', index: null);
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'business', index: null);
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'entertainment', index: null);
    Provider.of<Newsprovider>(context, listen: false)
        .getData(CategoryName: 'science', index: null);

  });

}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        title: Text('News App',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*.06,
          fontWeight: FontWeight.w900,),)

      ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
        Column(
          children: [
            Text('Pick Your category of interest',style: TextStyle(color: Colors.grey.shade600,fontSize: 25,fontWeight: FontWeight.w700),),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20),
                itemBuilder: (context,index){

                  return    GestureDetector(
                    onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (ctx){ return
  index==0? Sports():index==1?technology():index==2?Health():index==3?Business():index==4?entertainment():Science();

}));
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: index==0||index==2||index==4? const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(0),
                        ): const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0)
                        ),

                        color: index==0?Colors.red.shade800:index==1?Colors.blue.shade900:index==2?Colors.pink
                            :index==3?Colors.brown.shade500:index==4?Colors.blue:Colors.yellow.shade600,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('${images[index]}',fit: BoxFit.cover,height: 100,),
                            SizedBox(height: 5,),
                            Expanded(
                                child: Text('${names[index]}',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),))
                          ],
                        ),
                      )
                    ),
                  );

                },
                itemCount: 6,
              ),
            ),
          ],
        ),

        ),
      );

  }
}
//
//TextFormField(
//           decoration: InputDecoration(
//             labelText: 'search',
//             filled: true,
//             fillColor: Colors.white,
//             labelStyle: TextStyle(color: Colors.green),
//             prefixIcon: Icon(Icons.cancel_outlined,color: Colors.green,),
//             suffixIcon: Icon(
//               Icons.search,
//               color: Colors.green,
//             ),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 borderSide: const BorderSide(color: Colors.white)),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Colors.white,
//                 ),
//                 borderRadius: BorderRadius.circular(30)),
//           ),
//         ),
