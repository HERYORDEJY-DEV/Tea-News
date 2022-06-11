// import 'package:flutter/material.dart';
//
// /// id : ""
// /// title : ""
// /// icon : ""
// /// activeIcon : ""
// /// showBadge : ""
// /// badgeColor : ""
// /// backgroundColor : ""
// /// badge : ""
//
// class BottomBarList {
//   BottomBarList({
//     String id,
//     String title,
//     Icon icon,
//     Icon activeIcon,
//     bool showBadge,
//     String? badgeColor,
//     Color backgroundColor,
//     String? badge,
//   }) {
//     _id = id;
//     _title = title;
//     _icon = icon;
//     _activeIcon = activeIcon;
//     _showBadge = showBadge;
//     _badgeColor = badgeColor;
//     _backgroundColor = backgroundColor;
//     _badge = badge;
//   }
//
//   BottomBarList.fromJson(dynamic json) {
//     _id = json['id'];
//     _title = json['title'];
//     _icon = json['icon'];
//     _activeIcon = json['activeIcon'];
//     _showBadge = json['showBadge'];
//     _badgeColor = json['badgeColor'];
//     _backgroundColor = json['backgroundColor'];
//     _badge = json['badge'];
//   }
//   String _id;
//   String _title;
//   String _icon;
//   String _activeIcon;
//   String _showBadge;
//   String _badgeColor;
//   String _backgroundColor;
//   String _badge;
//   BottomBarList copyWith({
//     String id,
//     String title,
//     String icon,
//     String activeIcon,
//     String showBadge,
//     String badgeColor,
//     String backgroundColor,
//     String badge,
//   }) =>
//       BottomBarList(
//         id: id ?? _id,
//         title: title ?? _title,
//         icon: icon ?? _icon,
//         activeIcon: activeIcon ?? _activeIcon,
//         showBadge: showBadge ?? _showBadge,
//         badgeColor: badgeColor ?? _badgeColor,
//         backgroundColor: backgroundColor ?? _backgroundColor,
//         badge: badge ?? _badge,
//       );
//   String get id => _id;
//   String get title => _title;
//   String get icon => _icon;
//   String get activeIcon => _activeIcon;
//   String get showBadge => _showBadge;
//   String get badgeColor => _badgeColor;
//   String get backgroundColor => _backgroundColor;
//   String get badge => _badge;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = _id;
//     map['title'] = _title;
//     map['icon'] = _icon;
//     map['activeIcon'] = _activeIcon;
//     map['showBadge'] = _showBadge;
//     map['badgeColor'] = _badgeColor;
//     map['backgroundColor'] = _backgroundColor;
//     map['badge'] = _badge;
//     return map;
//   }
// }
//
// List bottomBarList = <BottomBarList>[
//   {
//      id : "1",
//      title : "Home",
//      icon : Icon(Icons.home, color: Colors.black,),
//      activeIcon : Icon(Icons.home_outline, color: Colors.white,),
//      showBadge : false
//      badgeColor : ""
//      backgroundColor : ""
//      badge : ""
//   },
//
// ]
