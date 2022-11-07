import 'package:coctails_newyear/helpers/colors.dart';
import 'package:flutter/material.dart';

class Coctail extends StatefulWidget {
  const Coctail({super.key});

  @override
  State<Coctail> createState() => _CoctailState();
}

class _CoctailState extends State<Coctail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 218, 162, 181),
        body: Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              // padding: const EdgeInsetsDirectional.only(top: 30),
              // alignment: Alignment.topCenter,
              children: [
                Text("Наколдуй себе настроение! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blueBackground,
                        // fontFamily: "Exo2",
                        fontFamily: "Pacifico",
                        fontSize: 40,
                        fontWeight: FontWeight.normal)),
                Center(
                    child: Image(
                  image: AssetImage("assets/images/party.png"),
                )),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(blueBackground),
                      shadowColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 218, 162, 181)),
                    ),
                    onPressed: () {
                      // функция
                      Navigator.pushNamed(context, '/recipe');
                    },
                    child: const Text(
                      'Смешай свой коктейль!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Exo2",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    )
                    // style: Theme.of(context).textTheme.bodyText2),
                    ),
              ]),
        ),
      ),
    );
  }
}
// функиция
// int_randomCoctail() {
//   var coctailList = [1, 2, 3];   - список коктейлей по id

//   return (list..shuffle()).first;
// }
