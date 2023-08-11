import 'package:cloth_api_ecommerce_getx/MODELS/api_data.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Product product;

   ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    var res = MediaQuery.of(context).size;
    return Card(
      elevation: 4.0,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: res.width * 0.4,
                height: res.width * 0.4,
                color: Colors.white,
                child: Image.network(
                  product.image,
                  //height: res.width * 0.6,
                  //width: res.width * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                product.title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.price} \$',
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
