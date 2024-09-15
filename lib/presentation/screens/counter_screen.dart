import 'package:flutter/material.dart'; //importM + tab para que ponga esta de una sin escribirla

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("My counter Functions"),
        actions: [
          IconButton(
            onPressed:(){
              setState((){
                clickCounter=0;
              });
            },
            icon:const Icon(Icons.refresh_rounded)
          ),
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,//este sirve para centrar bien en el centro de la columna
          children: [
            Text("$clickCounter", style:const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text("Click${clickCounter== 1 ? "" : "s"}", style: const TextStyle(fontSize: 25))
          ],
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.exposure_minus_1_outlined, 
            onPressed: (){
              if(clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
          ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: (){
              clickCounter++;
              setState(() {});
            },
          ),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(), //con este hago que el boton sea circular
      onPressed: onPressed,
      child: Icon( icon ),
    );
  }
}