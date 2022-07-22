import 'package:flutter/material.dart';

import 'model/productmodel.dart';

class casom extends StatelessWidget {

  casom({
    required this.product,
    Key? key}) : super(key: key);
  PurpleAttributes product;
  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        children:[
          Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      blurRadius: 40,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      offset: Offset(6,6)


                  ),
                ],
              ),
              child: Card(
                elevation: 7,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(product.name,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                      r'$' '${product.num.toString()}',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
         // Positioned(
          ////    right: 30 ,
         //     bottom: 20,
          /////    child: Image.network(product.image,
             //     height: 200,
            //      width: 120
           //   )
        //  )
        ]
    );
  }
}




