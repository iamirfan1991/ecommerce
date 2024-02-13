import 'package:ecommerce/Widget/product_card.dart';
import 'package:ecommerce/details_screen.dart';
import 'package:ecommerce/models/my_prodcut.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Our Products",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(index: 0, name: "All Products"),
                _buildProductCategory(index: 1, name: "Jackets"),
                _buildProductCategory(index: 2, name: "Sneakers"),
              ],
            ),
            selectedIndex == 0
                ? _buildProduct()
                : selectedIndex == 1
                    ? _buildJacket()
                    : selectedIndex == 2
                        ? _buildJeans()
                        : Container()
          ],
        ),
      ),
    ));
  }

  _buildProductCategory({required int index, required String name}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: selectedIndex == index ? Colors.red : Colors.redAccent,
            borderRadius: BorderRadius.circular(8)),
        child: Text(name, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildProduct() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100 / 140,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.allProducts.length,
          itemBuilder: (context, index) {
            final allProducts = MyProducts.allProducts[index];
            return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: allProducts),
                    )),
                child: ProductCard(product: allProducts));
          },
        ),
      ),
    );
  }

  Widget _buildJacket() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100 / 140,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.jacketsList.length,
          itemBuilder: (context, index) {
            final jacketsList = MyProducts.jacketsList[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: jacketsList),
                    )),
              child: ProductCard(product: jacketsList));
          },
        ),
      ),
    );
  }

  Widget _buildJeans() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100 / 140,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12),
          scrollDirection: Axis.vertical,
          itemCount: MyProducts.sneakersList.length,
          itemBuilder: (context, index) {
            final sneakersList = MyProducts.sneakersList[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(product: sneakersList),
                    )),
              
              child: ProductCard(product: sneakersList));
          },
        ),
      ),
    );
  }
}
