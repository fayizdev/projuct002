import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';
import 'package:projuct002/view/create_recipe_screen/widgets/custom_ingredients_text_field.dart';
import 'package:projuct002/view/global_widgets/customk_button.dart';

import '../global_widgets/custom_list_tile.dart';

class CreateRecipescreen extends StatelessWidget {
  const CreateRecipescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create recipe",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: ColorConstands.mainBlack),
              ),
              SizedBox(
                height: 24,
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //image: DecorationImage(image: NetworkImage(url))
                        color: Colors.yellow),
                    child: Center(
                        child: CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          ColorConstands.blackShade.withOpacity(.3),
                      child: Icon(
                        Icons.play_arrow,
                        color: ColorConstands.mainWhite,
                      ),
                    )),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstands.mainWhite,
                      child: Icon(
                        Icons.draw_outlined,
                        color: ColorConstands.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorConstands.primaryColor),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: ColorConstands.primaryColor),
                  ),
                  hintText: 'Enter recipe name',
                  hintStyle: TextStyle(
                      color: ColorConstands.mainBlack.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => CustomListTile(
                        isarrow: true,
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 12,
                      ),
                  itemCount: 2),
              SizedBox(
                height: 20,
              ),
              Text(
                "Ingredients",
                style: TextStyle(
                    fontSize: 20,
                    color: ColorConstands.mainBlack,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              customIngredientsTextField(),
              SizedBox(
                height: 16,
              ),
              customIngredientsTextField(),
              SizedBox(
                height: 16,
              ),
              customIngredientsTextField(),
              SizedBox(
                height: 16,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: ColorConstands.mainBlack,
                        size: 24,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Add new Ingredient",
                        style: TextStyle(
                            color: ColorConstands.mainBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 54,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstands.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Save my recipes",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: ColorConstands.mainWhite),
                      ),
                    ),
                  )),
              SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: CustomButton(text: "Save my recipes"))
            ],
          ),
        ),
      ),
    );
  }
}
