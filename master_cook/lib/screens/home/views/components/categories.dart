import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/route/screen_export.dart';

import '../../../../constants.dart';

// For preview
class CategoryModel {
  final String name;
  final String? svgSrc, route;

  CategoryModel({
    required this.name,
    this.svgSrc,
    this.route,
  });
}

List<CategoryModel> categories = [
  CategoryModel(name: "All Categories"),
  CategoryModel(name: "Fast Food", svgSrc: "assets/icons/fast-food.svg", route: onSaleScreenRoute),
  CategoryModel(name: "Breakfast", svgSrc: "assets/icons/breakfast.svg"),
  CategoryModel(name: "Drinks", svgSrc: "assets/icons/drinks.svg"),
  CategoryModel(name: "Desserts", svgSrc: "assets/icons/desserts.svg", route: kidsScreenRoute),
];
// End For Preview

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            categories.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? defaultPadding : defaultPadding / 2,
                  right: index == categories.length - 1 ? defaultPadding : 0),
              child: CategoryBtn(
                category: categories[index].name,
                svgSrc: categories[index].svgSrc,
                isActive: selected == index,
                press: () {
                  setState(() {
                    selected = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({
    Key? key,
    required this.category,
    this.svgSrc,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final String category;
  final String? svgSrc;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : const Color.fromARGB(255, 206, 175, 108),
          border: Border.all(color: isActive ? Colors.transparent : Theme.of(context).dividerColor),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          children: [
            if (svgSrc != null)
              SvgPicture.asset(
                svgSrc!,

                height: 23,
                // color: isActive ? Colors.white : Theme.of(context).iconTheme.color,
              ),
            if (svgSrc != null) const SizedBox(width: defaultPadding / 3),
            Text(
              category,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isActive ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
