import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:bank_app0/theme/color.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../data_json/balance_json.dart';
import 'card.page.dart';

class DashbaordPage extends StatefulWidget {
  const DashbaordPage({Key? key}) : super(key: key);

  @override
  State<DashbaordPage> createState() => _DashbaordPageState();
}

class _DashbaordPageState extends State<DashbaordPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.primary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: MColors.primary,
      leading: IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundImage:
                NetworkImage("https://avatars.githubusercontent.com/Arimir727"),
          )),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(AntIcons.searchOutlined))
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.25,
          decoration: BoxDecoration(color: MColors.primary),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 110,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(balanceLists.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          width: size.width * 0.7,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      balanceLists[index]['currency'],
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: index == 0
                                              ? MColors.white
                                              : MColors.white.withOpacity(0.5),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    balanceLists[index]['amount'],
                                    style: TextStyle(
                                        fontSize: 35,
                                        color: index == 0
                                            ? MColors.white
                                            : MColors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                balanceLists[index]['description'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: MColors.white.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: MColors.secondary.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "Add money",
                              style: TextStyle(
                                  color: MColors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: MColors.secondary.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "Exchange",
                              style: TextStyle(
                                  color: MColors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: getAccountSection(),
            ),
          ),
        ),
      ],
    );
  }

  Widget getAccountSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 40, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Accounts",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: MColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: MColors.grey.withOpacity(0.1),
                  spreadRadius: 10,
                  blurRadius: 10,
                  // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: MColors.secondary.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Icon(
                                AntIcons.walletFilled,
                                color: MColors.primary,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "40832-810-5-7000-012345",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: MColors.primary,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Divider(
                      thickness: 0.2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: MColors.secondary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            CommunityMaterialIcons.currency_eur,
                            color: MColors.primary,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "18 199.24 EUR",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Divider(
                      thickness: 0.2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: MColors.secondary.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            CommunityMaterialIcons.currency_gbp,
                            color: MColors.primary,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "36.67 GBP",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cards",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 90,
                height: 22,
                decoration: BoxDecoration(
                    color: MColors.secondary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.add,
                      size: 16,
                      color: MColors.primary,
                    ),
                    Text(
                      "ADD CARD",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: MColors.primary),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CardPage()));
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: MColors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: MColors.grey.withOpacity(0.1),
                    spreadRadius: 10,
                    blurRadius: 10,
                    // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: MColors.secondary.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Icon(
                                  AntIcons.creditCardFilled,
                                  color: MColors.primary,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "EUR *2330",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "8 199.24 EUR",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:antdesign_icons/antdesign_icons.dart';
// import 'package:bank_app0/data_json/balance_json.dart';
// import 'package:bank_app0/theme/color.dart';
// import 'package:flutter/material.dart';

// class DashbaordPage extends StatefulWidget {
//   const DashbaordPage({super.key});

//   @override
//   State<DashbaordPage> createState() => _DashbaordPageState();
// }

// class _DashbaordPageState extends State<DashbaordPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: MColors.primary,
//       appBar:
//           PreferredSize(preferredSize: Size.fromHeight(60), child: getAppBar()),
//       body: getBody(),
//     );
//   }

//   Widget getAppBar() {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: MColors.primary,
//       leading: IconButton(
//           onPressed: () {},
//           icon: CircleAvatar(
//             backgroundImage: NetworkImage(
//               "https://avatars.githubusercontent.com/Arimir727",
//             ),
//           )),
//       actions: [
//         IconButton(onPressed: () {}, icon: Icon(AntIcons.searchOutlined))
//       ],
//     );
//   }

//   Widget getBody() {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           width: size.width,
//           height: size.height * 0.25,
//           decoration: BoxDecoration(color: MColors.primary),
//           child: Column(
//             children: [
//               SizedBox(
//                 width: size.width,
//                 height: 110,
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: List.generate(balanceLists.length, (index) {
//                       return Padding(
//                         padding: const EdgeInsets.only(right: 20),
//                         child: Container(
//                           width: size.width * 0.7,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     balanceLists[index]['currency'],
//                                     style: TextStyle(
//                                         fontSize: 17,
//                                         color: index == 0
//                                             ? MColors.white
//                                             : MColors.white.withOpacity(0.5),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     balanceLists[index]['amount'],
//                                     style: TextStyle(
//                                         fontSize: 35,
//                                         color: index == 0
//                                             ? MColors.white
//                                             : MColors.white.withOpacity(0.5),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 balanceLists[index]['description'],
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     color: index == 0
//                                         ? MColors.white
//                                         : MColors.white.withOpacity(0.5),
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                 ),
//               ),
//               Expanded(
//                   child: Container(
//                 width: size.width,
//                 child: Row(
//                   children: [
//                     SizedBox(width: 15),
//                     Flexible(
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                             color: MColors.secondary.withOpacity(0.3),
//                             borderRadius: BorderRadius.circular(12)),
//                         child: Center(
//                           child: Text(
//                             "Add Money",
//                             style: TextStyle(
//                                 color: MColors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 15),
//                     Flexible(
//                       child: Container(
//                         height: 50,
//                         decoration: BoxDecoration(
//                             color: MColors.secondary.withOpacity(0.3),
//                             borderRadius: BorderRadius.circular(12)),
//                         child: Center(
//                           child: Text(
//                             "Exchange",
//                             style: TextStyle(
//                                 color: MColors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ))
//             ],
//           ),
//         ),
//         Expanded(
//           child: SingleChildScrollView(
//             child: Container(
//               width: size.width,
//               decoration: BoxDecoration(
//                 color: MColors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(25),
//                   topRight: Radius.circular(25),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     top: 25, bottom: 40, left: 20, right: 20),
//                 child: getAccountSection(),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget getAccountSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Accounts",
//           style: TextStyle(
//             fontSize: 17,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         SizedBox(height: 15),
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: MColors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               BoxShadow(
//                   color: MColors.grey.withOpacity(0.1),
//                   spreadRadius: 10,
//                   blurRadius: 10),
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: 40,
//                       height: 40,
//                       decoration: BoxDecoration(
//                           color: MColors.secondary,
//                           borderRadius: BorderRadius.circular(12)),
//                       child: Center(
//                         child: Icon(AntIcons.walletFilled,
//                             color: MColors.primary, size: 20),
//                       ),
//                     ),
//                     SizedBox(width: 15),
//                     Text(
//                       "40832-810-5-700-012345",
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ],
//                 ),
//                 Icon(
//                   Icons.keyboard_arrow_down,
//                   color: MColors.primary,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         SizedBox(height: 5),
//         Padding(
//           padding: EdgeInsets.only(left: 50),
//           child: Divider(thickness: 0.2),
//         ),
//         SizedBox(height: 10),
//         Row(
//           children: [],
//         )
//       ],
//     );
//   }
// }
