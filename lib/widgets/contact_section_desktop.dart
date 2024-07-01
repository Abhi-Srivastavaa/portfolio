import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';

class ContactSectionDesktop extends StatelessWidget {
  const ContactSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        25,
        20,
        25,
        60,
      ),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get in touch",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    hintText: "Your name",
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: CustomTextField(
                    hintText: "your email",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Your name",
              maxLines: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Get in Touch",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: CustomColor.whitePrimary),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
