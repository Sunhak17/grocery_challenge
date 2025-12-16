import 'package:flutter/material.dart';
import '../../models/grocery.dart';

class GroceryTileWidget extends StatelessWidget {
  const GroceryTileWidget({super.key, required this.grocery, required this.onDelete});

  final Grocery grocery;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: grocery.category.color, child: Text(grocery.category.label[0])),
      title: Text(grocery.name),
      subtitle: Text('Quantity: ${grocery.quantity}'),
      trailing: IconButton(icon: const Icon(Icons.delete), onPressed: onDelete),
    );
  }
}