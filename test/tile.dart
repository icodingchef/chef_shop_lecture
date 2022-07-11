import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                height: 75,
                width: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Image.network(
                  'http',
                  fit: BoxFit.fill,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: IconButton(
                  icon: Icon(Icons.favorite_rounded),
                  onPressed: () {},
                  iconSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'product.name',
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w400),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Text(
            '',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ]),
      ),
    );
  }
}