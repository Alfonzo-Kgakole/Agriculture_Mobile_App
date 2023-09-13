import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class productCard extends StatelessWidget {
  const productCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.1,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        side: BorderSide(color: Colors.grey.shade400, width: 0.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/tractor.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: IconButton.filledTonal(
                  padding: EdgeInsets.zero,
                  iconSize: 18,
                  onPressed: () {},
                  icon: const Icon(IconlyLight.bookmark)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("tractor" , style: Theme.of(context).textTheme.bodyLarge,),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "\$35", style: Theme.of(context).textTheme.bodyLarge),
                          TextSpan(text: "/year", style: Theme.of(context).textTheme.bodySmall),
                        ]
                      )
                    ),
                    Container(
                      height: 26,
                      width: 26,
                      padding: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.add)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
