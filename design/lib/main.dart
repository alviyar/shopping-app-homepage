import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart'
    as custom_search_bar; // Import the search_bar.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> itemTexts = [
    "Music",
    "Property",
    "Game",
    "Gadget",
    "Electronic",
    "Property",
    "Game",
    "Book"
  ];

  final List<String> itemImages = [
    "https://i.pinimg.com/564x/ee/2e/d6/ee2ed697d5304f3fde6fc511669b21f7.jpg",
    "https://i.pinimg.com/564x/0a/90/a4/0a90a48117ea7f64e7957c12e6e707f9.jpg",
    "https://i.pinimg.com/564x/5c/b3/19/5cb319e2f64d95d5c149ca5b1a5ec6d1.jpg",
    "https://i.pinimg.com/564x/58/52/fa/5852fab2f4dfbaed7eccb229e6e76a8a.jpg",
    "https://i.pinimg.com/564x/90/c5/c1/90c5c1cd1e8939c4e13f78c275c139b4.jpg",
    "https://i.pinimg.com/564x/0a/90/a4/0a90a48117ea7f64e7957c12e6e707f9.jpg",
    "https://i.pinimg.com/564x/5c/b3/19/5cb319e2f64d95d5c149ca5b1a5ec6d1.jpg",
    "https://i.pinimg.com/564x/91/30/da/9130da19ff4982a9f4931b3b14e4d09a.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(itemTexts: itemTexts, itemImages: itemImages),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> itemTexts;
  final List<String> itemImages;

  const MyHomePage(
      {super.key, required this.itemTexts, required this.itemImages});

  @override
  Widget build(BuildContext context) {
    var searchBar =
        custom_search_bar.SearchBar(); // Create an instance of SearchBar
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 1.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Samantha',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: searchBar, // Use the SearchBar instance
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 24.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://i.pinimg.com/736x/e6/74/ff/e674ffd921d9e51f956690fa9dd9527e.jpg',
                        height: 45,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://i.pinimg.com/564x/cb/be/53/cbbe53813cb8c0c85ddeda0d23de874d.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: DotsIndicator(
                  mainAxisAlignment: MainAxisAlignment.center,
                  dotsCount: 4,
                  position: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: SizedBox(
                  height: 178, // Set the desired height for the GridView
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: itemTexts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                itemImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(itemTexts[index]),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Best Seller',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:Image.network("https://i.pinimg.com/736x/74/ee/a2/74eea209e7c414cda83bf70c58d9177e.jpg",
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:Image.network("https://i.pinimg.com/564x/b4/ca/bb/b4cabbeddbb5fcc95e3a0fd51bb3ea78.jpg",
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child:Image.network("https://i.pinimg.com/564x/ce/a5/1a/cea51a6b2a22aca7cb37481c5f58c663.jpg",
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
