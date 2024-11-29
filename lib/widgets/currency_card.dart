import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? _blackColor : Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.6),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.6,
              child: Transform.translate(
                offset: const Offset(-8, 15),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
