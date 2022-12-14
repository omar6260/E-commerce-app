import 'package:flutter/material.dart';

import '../../../application/service/api_service.dart';
import '../all_categorie_page/all_categry.dart';
import '../cart_page/cart_screen.dart';
import '../product_page/product_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Shoping'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(177, 236, 156, 26),
        // after creation de du navigaton AllCategory
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllCategory()));
              },
              icon: Icon(Icons.view_list)),
          // after creat a cart screens
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              icon: Icon(Icons.shopping_cart)),
        ],
        // first creat a class of
      ),
      body: FutureBuilder(
        future: ApiService().getAllPost(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index]['title']),
                      // pose
                      leading: Image.network(
                        snapshot.data[index]['image'],
                        height: 50,
                        width: 30,
                      ),
                      subtitle: Text(
                        "Price - \$" + snapshot.data[index]['price'].toString(),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(snapshot.data[index]['id'])));
                      },
                    );
                  }),
              // impement GET request to a server
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
