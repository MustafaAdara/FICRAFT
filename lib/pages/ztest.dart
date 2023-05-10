import 'package:flutter/material.dart';

class SwipeToDelete extends StatefulWidget {
  SwipeToDelete({Key? key}) : super(key: key);

  @override
  _SwipeToDeleteState createState() => _SwipeToDeleteState();
}

class _SwipeToDeleteState extends State<SwipeToDelete> {
  List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String? _selectedItem;

  Widget _buildDropdownContainer() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/person.png'),
            radius: 25.0,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _selectedItem ?? '',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text('Description'),
              ],
            ),
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Delete'),
      ),
      body: Column(
        children: _items
            .map(
              (item) => Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: const Padding(
                padding:  EdgeInsets.only(right: 16.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                _items.remove(item);
                _selectedItem = null;
              });
            },
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(item),
                    trailing: const Icon(Icons.arrow_drop_down),
                    onTap: () {
                      setState(() {
                        if (_selectedItem == item) {
                          _selectedItem = null;
                        } else {
                          _selectedItem = item;
                        }
                      });
                    },
                  ),
                  if (_selectedItem == item)
                    _buildDropdownContainer()
                ],
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}