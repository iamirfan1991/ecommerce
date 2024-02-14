import 'package:ecommerce/Provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({super.key});

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    _buildProductQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {});
          icon == Icons.add
              ? provider.incrementquantity(index)
              : provider.decrementquantity(index);
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.shade100,
          ),
          child: Icon(
            icon,
            size: 15,
          ),
        ),
      );
    }

    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: finalList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Slidable(
                endActionPane:
                    ActionPane(motion: const ScrollMotion(), children: [
                  SlidableAction(
                    onPressed: (context) {
                      finalList.removeAt(index);
                      setState(() {});
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  )
                ]),
                child: ListTile(
                  title: Text(
                    finalList[index].name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        finalList[index].description,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Rs.${finalList[index].price}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(finalList[index].image),
                  ),
                  trailing: Column(
                    children: [
                      _buildProductQuantity(Icons.add, index),
                      Text(
                        finalList[index].quantity.toString(),
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      _buildProductQuantity(Icons.remove, index),
                    ],
                  ),
                  tileColor: Colors.white,
                ),
              ),
            );
          },
        )),
        BottomAppBar(
          color: Colors.red,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rs.${provider.getTotalPrice()}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  ElevatedButton.icon(
                    icon: Icon(Icons.send),
                    label: Text('Checkout'),
                    onPressed: () {},
                  )
                ]),
          ),
        ),
      ],
    ));
  }
}
