import 'package:flutter/material.dart';

class MessageFieldChat extends StatelessWidget {
  const MessageFieldChat({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;

    final outlineInputBorder= UnderlineInputBorder(
       borderSide: const BorderSide(color: Colors.transparent), //este le da el color a todo el borde
        borderRadius: BorderRadius.circular(40)//este le da lo circular a los bordes
    );

    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder, //este es para los bordes
        focusedBorder: outlineInputBorder, //y este para como se ve mientras no lo toquen o si lo tocan
        filled: true,
        suffixIcon: IconButton(//este es el icono de enviar hasta la derecha por defecto
          onPressed: () {}, 
         icon: Icon(Icons.send_outlined)
        ),
      ),
      onFieldSubmitted: (value) {
        print('submitted $value'); //este es el valor o info despues de un enter
      },
      onChanged: (value) {
        print('$value'); //esto es cada letra que va metiendo el usuario
      },
    );
  }
}