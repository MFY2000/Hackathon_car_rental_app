import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage:
                Image.asset('assets/images/user.jpg', fit: BoxFit.contain)
                    .image,
            radius: 25,
          ),
        ),
      ],
    );
  }
}
