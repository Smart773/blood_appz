import 'package:blood_app/res/components/blooddrop.dart';
import 'package:blood_app/utils/utils.dart';
import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
    required this.name,
    required this.location,
    required this.time,
    required this.bloodGroup,
    required this.onPress,
  });

  final String name;
  final String location;
  final String time;
  final String bloodGroup;
  final Null Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 115,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: CardData(
                  name: name,
                  location: location,
                  time: time,
                ),
              ),
              BloodDonate(
                bloodGroup: bloodGroup,
                onPress: onPress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BloodDonate extends StatelessWidget {
  const BloodDonate({
    super.key,
    required this.bloodGroup,
    required this.onPress,
  });

  final String bloodGroup;
  final Null Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BloodDrop(bloodGroup: bloodGroup),
        TextButton(
          onPressed: onPress,
          child: const Text(
            "Donate",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}

class CardData extends StatelessWidget {
  const CardData({
    super.key,
    required this.name,
    required this.location,
    required this.time,
  });

  final String name;
  final String location;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Name",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        Text(
          name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          "Location",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        Flexible(
          child: Text(
            location,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Utils.hSpace(),
        Text(
          time,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
