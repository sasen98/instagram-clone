import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add_post_screen.dart';

import '../screens/feeds_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';

const webScreenSize = 900;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
