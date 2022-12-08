import 'package:kedai/consts/consts.dart';
import 'package:kedai/consts/lists.dart';
import 'package:kedai/views/home_screen/components/featured_button.dart';
import 'package:kedai/views/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey)
              ),
            ),
          ),

          10.heightBox,

          
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // swipers brand
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length, 
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index], 
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
            
                  10.heightBox,
                  // deals buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(2, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 2.5,
                      icon: index == 0 ? icTodaysDeal : icFlashDeal,
                      title: index == 0 ? todayDeal : flashsale,
            
                    )),
                  ),
            
                  // 2nd swiper
                  10.heightBox,
                  // swiper brands
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: secondSlidersList.length, 
                    itemBuilder: (context, index) {
                      return Image.asset(
                        secondSlidersList[index], 
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                  }),
            
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 3.5,
                      icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                      title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
                    )),
                  ),
            
                  // featured categories
                  20.heightBox,
            
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                  
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featuredButton(icon: featuredImages1[index], title: featuredTitle1[index]),
                            10.heightBox,
                            featuredButton(icon:  featuredImages2[index], title: featuredTitle2[index]),
                            10.heightBox
                            
                          ],
                        ),
                      ).toList(),
                    ),
                  ),

                  // fetured product

                  20.heightBox,

                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6, (index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                                10.heightBox,
                                "Mie Ayam".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "Rp 20.000.00".text.color(redColor).fontFamily(bold).size(16).make()
                              ],
                            ).box.white.margin(const EdgeInsets.symmetric(horizontal: 5)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // third swiper
                  20.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSlidersList.length, 
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSlidersList[index], 
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    }),

                    // all producsts section
                    20.heightBox,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8, crossAxisSpacing: 8,mainAxisExtent: 300), 
                      itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Image.asset(imgP5, height: 200, width: 200, fit: BoxFit.cover),
                        const Spacer(),
                        "Mie Ayam Jumbo".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "Rp 25.000.00".text.color(redColor).fontFamily(bold).size(16).make(),
                        10.heightBox,
                        ],
                      ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();
                    })

                ],
              ),
            ),
          ),


        ],
      )),
    );
  }
}