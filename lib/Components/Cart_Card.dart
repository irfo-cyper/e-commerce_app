// import 'package:flutter/material.dart';

// class CardCart extends StatefulWidget {
//   final VoidCallback? onTap;
// //  final
//   CardCart({required this.onTap});

//   @override
//   _CardCartState createState() => _CardCartState();
// }

// class _CardCartState extends State<CardCart> {
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       direction: DismissDirection.endToStart,
//       onDismissed: (direction) {
//         setState(() {
//           cartData.removeAt(e['index']);
//         });
//       },
//       key: Key(e['productName']),
//       child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 offset: Offset(0.0, 0.5),
//                 blurRadius: 1.0,
//               ),
//             ],
//           ),
//           height: 117,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                   width: 130,
//                   height: 100,
//                   padding: EdgeInsets.only(left: 10),
//                   child: Image.asset(
//                     e['productImage'],
//                     fit: BoxFit.cover,
//                   )),
//               Container(
//                 width: 170,
//                 height: 90,
//                 // alignment:
//                 // AlignmentDirectional.centerEnd,
//                 margin: EdgeInsets.only(right: 0, top: 5, left: 15),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       e['productName'],
//                       style: TextStyle(
//                           fontFamily: 'SF Pro Text',
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: -0.15),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       e['productDiscountPrice'] == '0'
//                           ? '\$${e['productPrice']}'
//                           : '\$${e['productDiscountPrice']}',
//                       // "\$ ${e['productPrice']}",
//                       style: TextStyle(
//                           fontFamily: 'SF Pro Text',
//                           fontSize: 17,
//                           fontWeight: FontWeight.w700,
//                           letterSpacing: -0.41),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: 40,
//               ),
//               Container(
//                 margin: EdgeInsets.only(right: 0, top: 15),
//                 child: Column(
//                   children: [
//                     InkWell(
//                       onTap: onTap,
//                       child: Icon(Icons.add_circle_outline_outlined,
//                           size: 24, color: Color(0xFF9B9B9B)),
//                     ),
//                     SizedBox(
//                       height: 11,
//                     ),
//                     Text(
//                       '$_counter',
//                       style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: -0.15),
//                     ),
//                     SizedBox(
//                       height: 11,
//                     ),
//                     InkWell(
//                       onTap: onTap,
//                       child: Icon(Icons.do_disturb_on_outlined,
//                           color: Color(0xFF9B9B9B)),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           )),
//       background: Container(
//         child: Icon(
//           Icons.delete_outline_outlined,
//           color: Colors.red,
//           size: 32,
//         ),
//         color: Color(0xFFFAFAFA),
//         alignment: AlignmentDirectional.centerEnd,
//       ),
//     );
//   }
// }
