import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "Manage Account",
            style: theme.textTheme.headline6,
          ),
          leading: Icon(Icons.menu),
          backgroundColor: constants.whiteColor,
          expandedHeight: 100.0,
          floating: true,
          pinned: true,
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                'Edit',
                style: theme.textTheme.headline6!.copyWith(color: constants.linkColor),
              ),
            )
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/girl.jpeg'),
                  maxRadius: 45,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Luthando Wethu',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Bulawayo, ZW',
                  style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Method',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order History',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bookmarked Places',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invite Friends',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Settings',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Log Out',
                        style: theme.textTheme.bodyText1,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: constants.greyColor,
                        size: 18,
                      )
                    ],
                  ),
                  const Divider(
                    color: constants.greyColorFade,
                    thickness: 2.0,
                  )
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
