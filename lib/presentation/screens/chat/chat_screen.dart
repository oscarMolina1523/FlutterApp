import 'package:flutter/material.dart';
import 'package:invoicesapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:invoicesapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:invoicesapp/presentation/widgets/shared/message_field_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://image.tmdb.org/t/p/original/pyXKYW9NhPs7jemBir9Rfz48oUt.jpg'),
          ),
        ),
        title:const Text("Mi Amor"),
        // centerTitle: true,
      ),
      body:_chatView()
    );
  }
}

class _chatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea( //este widget hace que haya un espacio de abajo y el ultimo widget para no entorpecer el funcionamiento
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 100,itemBuilder: (context, index){
                return  (index % 2 ==0) ? HerMessageBubble(): MyMessageBubble();
              })
            ), 
            const MessageFieldChat()
          ],
        ),
      ),
    );
  }
}