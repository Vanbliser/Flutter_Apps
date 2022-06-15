import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String title2;
  const ListTileWidget({required this.title, required this.title2, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: ListTile(
        leading: SvgPicture.asset('assets/images/document.svg', height: 40),
        title: Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            )),
        subtitle: Text(title2),
        trailing: InkWell(
            onTap: () {}, child: const Icon(Icons.file_download_outlined)),
      ),
    );
  }
}
