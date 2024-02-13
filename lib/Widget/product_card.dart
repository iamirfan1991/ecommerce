import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
            )
          ],
        ),
        SizedBox(
          height: 70,
          width: 70,
          child: Image.asset(
            widget.product.image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          widget.product.name,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.product.category,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.red),
        ),
        Text(
          'Rs.' '${widget.product.price}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        )
      ]),
    );
  }
}
