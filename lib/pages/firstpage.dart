import 'package:flutter/material.dart';
import 'package:lab05_142/food.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Food> foods = [];

  String groupValue = "กรุณาเลือกอาหาร";
  @override
  void initState() {
    super.initState();
    foods = Food.getFood();

    print(foods.map((food) => food.enFood).toList()[0]);
  }

  List<Widget> creteRadioFood() {
    //เป็นการรีเทรินค่า

    List<Widget> myfood = [];
    for (var fb in foods) {
      myfood.add(RadioListTile(
        title: Text(fb.thFood),
        subtitle: Text(fb.enFood),
        secondary: Text("${fb.price} "),
        value: fb.value,
        groupValue: groupValue,
        onChanged: (value) {
          setState(() {
            groupValue = value!;
          });
        },
      ));
    }
    return myfood;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("food 142"),
      ),
      body: Column(
        children: [
          Column(
            children: creteRadioFood(),
          ),
          Text(
            groupValue,
            style: const TextStyle(color: Colors.black, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
