import 'package:desktop_app/cubit/app_cubit.dart';
import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart';

class TreeViewScreen extends StatelessWidget {
  const TreeViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppCubit.get(context).isDark ? Colors.black : Colors.red,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  FluentIcons.back,
                  size: 25,
                ),
              ),
              TreeView(
                items: [
                  TreeViewItem(
                    expanded: false,
                    content: const Text(
                      "Root",
                      style: TextStyle(fontSize: 23),
                    ),
                    children: [
                      TreeViewItem(
                        expanded: false,
                        content: const Text(
                          "Main 1",
                          style: const TextStyle(fontSize: 20),
                        ),
                        children: [
                          TreeViewItem(
                            expanded: false,
                            content: const Text(
                              "Section 1.1",
                              style: const TextStyle(fontSize: 17),
                            ),
                            children: [
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 1.1.1",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 1.1.2",
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          TreeViewItem(
                            expanded: false,
                            content: const Text(
                              "Section 1.2",
                              style: const TextStyle(fontSize: 17),
                            ),
                            children: [
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 1.2.1",
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 1.2.2",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TreeViewItem(
                        expanded: false,
                        content: const Text(
                          "Main 2",
                          style: TextStyle(fontSize: 20),
                        ),
                        children: [
                          TreeViewItem(
                            expanded: false,
                            content: const Text(
                              "Section 2.1",
                              style: const TextStyle(fontSize: 17),
                            ),
                            children: [
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 2.1.1",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 2.1.2",
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          TreeViewItem(
                            expanded: false,
                            content: const Text(
                              "Section 2.2",
                              style: const TextStyle(fontSize: 17),
                            ),
                            children: [
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 2.2.1",
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                              TreeViewItem(
                                content: const Text(
                                  "SubSection 2.2.2",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
