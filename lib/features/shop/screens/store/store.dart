import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab2.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab3.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab4.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab5.dart';
import 'package:ecommerce_app/features/shop/screens/store/widgets/category_tab6.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/TTabbar.dart';
import '../../../../common/widgets/brand/t_brand_card2.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../controller/category_controller.dart';
import '../brand/all_brands.dart';
import 'widgets/category_tab.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brand/t_brand_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: TColors.primary,
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // Search Bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        // const TSearchContainer(
                        //   text: "Search in Store",
                        //   showBorder: true,
                        //   showBackground: false,
                        //   padding: EdgeInsets.zero,
                        // ),

                        Padding(
                          padding: EdgeInsets.only(
                              top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search on Store',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: TColors.light,
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Iconsax.search_normal,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        // Featured Brands
                        TSectionHeading(
                          title: "Feature Brands",
                          onPressed: () => Get.to(() => AllBrandScreen()),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),

                        TGridLayout(
                          itemCount: 2,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard(
                              showBorder: true,
                            );
                          },
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TGridLayout(
                          itemCount: 2,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard2(
                              showBorder: true,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  bottom: TTabBar(tabs: <Widget>[
                    Tab(
                      child: Text("Sport"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronics"),
                    ),
                    Tab(
                      child: Text("Cloths"),
                    ),
                    Tab(
                      child: Text("Toys"),
                    ),
                    Tab(
                      child: Text("Shoes"),
                    ),
                  ]),
                )
              ];
            },

            // Body
            body: TabBarView(
              children: <Widget>[
                TCategoryTab(), // Assuming TCategoryTab is your widget
                TCategoryTab2(), // Assuming TCategoryTab is your widget
                TCategoryTab3(), // Assuming TCategoryTab is your widget
                TCategoryTab4(), // Assuming TCategoryTab is your widget
                TCategoryTab5(), // Assuming TCategoryTab is your widget
                TCategoryTab6(), // Assuming TCategoryTab is your widget
              ],
            )),
      ),
    );
  }
}
