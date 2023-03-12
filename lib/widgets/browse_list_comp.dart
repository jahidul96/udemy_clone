import 'package:flutter/material.dart';
import 'package:udemy_clone/data/browse_categorie.dart';

class BrowseListComp extends StatelessWidget {
  Function()? onTap;
  BrowseListComp({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 10, top: 0),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: browseCategorie.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: onTap,
          leading: Icon(browseCategorie[index].icon),
          title: Text(
            browseCategorie[index].name,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}
