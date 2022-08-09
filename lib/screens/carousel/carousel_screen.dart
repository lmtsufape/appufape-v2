import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:thunderapp/components/buttons/primary_button.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/carousel/components/role_choice_button.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

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
      appBar: AppBar(
        title: const Text('LOGO'),
        centerTitle: true,
      ),
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
                    children: [
                      const FirstPage(),
                      const SecondPage(),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: kOnSurfaceColor,
                      radius: radius,
                    ),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    CircleAvatar(
                      backgroundColor: kOnSurfaceColor,
                      radius: radius,
                    ),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    CircleAvatar(
                      backgroundColor: kOnSurfaceColor,
                      radius: radius,
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (pageIndex >= 1) return;
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
      style: kBody1,
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
          'Para que as Informações sejam do seu interesse, selecione o tipo de perfil',
          style: kBody1,
        ),
        const VerticalSpacerBox(size: SpacerSize.medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RoleChoiceButton(text: 'Discente'),
            const HorizontalSpacerBox(size: SpacerSize.small),
            RoleChoiceButton(
              text: 'Docente',
            )
          ],
        )
      ],
    );
  }
}
