import 'package:flutter/material.dart';
import 'package:invoicesapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController= ScrollController();

  List<Message> messageList =[
    Message(text: "Hola mi amor!", fromWho: FromWho.me),
    Message(text: "Como amaneciste!", fromWho: FromWho.me),
    Message(text: "Como cafe!", fromWho: FromWho.hers)
  ];

  Future<void> sendMessage(String text) async {
    if(text.isEmpty) return; //aca evitamos que se envien textos vacios
    final Message newMessage= Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();  //este lo que hace es que al haber un cambio notifica a todos
    moveScrollToBottom(); //aca mando a llamar la animacion luego de qe se agregue un nuevo menjsa
  }

  void moveScrollToBottom(){

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, //esta es la posicion a la que estara es decir hasta abajo
      duration: const Duration(milliseconds: 300), //este el tiempo de duracion
      curve: Curves.easeOut //y esta es la animacion
    );
  }

}