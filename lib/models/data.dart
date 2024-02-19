import 'package:flutter/material.dart';
import 'package:appmotos/models/motos.dart';


final listCompany = ['HONDA', 'BMW', 'VENTO'];


final listMotos = [
  Motos(
    'CBR',
    'HONDA',
    '\$64,290-\$487,540',
    4,
    [
      ImageMotos(
        'img/CBR125R.jpg',
        Color.fromARGB(255, 247, 64, 64),
      ),
      ImageMotos(
        'img/CBR400.jpeg',
        const Color(0xff08B896),
      ),
      ImageMotos(
        'img/CBR600.jpg',
        Color.fromARGB(255, 61, 129, 255),
      ),
      ImageMotos(
        'img/CBR1000RR.jpg',
        Color.fromARGB(255, 253, 251, 114),
      ),
    ],
  ),
  Motos(
    'GS',
    'BMW',
    '\$141,600-\$480,200',
    4,
    [
      ImageMotos(
        'img/GS310.jpg',
        Color.fromARGB(255, 76, 182, 214),
      ),
      ImageMotos(
        'img/GS750.jpeg',
        Color.fromARGB(255, 123, 170, 189),
      ),
      ImageMotos(
        'img/GS1000.jpg',
        Color.fromARGB(255, 83, 61, 61),
      ),
      ImageMotos(
        'img/GS1250.jpg',
        Color.fromARGB(255, 65, 158, 212),
      ),
    ],
  ),
  Motos(
    'ROCKETMAN',
    'VENTO',
    '\$31,999-\$42,000',
    4,
    [
      ImageMotos(
        'img/RACING.jpg',
        Color.fromARGB(255, 175, 146, 91),
      ),
      ImageMotos(
        'img/SPORT.jpg',
        Color.fromARGB(255, 87, 86, 74),
      ),
      ImageMotos(
        'img/CARRERA.jpg',
        const Color(0xffB50D0D),
      ),
      ImageMotos(
        'img/SCREAMER.jpg',
        Color.fromARGB(255, 64, 230, 133),
      ),
    ],
  ),
  
];


