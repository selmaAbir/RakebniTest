import 'package:voiture/screens/widgets/title_text.dart';
import 'package:flutter/material.dart';

class CarDescription extends StatelessWidget {
  const CarDescription({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
     var size= MediaQuery.of(context).size;

    return SizedBox(
      //to expand the ecriture between borders of the phone 
      width: size.width *0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const TitleText(),
             const SizedBox(
              height: 32,
              ),
             Text(
              "Get experience ridding your dream car, we sell set up the car ,you just need to book and go rock ",
             style: Theme.of(context)
             .textTheme.titleMedium!
             //change color of the above text 
             .copyWith(color: Colors.white,
              letterSpacing: 1.2,
              //height between each line of the ecriture above 
              height: 1.1),
            )
          ],
                        ),
                       );
  }
}