import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details ')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 220,
                  height: 220,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(product.image, fit: BoxFit.cover),
                )
              ],
            ),
            SizedBox(height:20),
            Text(product.name,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
            SizedBox(height:20),
            Text("Price : ${product.price}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
            SizedBox(height:20),
            Container(decoration: BoxDecoration(color: Colors.blue[50]),
            child: Text(product.description,style:TextStyle(fontSize: 15,fontWeight:FontWeight.w400) ,),)
          
         
          ],
        ),
      ),
bottomSheet: BottomAppBar(
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    alignment: Alignment.center,
    width: double.infinity,
    height: MediaQuery.of(context).size.height /10,
    decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(5)),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      
      children: [
      Text('Rs.${product.price}',style:  TextStyle(color:Colors.white, fontSize: 30)),
      ElevatedButton.icon(
        
        onPressed: () {
        
      }, icon: Icon(Icons.send), label: Text('Add to Cart'))
    ]),
  ),
),
    ); 
  }
}
