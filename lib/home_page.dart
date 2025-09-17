import 'dart:math';
import 'package:learn_flutter_1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as faker;

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final faker.Faker fake = faker.Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
        "https://picsum.photos/id/$index/200",
        fake.food.restaurant(),
        10000 + Random().nextInt(100000),
        fake.lorem.sentence(),
      );
    });
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Marketplace")),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummyData[index].imageURL),
              footer: Container(
                height: 80,
                color: Colors.green.withOpacity(0.8),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dummyData[index].judul,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Rp. ${dummyData[index].harga}"),
                    Text(
                      dummyData[index].deskripsi,
                      maxLines: 2,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: dummyData.length,
        ),
      ),
    );
  }
}
