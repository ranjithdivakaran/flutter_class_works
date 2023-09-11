import 'package:flutter/material.dart';
import 'package:project1/storages%20in%20flutter/shared%20preferences/sqflite%20operation/sqflite%20crud/sqflite%20operations.dart';

void main() {
  runApp(MaterialApp(
    home: Sqflitehome(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sqflitehome extends StatefulWidget {
  const Sqflitehome({super.key});

  @override
  State<Sqflitehome> createState() => _SqflitehomeState();
}

class _SqflitehomeState extends State<Sqflitehome> {
  var isloading = true;

  //to read all values from sqlite db
  List<Map<String, dynamic>> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My contacts"),
        centerTitle: true,
      ),
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showsheet(null),
        child: Icon(Icons.add),
      ),
    );
  }

  final name_cntr = TextEditingController();
  final phn_cntr = TextEditingController();

  void showsheet(int? id) async {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_cntr,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phn_cntr,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (id == null) {
                      await createcontact();
                    }
                    if (id != null) {
                      //await update contact(id);
                    }
                  },
                  child: Text(id == null ? "Create Contact" : "Update Contact"),
                ),
              ],
            ),
          );
        });
  }

  //to add a new data or contact to sqflite db
  Future<void> createcontact() async {
    var id = await SQLHelper.create_contact(name_cntr.text, phn_cntr.text);
    print(id);
  }
}
