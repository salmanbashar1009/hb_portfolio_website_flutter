import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> showProjectPreview(
    BuildContext context, String title, String imageUrl) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation:0,
        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.black,
        titlePadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        title: Row(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.remove,
                  size: 20,
                  color: Colors.white,
                ))
          ],
        ),
        content: ProjectPreviewSheet(
          imageUrl: imageUrl,
        ),
      );
    },
  );
}

class ProjectPreviewSheet extends StatefulWidget {
  const ProjectPreviewSheet({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  State<ProjectPreviewSheet> createState() => _ProjectPreviewSheetState();
}

class _ProjectPreviewSheetState extends State<ProjectPreviewSheet> {
  final ScrollController _scrollController = ScrollController();

  void _scrollPreview() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 3),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1), () {
        _scrollPreview();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 425,
      child: SingleChildScrollView(
          controller: _scrollController, child: Image.network(widget.imageUrl)),
    );
  }
}
