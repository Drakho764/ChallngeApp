import 'package:flutter/material.dart';
import 'package:appmotos/models/motos.dart';
import 'package:appmotos/widgets/widger_transition.dart';
import 'package:appmotos/widgets/widget_button.dart';

class DetailsMotos extends StatefulWidget {
  //Constructor
  const DetailsMotos({Key? key, required this.motos}) : super(key: key);

  final Motos motos;

  @override
  State<DetailsMotos> createState() => _DetailsMotosState();
}

class _DetailsMotosState extends State<DetailsMotos> {
  int valueIndexColor = 0;
  int valueIndexSize = 1;

  double sizemotos(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.09);
      case 1:
        return (size.height * 0.07);
      case 2:
        return (size.height * 0.05);
      case 3:
        return (size.height * 0.04);
      default:
        return (size.height * 0.05);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -size.height * 0.15,
              right: -size.height * 0.20,
              child: TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 250),
                  tween: Tween(begin: 0, end: 1),
                  builder: (context, value, __) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      height: value * (size.height * 0.4),
                      width: value * (size.height * 0.4),
                      decoration: BoxDecoration(
                        color: widget.motos.listImage[valueIndexColor].color,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
            ),
            Positioned(
              top: kToolbarHeight,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {Navigator.pop(context);}, 
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                    
                    
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.motorcycle),
                      ),
                       IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.star),
                      ),
                       IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.traffic),
                      )
                    ],
                  )
                ],
              ),
            ),

            ///Inicia nombre de la categoria
            Positioned(
              top: size.height * 0.4,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: FittedBox(
                  child: Text(
                    widget.motos.category,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 99, 99, 0.298),
                    ),
                  ),
                ),
              ),
            ),

            ///Fin nombre de la categoria
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              top: size.height * 0.22,
              right: sizemotos(valueIndexSize, size),
              left: sizemotos(valueIndexSize, size),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(110),
                  child: Hero(
                    tag: widget.motos.name,
                    child: Image(
                      image: AssetImage(
                        widget.motos.listImage[valueIndexColor].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            ///Inicia juegos y tamaño
            Positioned(
              top: size.height * 0.6,
              left: 16,
              right: 16,
              child: Column(
                children: [
                  //Inica datos generales
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: WidgetTransition(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.motos.category,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.motos.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      WidgetTransition(
                        left: false,
                        child: Text(
                          widget.motos.price,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Fin datos generales

                  ///Inicia catalogo de juegos
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetTransition(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Variantes',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: List.generate(
                                widget.motos.listImage.length,
                                (index) => GestureDetector(
                                  onTap: () {
                                    valueIndexColor = index;
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color:
                                          widget.motos.listImage[index].color,
                                      border: index == valueIndexColor
                                          ? Border.all(
                                              color: const Color.fromARGB(
                                                  255, 240, 246, 128),
                                              width: 2)
                                          : null,
                                    ),

                                    child: Image(
                                      image: AssetImage(
                                          widget.motos.listImage[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      WidgetTransition(
                        left: false,
                        child: WidgetButton(
                          onTap: () {},
                          width: 50,
                          color: widget.motos.listImage[valueIndexColor].color,
                          borderRadius: BorderRadius.circular(9.0),
                          child: const Icon(
                            Icons.share,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),

                  ///Fin catalogo de juegos

                  ///Inicia Catalogo de tamaños
                  const SizedBox(height: 4),
                  WidgetTransition(
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: widget.motos.punctuation > index
                                  ? widget
                                      .motos.listImage[valueIndexColor].color
                                  : Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Zoom',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: WidgetButton(
                                onTap: () {
                                  valueIndexSize = index;
                                  setState(() {});
                                },
                                color: index == valueIndexSize
                                    ? widget
                                        .motos.listImage[valueIndexColor].color
                                    : const Color.fromARGB(255, 194, 190, 190),
                                child: Text(
                                  '${index + 7}+',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: index == valueIndexSize
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///Fin Catalogo de tamaños
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
