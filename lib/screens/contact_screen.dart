import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
}

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen>
    with TickerProviderStateMixin {
  late List<Contact> contacts;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    contacts = [
      Contact(name: 'Alice', phone: '555-1234'),
      Contact(name: 'Bob', phone: '555-5678'),
      Contact(name: 'Charlie', phone: '555-9012'),
      Contact(name: 'Dave', phone: '555-3456'),
      Contact(name: 'Emily', phone: '555-7890'),
      Contact(name: 'Frank', phone: '555-2345'),
      Contact(name: 'Gina', phone: '555-6789'),
      Contact(name: 'Henry', phone: '555-0123'),
      Contact(name: 'Isabelle', phone: '555-4567'),
      Contact(name: 'Jack', phone: '555-8901'),
    ];

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: Color.fromRGBO(220, 220, 220, 1),
              filled: true,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Contact List",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
        actions: [],
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(contacts[index].name[0]),
                    ),
                    title: Text(contacts[index].name),
                    subtitle: Text(contacts[index].phone),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
