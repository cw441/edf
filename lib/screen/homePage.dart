import 'package:flutter/material.dart';

import '../model/productmodel.dart';
import '../screen1.dart';
import '../serves/get all.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePAge' ;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Text('mahmood',
        style: TextStyle(
          color: Colors.redAccent,

        )
        ) ,
      ),
body:Padding(
    padding: const EdgeInsets.only(left:16,right:16,top:50 ),
child: FutureBuilder<List<PurpleAttributes>>(
  future: Getallproduct().getAll(),

  builder: (context,snapshot){
    if(snapshot.hasData){
      List<PurpleAttributes> products =snapshot.data!;
    return GridView.builder(
      itemCount:products.length ,
        clipBehavior: Clip.none,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            childAspectRatio: 1.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 100


        ),
        itemBuilder:(context,index){
          return casom(product: products[index],);
        }
    );
    }else{
      return Center(child:
        CircularProgressIndicator()
      );
    }
  },
)
)
    );
  }
}

