// import 'package:flutter/material.dart';
// import 'package:sofaapp/detail_screen.dart';  

// class Product {
//   final String name;
//   final String image;
//   final double price;
//   final String description;
//   final List<Color> availableColors;

//   Product({
//     required this.name,
//     required this.image,
//     required this.price,
//     required this.description,
//     required this.availableColors,
//   });
// }

// class ProductScreen extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//       name: 'Room Sofa',
//       image: 'assets/sofa.png',
//       price: 2500,
//       description: 'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused use to the furniture help us relax for a longer time.',
//       availableColors: [Colors.blue, Colors.brown, Colors.black],
//     ),
//     // Add other products here...
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Find the home furniture'),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.favorite_border),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//             childAspectRatio: 0.7,
//           ),
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             final product = products[index];
//             return ProductItem(product: product);
//           },
//         ),
//       ),
//     );
//   }
// }

// class ProductItem extends StatelessWidget {
//   final Product product;

//   const ProductItem({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProductDetailScreen(product: product),
//           ),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Image.asset(product.image, fit: BoxFit.cover),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.name,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 4),
//                   Row(
//                     children: [
//                       ...product.availableColors.map((color) => ColorDot(color)),
//                     ],
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     '¥${product.price}',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.favorite_border, color: Colors.grey),
//                         onPressed: () {},
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ProductDetailScreen(product: product),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ColorDot extends StatelessWidget {
//   final Color color;

//   ColorDot(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 4),
//       decoration: BoxDecoration(
//         color: color,
//         shape: BoxShape.circle,
//       ),
//       width: 16,
//       height: 16,
//     );
//   }
// }

//***************************************** */

// import 'package:flutter/material.dart';
// import 'detail_screen.dart';

// class Product {
//   final String name;
//   final String image;
//   final double price;
//   final List<Color> availableColors;

//   Product({
//     required this.name,
//     required this.image,
//     required this.price,
//     required this.availableColors,
//   });
// }

// class ProductScreen extends StatelessWidget {
//   final List<Product> products = [
//     Product(
//       name: 'Room Sofa',
//       image: 'assets/sofa.png',
//       price: 2500,
//       availableColors: [Colors.blue, Colors.brown, Colors.black],
//     ),
//     Product(
//       name: 'Toshiba TV',
//       image: 'assets/sofa.png',
//       price: 35250,
//       availableColors: [Colors.black, Colors.brown, Colors.grey],
//     ),
//     Product(
//       name: 'Table Lamp',
//       image: 'assets/sofa.png',
//       price: 550,
//       availableColors: [Colors.brown, Colors.black],
//     ),
//     Product(
//       name: 'Wood Table',
//       image: 'assets/sofa.png',
//       price: 905,
//       availableColors: [Colors.brown, Colors.black, Colors.grey],
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Find the home furniture', style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 FilterButton(label: 'All', isSelected: true),
//                 FilterButton(label: 'Sofa', isSelected: false),
//                 FilterButton(label: 'TV', isSelected: false),
//                 FilterButton(label: 'Lamp', isSelected: false),
//               ],
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                   childAspectRatio: 0.7,
//                 ),
//                 itemCount: products.length,
//                 itemBuilder: (context, index) {
//                   final product = products[index];
//                   return ProductItem(product: product);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FilterButton extends StatelessWidget {
//   final String label;
//   final bool isSelected;

//   const FilterButton({required this.label, required this.isSelected});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 8),
//       padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       decoration: BoxDecoration(
//         color: isSelected ? Colors.blue : Colors.grey.shade200,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
//     );
//   }
// }

// class ProductItem extends StatelessWidget {
//   final Product product;

//   const ProductItem({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ProductDetailScreen(product: product),
//           ),
//         );
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Image.asset(product.image, fit: BoxFit.cover),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.name,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 4),
//                   Row(
//                     children: [
//                       ...product.availableColors.map((color) => ColorDot(color)),
//                     ],
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     '¥${product.price}',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.favorite_border, color: Colors.grey),
//                         onPressed: () {},
//                       ),
//                       IconButton(
//                         icon: Icon(Icons.add),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ProductDetailScreen(product: product),
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ColorDot extends StatelessWidget {
//   final Color color;

//   ColorDot(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 4),
//       decoration: BoxDecoration(
//         color: color,
//         shape: BoxShape.circle,
//       ),
//       width: 16,
//       height: 16,
//     );
//   }
// }


/*************************************** */


import 'package:flutter/material.dart';
import 'detail_screen.dart';

class Product {
  final String name;
  final String image;
  final double price;
  final List<Color> availableColors;
  bool isFavorite;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.availableColors,
    this.isFavorite = false,
  });
}

class ProductScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Room Sofa',
      image: 'assets/sofa.png',
      price: 2500,
      availableColors: [Colors.blue, Colors.brown, Colors.black],
    ),
    Product(
      name: 'Toshiba TV',
      image: 'assets/sofa.png',
      price: 35250,
      availableColors: [Colors.black, Colors.brown, Colors.grey],
    ),
    Product(
      name: 'Table Lamp',
      image: 'assets/sofa.png',
      price: 550,
      availableColors: [Colors.brown, Colors.black],
    ),
    Product(
      name: 'Wood Table',
      image: 'assets/sofa.png',
      price: 905,
      availableColors: [Colors.brown, Colors.black, Colors.grey],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find the home furniture', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FilterButton(label: 'All', isSelected: true),
                FilterButton(label: 'Sofa', isSelected: false),
                FilterButton(label: 'TV', isSelected: false),
                FilterButton(label: 'Lamp', isSelected: false),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductItem(product: product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterButton({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
    );
  }
}

class ProductItem extends StatefulWidget {
  final Product product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: widget.product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(widget.product.image, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      ...widget.product.availableColors.map((color) => ColorDot(color)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    '¥${widget.product.price}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          widget.product.isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: widget.product.isFavorite ? Color.fromARGB(255, 54, 67, 244) : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            widget.product.isFavorite = !widget.product.isFavorite;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(product: widget.product),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;

  ColorDot(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      width: 16,
      height: 16,
    );
  }
}