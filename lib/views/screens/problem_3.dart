import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Loading')),
      body: GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5),
        itemCount: 100,
        itemBuilder: (context, index) {
          return FadeInImage.assetNetwork(
            placeholder: "images/loading.gif",
            image:
                "https://images.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg",
          );
        },
      ),
    );
  }
}

