import 'package:flutter/material.dart';

// set aliase prevent same class name in Image widget
import '../model/product_model.dart' as product;

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final product.Product item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          // image
          //Image.network(""),

          Positioned(
            left: 4,
            bottom: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // product title
                Text(
                  item.attributes.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                // product price
                Text('${item.attributes.num}')
              ],
            ),
          )
        ],
      ),
    );
  }
}
