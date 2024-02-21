import 'package:flutter/material.dart';


class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownvalue="one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DropDown",style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 115, 131),
      ),
body: Center(
  child: DropdownButton<String>(
    value: dropdownvalue,
    icon: const Icon(Icons.menu),
    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    underline: Container(
      height: 2,
      color: Colors.white,
    ),
    items: const [
  DropdownMenuItem<String>(
    value: 'one',
    child: Text("one")),
    DropdownMenuItem<String>(
    value: 'two',
    child: Text("two")),
    DropdownMenuItem<String>(
    value: 'tree',
    child: Text("tree")),
    DropdownMenuItem<String>(
    value: 'four',
    child: Text("four")),
    ] ,
  onChanged: (String? newvalue){
    setState(() {
      dropdownvalue=newvalue!;
    });

  }
  ),
),
    );
  }
}