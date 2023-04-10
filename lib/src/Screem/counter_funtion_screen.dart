import 'package:flutter/material.dart';

class CounterFuntionScreem extends StatefulWidget {
  const CounterFuntionScreem({super.key});

  @override
  State<CounterFuntionScreem> createState() => _CounterFuntionScreemState();
}

class _CounterFuntionScreemState extends State<CounterFuntionScreem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Funtion'),
          /* leading: IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () => Navigator.pop(context),
        ),*/
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () => setState(() => count = 0),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              '$count',
              style:
                  const TextStyle(fontSize: 160.0, fontWeight: FontWeight.w100),
            )),
            Center(
                child: Text(
              'Click${count == 1 ? '' : 's'}',
              style: const TextStyle(
                  fontSize: 15.0, color: Color.fromARGB(255, 69, 81, 92)),
            )),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
         CustomButton(icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() => count = 0);
            },),
            const SizedBox(height: 10.0),
             CustomButton(icon: Icons.exposure_minus_1_outlined,
             onPressed: (){
              if(count==0) return;
               setState(() => count--);
             },),
            const SizedBox(height: 10.0),
             CustomButton(icon: Icons.plus_one_outlined,
             onPressed: (){
               setState(() => count++);
             },),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed; 
  const CustomButton({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      onPressed: onPressed,
      enableFeedback: true,
      elevation: 100.0,
      focusElevation: 5.0,
      hoverElevation: 5.0,
      highlightElevation: 1.0,
      focusColor: const Color.fromARGB(255, 188, 240, 35),
      hoverColor: const Color.fromARGB(255, 188, 240, 35),
      child: Icon(icon),
    );
  }
}
