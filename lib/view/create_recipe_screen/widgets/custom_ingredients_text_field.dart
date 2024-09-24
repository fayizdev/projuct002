import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';

class customIngredientsTextField extends StatelessWidget {
  const customIngredientsTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: ColorConstands.greyShade2),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: ColorConstands.greyShade2),
              ),
              hintText: 'Item Name',
              hintStyle:
                  TextStyle(color: ColorConstands.mainBlack.withOpacity(0.5)),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: ColorConstands.greyShade2),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: ColorConstands.greyShade2),
              ),
              hintText: 'Quantity',
              hintStyle:
                  TextStyle(color: ColorConstands.mainBlack.withOpacity(0.5)),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Icon(Icons.add)
      ],
    );
  }
}
