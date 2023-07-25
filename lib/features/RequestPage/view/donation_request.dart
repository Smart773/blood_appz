import 'package:blood_app/res/components/request_card.dart';
import 'package:flutter/material.dart';

class DonationRequest extends StatelessWidget {
  const DonationRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Donation Request",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return RequestCard(
              name: "Usama Waseem ",
              location: "Lahore Cantt ",
              time: " 2 hours ago",
              bloodGroup: "O+",
              onPress: () {},
            );
          },
        ),
      ),
    );
  }
}
