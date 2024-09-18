import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors= Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Hola mundo", 
            style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        //pondremos una imagen
        _ImageBubble(),
        SizedBox(height: 10,)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;  //este es para obtener los tamaños del dispositivo de manera facil

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network('https://i.pinimg.com/originals/57/61/5b/57615b8c0092a66c1d4058b1692955cc.gif',
      width: size.width * 0.7,
      loadingBuilder: (context, child, loadingProgress){ //este es un widget para mostrar un mensaje mientras carga el contenido real que es la imagen
          if(loadingProgress == null ) return child; //si ya esta cargada retorna el hijo que es la imagen

          return Container(
            width: size.width * 0.7,
            child: const Text("Mi amor esta enviando un mensaje")
          );
        },
      )
    );
  }
}