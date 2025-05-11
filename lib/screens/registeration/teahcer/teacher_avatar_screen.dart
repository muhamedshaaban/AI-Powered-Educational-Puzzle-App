import 'package:flutter/material.dart';
import 'package:graduation_app/widgets/teacher_or_child/teacher_or_child_continue_button.dart';

import '../../../helper/helper.dart';
import 'teacher_approval_screen.dart';

class TeacherAvatarScreen extends StatefulWidget {
  const TeacherAvatarScreen({super.key});

  @override
  _TeacherAvatarScreenState createState() => _TeacherAvatarScreenState();
}

class _TeacherAvatarScreenState extends State<TeacherAvatarScreen> {
  final List<String> teacherAvatars = [
    'assets/images/teacher_avatar_1.png',
    'assets/images/teacher_avatar_2.png',
    'assets/images/teacher_avatar_3.png',
    'assets/images/teacher_avatar_4.png',
    'assets/images/teacher_avatar_5.png',
    'assets/images/teacher_avatar_6.png',
    'assets/images/teacher_avatar_7.png',
    'assets/images/teacher_avatar_8.png',
    'assets/images/teacher_avatar_9.png',
  ];

  OverlayEntry? _overlayEntry;
  String? _hoveredAvatar;
  bool _isOverlayVisible = false;

  // Function to show or update the zoomed avatar in the center
  void _showZoomedAvatar(String avatarPath) {
    if (_hoveredAvatar == avatarPath && _isOverlayVisible) {
      return; // Prevent re-creating the overlay if already visible
    }

    setState(() {
      _hoveredAvatar = avatarPath;
      _isOverlayVisible = true;
    });

    // Remove existing overlay if any
    _overlayEntry?.remove();

    _overlayEntry = OverlayEntry(
      builder: (context) => IgnorePointer(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.5), // Dim background
              ),
            ),
            Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: 200, // Zoomed size
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(avatarPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  // Function to remove the overlay
  void _removeOverlay() {
    if (_isOverlayVisible) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      setState(() {
        _hoveredAvatar = null;
        _isOverlayVisible = false;
      });
    }
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBFA7FF),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              'Choose avatar for you',
              style: TextStyle(
                fontSize: 24,
                fontFamily: fontFamily,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: teacherAvatars.length,
                itemBuilder: (context, index) {
                  final avatarPath = teacherAvatars[index];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MouseRegion(
                      onEnter: (_) {
                        _showZoomedAvatar(avatarPath);
                      },
                      onExit: (_) {
                        _removeOverlay();
                      },
                      child: AnimatedScale(
                        scale: _hoveredAvatar == avatarPath ? 1.2 : 1,
                        duration: Duration(milliseconds: 200),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: AssetImage(avatarPath),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TeacherOrStudentContinueButton(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TeacherApprovalScreen()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
