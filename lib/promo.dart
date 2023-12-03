import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PromoData> promos = [
      PromoData(
        image: "images/promo1.jpg",
        discount: "50% OFF",
        description: "Earn 20 loyalty points",
      ),
      PromoData(
        image: "images/promo2.jpg",
        discount: "30% OFF",
        description: "Earn 30 loyalty points",
      ),
      PromoData(
        image: "images/promo3.jpg",
        discount: "Buy 1 Get 1 Free",
        description: "Limited time offer",
      ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Semua Promo Hari Ini",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Column(
              children: promos.map((promo) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: PromoItem(
                    image: promo.image,
                    discount: promo.discount,
                    description: promo.description,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PromoData {
  final String image;
  final String discount;
  final String description;

  PromoData({
    required this.image,
    required this.discount,
    required this.description,
  });
}

class PromoItem extends StatelessWidget {
  final String image;
  final String discount;
  final String description;

  const PromoItem({
    Key? key,
    required this.image,
    required this.discount,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            discount,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
