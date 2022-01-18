// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'constants.dart';



// MyAvatar without border

class MyAvatar2 extends StatelessWidget {
  const MyAvatar2({required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          image,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
} // MyAvatar without border ends here

// MyAvatar with border

class MyAvatar extends StatelessWidget {
  const MyAvatar({required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0), //or 15.0
      child: Container(
        height: 50.0,
        width: 50.0,
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
} // MyAvatar with border ends here

// Avatar for USD

class MyCurrencyAvatar extends StatefulWidget {
  const MyCurrencyAvatar({required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  State<MyCurrencyAvatar> createState() => _MyCurrencyAvatarState();
}

class _MyCurrencyAvatarState extends State<MyCurrencyAvatar> {
 String dropdownvalue = 'USD';

var item = ['USD', 'EUR', 'RUP', 'YEN'];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0), //or 15.0
      child: Container(
        height: 40.0,
        width: 60.0,
        color: kiconborderColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            style: kUsdTextStyle,
            underline:const SizedBox(),
            value: dropdownvalue,
            icon: Icon(
              widget.icon,
              color: kiconColor,
              size: 12.0,
            ),
            items: item.map((String item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
              
            },
          ),
        ),
      ),
    );
  }
}
