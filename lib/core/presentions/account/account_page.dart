import 'package:flutter/material.dart';
import 'package:shop_apps/gen/assets.gen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Image.asset(
                        Assets.images.banner.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Omrna Alhlof\n',
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                fontSizeDelta: 2,
                                fontWeightDelta: 10,
                                color: Colors.teal,
                              ),
                        ),
                        TextSpan(
                          text: 'omar.alkhlof@gmail.com',
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                                fontSizeDelta: 1,
                                fontWeightDelta: 10,
                                color: Colors.grey.shade500,
                              ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 390,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: ItemAccount.list.length,
                  itemBuilder: (context, index) {
                    final acount = ItemAccount.list;
                    return _listAccount(acount[index], context);
                  },
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              //const SizedBox(height: 20),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  border: Border.all(
                    color: Colors.black45,
                    width: 1,
                  ),
                ),
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    const Icon(Icons.exit_to_app),
                    const SizedBox(width: 20),
                    Text(
                      'Omran',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            fontSizeDelta: 25,
                            fontWeightDelta: 2,
                          ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listAccount(account, context) => Container(
        height: 50,
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            account.iconData,
            Text(
              account.title!,
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    fontSizeDelta: 10,
                    fontWeightDelta: 2,
                    color: Colors.teal,
                  ),
            ),
            account.iconData1,
          ],
        ),
      );
}

class ItemAccount {
  final Icon iconData;
  final String? title;
  final Icon iconData1;

  ItemAccount({
    required this.iconData,
    required this.title,
    required this.iconData1,
  });

  static List<ItemAccount> list = [
    ItemAccount(
      iconData: const Icon(Icons.store_mall_directory),
      title: 'app',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.account_balance),
      title: 'My Detalis',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.location_on),
      title: 'Delivery Address',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.notifications),
      title: 'Notifecations ',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.help),
      title: 'Hellp ',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.info),
      title: 'About ',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.info),
      title: 'About ',
      iconData1: const Icon(Icons.forward_rounded),
    ),
    ItemAccount(
      iconData: const Icon(Icons.info),
      title: 'About ',
      iconData1: const Icon(Icons.forward_rounded),
    ),
  ];
}
