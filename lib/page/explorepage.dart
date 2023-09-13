import 'package:agriculturemobileapp/widget/productCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class explorePage extends StatelessWidget {
  const explorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            //filter and search text field
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search here...",
                        contentPadding: const EdgeInsets.all(12),
                        prefixIcon: const Icon(IconlyLight.search),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(99)))),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton.filled(
                        onPressed: () {}, icon: const Icon(IconlyBold.filter)),
                  )
                ],
              ),
            ),

            //card section
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                height: 170,
                child: Card(
                  color: Colors.green.shade50,
                  elevation: 0.1,
                  shadowColor: Colors.green.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      //text
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Free Consultation",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.green.shade700),
                              ),
                              Text(
                                "Free support from our customer service",
                              ),
                              FilledButton(
                                  onPressed: () {}, child: Text("Call Now"))
                            ],
                          ),
                        ),
                        Image.asset(
                          "lib/assets/contact_us.png",
                          width: 140,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //featured product text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "featured Product",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text("See All",
                        style: Theme.of(context).textTheme.titleMedium))
              ],
            ),

            //featured products
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.9),
                itemBuilder: (context, index) {
                  return const productCard();
                })
          ],
        ));
  }
}
