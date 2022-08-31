import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Icon? icon;

  const CustomAppBar({
    Key? key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(500, 40),
            bottomRight: Radius.elliptical(500, 40),
          ),
        ),
        child: AppBar(
          flexibleSpace: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: icon ?? Container(),
                  ),
                  Text(
                    title ?? "",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 240, 240, 240),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.red,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          automaticallyImplyLeading: false,
          centerTitle: true,
          shadowColor: Color.fromARGB(0, 255, 255, 255),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(87);
}
