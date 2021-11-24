import 'package:flutter/material.dart';
import 'package:myresume/pages/constants.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          operation: "minus",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          operation: "add",
        ),
      ],
    );
  }


  SizedBox buildOutlineButton({required IconData icon, required String operation}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius:  BorderRadius.circular(13),
            )
        ),
        onPressed: (){
          switch (operation){
            case "add":
              setState(() {
                numOfItems++;
              });
              break;
            case "minus":
              setState(() {
                if(numOfItems == 0) return;
                else numOfItems--;
              });
              break;
          }
        },
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
