import 'package:flutter/material.dart';
import 'package:styler/config/misc.dart';
import 'package:styler/config/sizes.dart';

class ProductResultCard extends StatelessWidget {
  const ProductResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(ProductCardStyles.borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(ProductCardStyles.borderRadius - 2),
              topRight: Radius.circular(ProductCardStyles.borderRadius - 2),
            ),
            child: Image.network(
              'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/15598130/2021/10/11/00b95453-af40-4cfe-a8fb-51960607777e1633926686080-DILLINGER-Women-Tshirts-7421633926685543-1.jpg',
              fit: BoxFit.cover,
              height: 160,
              width: double.infinity,
            ),
          ),
          Container(
            color: Colors.orange,
            height: 2,
          ),
          Padding(
            padding: ProductCardStyles.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Women\'s Yellow T-Shirt',
                  style: TextStyle(
                    fontSize: TextSizes.b1,
                    letterSpacing: -0.5,
                    fontWeight: FontWeight.w800,
                    height: 1,
                  ),
                ),
                hSpace(5),
                Text(
                  '₹ 2500',
                  style: TextStyle(
                    fontSize: TextSizes.b1,
                    color: Colors.black.withOpacity(0.75),
                    letterSpacing: -1,
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                hSpace(5),
                Text(
                  'This classic white t-shirt is made from 100% cotton and is perfect for everyday wear.',
                  style: TextStyle(
                    fontSize: TextSizes.b2,
                    overflow: TextOverflow.clip,
                    height: 0,
                    letterSpacing: 0,
                    color: Colors.black.withOpacity(0.75),
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
