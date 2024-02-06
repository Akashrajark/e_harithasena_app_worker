import 'package:e_harithasena_worker/ui/values/color.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Function() onTap;
  final String image, label;
  final bool abc;
  const CustomCard({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
    this.abc = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(abc ? 8 : 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(abc ? 8 : 0),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                image,
                height: 220,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: primaryColor.withOpacity(0.8)),
                      child: Text(
                        label,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ),
                
                
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}