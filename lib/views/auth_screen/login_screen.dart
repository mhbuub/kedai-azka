import 'package:kedai/consts/consts.dart';
import 'package:kedai/consts/lists.dart';
import 'package:kedai/views/auth_screen/signup_screen.dart';
import 'package:kedai/views/home_screen/home.dart';
import 'package:kedai/views/widgets_common/applogo_widget.dart';
import 'package:kedai/views/widgets_common/bg_widget.dart';
import 'package:kedai/views/widgets_common/custom_textfield.dart';
import 'package:kedai/views/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            28.heightBox,

            Column(
              children: [
                customTextfield(hint:  emailHint, title: email),
                customTextfield(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                5.heightBox,
                ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){
                  Get.to(()=>const Home());
                })
                  .box
                  .width(context.screenWidth-50)
                  .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(color: lightGolden, title: signup, textColor: redColor, onPress: (){
                  Get.to(() => const SignupScreen());
                })
                  .box
                  .width(context.screenWidth-50)
                  .make(),

                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(socialIconList[index], width: 30,),
                      ),
                    )),
                  ),
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()
          ],
        ),
      ),
    ));
  }
}