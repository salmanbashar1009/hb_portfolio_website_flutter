import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> showProjectPreview(
    BuildContext context, String title, String imageUrl) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: ProjectPreviewSheet(
          imageUrl: imageUrl,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Text("Back"))
        ],
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
      if (mounted) {
        Future.delayed(const Duration(milliseconds: 500), () {
          _scrollPreview();
        });
      }else{
        const Center(
          child: CircularProgressIndicator()
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 500,
      child: SingleChildScrollView(
          controller: _scrollController, child: Image.network(widget.imageUrl)),
    );
  }
}
