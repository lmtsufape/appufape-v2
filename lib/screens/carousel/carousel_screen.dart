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
                        'Próximo',
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
      'Maracujá (do tupi mara kuya, "fruto que se serve" ou "alimento na cuia") é um fruto produzido pelas plantas do género Passiflora (essencialmente da espécie Passiflora edulis) da família Passifloraceae. A planta, também conhecida como maracujazeiro, é espontânea nas zonas tropicais e subtropicais da América.',
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
            'Maracujá (do tupi mara kuya, "fruto que se serve" ou "alimento na cuia") é um fruto produzido pelas plantas do género Passiflora (essencialmente da espécie Passiflora edulis) da família Passifloraceae. A planta, também conhecida como maracujazeiro, é espontânea nas zonas tropicais e subtropicais da América.',
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
