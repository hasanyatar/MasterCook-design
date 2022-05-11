import 'package:flutter/material.dart';
import '/components/Banner/M/banner_m_with_counter.dart';
import '../../../../components/product/product_card.dart';
import '../../../../models/product_model.dart';

import '../../../../constants.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BannerMWithCounter(
          duration: const Duration(hours: 8),
          text: "Master Cook\nSuper Sale \n50% Off",
          press: () {},
        ),
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Weekend sale",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: flashSaleProducts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                right: index == flashSaleProducts.length - 1 ? defaultPadding : 0,
              ),
              child: ProductCard(
                image: flashSaleProducts[index].image,
                brandName: flashSaleProducts[index].brandName,
                title: flashSaleProducts[index].title,
                price: flashSaleProducts[index].price,
                priceAfetDiscount: flashSaleProducts[index].priceAfetDiscount,
                dicountpercent: flashSaleProducts[index].dicountpercent,
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
