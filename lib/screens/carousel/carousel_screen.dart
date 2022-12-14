import 'package:flutter/material.dart';
import 'package:appufape/components/buttons/primary_button.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/screens/screens_index.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/app_number_constants.dart';
import 'package:appufape/shared/constants/style_constants.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({Key? key}) : super(key: key);

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: pageIndex);
    const double radius = 6;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding + 8),
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: pageController,
                    children: const [
                      FirstPage(),
                      SecondPage(),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: radius,
                    ),
                    HorizontalSpacerBox(size: SpacerSize.small),
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: radius,
                    ),
                  ],
                ),
              ],
            ),
            pageIndex >= 2
                ? const SizedBox.shrink()
                : Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (pageIndex >= 2) return;
                          pageIndex++;
                        });
                        pageController.animateToPage(pageIndex,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 200));
                      },
                      child: const Text(
                        'Pr??ximo',
                        style: kcaption1,
                      ),
                    ),
                  ),
            pageIndex <= 0
                ? const SizedBox.shrink()
                : Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          pageIndex--;
                        });
                        pageController.animateToPage(pageIndex,
                            curve: Curves.easeOut,
                            duration: const Duration(milliseconds: 200));
                      },
                      child: const Text(
                        'Anterior',
                        style: kcaption1,
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Maracuj?? (do tupi mara kuya, "fruto que se serve" ou "alimento na cuia") ?? um fruto produzido pelas plantas do g??nero Passiflora (essencialmente da esp??cie Passiflora edulis) da fam??lia Passifloraceae. A planta, tamb??m conhecida como maracujazeiro, ?? espont??nea nas zonas tropicais e subtropicais da Am??rica.',
      style: kTitle2,
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            'Maracuj?? (do tupi mara kuya, "fruto que se serve" ou "alimento na cuia") ?? um fruto produzido pelas plantas do g??nero Passiflora (essencialmente da esp??cie Passiflora edulis) da fam??lia Passifloraceae. A planta, tamb??m conhecida como maracujazeiro, ?? espont??nea nas zonas tropicais e subtropicais da Am??rica.',
            style: kTitle2),
        const Spacer(),
        PrimaryButton(
          text: 'Entendi',
          onPressed: () {
            Navigator.popAndPushNamed(context, Screens.home);
          },
          color: kTextButtonColor,
        )
      ],
    );
  }
}
