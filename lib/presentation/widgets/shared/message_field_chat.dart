import 'package:flutter/material.dart';

class MessageFieldChat extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldChat({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final colors=Theme.of(context).colorScheme;
    final focusNode = FocusNode(); //este servira para mantener el foco y que no se cierre luego de enviar el text
    final textController= TextEditingController();

    final outlineInputBorder= UnderlineInputBorder(
       borderSide: const BorderSide(color: Colors.transparent), //este le da el color a todo el borde
        borderRadius: BorderRadius.circular(40)//este le da lo circular a los bordes
    );

    return TextFormField(
      focusNode: focusNode,
      controller: textController,

      onTapOutside: (event){ //este es el tipo de tocar afuera
        focusNode.unfocus(); //aca lo que estoy haciendo es que si tocan afuera se desenfoqe
      },
      decoration: InputDecoration(
        hintText: 'Enter your message',
        enabledBorder: outlineInputBorder, //este es para los bordes
        focusedBorder: outlineInputBorder, //y este para como se ve mientras no lo toquen o si lo tocan
        filled: true,
        suffixIcon: IconButton(//este es el icono de enviar hasta la derecha por defecto
          onPressed: () {
            final textValue = textController.value.text; //aca esta obteniendo el valor del texto que se le metio en el input de abajo, solo con la referencia, sin necesidad de declarar aqui
            onValue(textValue); //este le esta pasando el valor obtenido despues del click en icono enviar
            textController.clear(); //aca lo volvemos a limpiar para eliminar el valor que trae
            // focusNode.requestFocus(); //con solo esto evitamos qye se cierre el teclado 
          }, 
         icon: Icon(Icons.send_outlined)
        ),
      ),
      onFieldSubmitted: (value) {
        onValue(value); //este es el valor o info despues de un enter enviandoselo desde el input
        textController.clear();
      },
    );
  }
}