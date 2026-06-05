import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/assets.dart';
import '../constants/colors.dart';
import '../utils/responsive_size.dart';
import '../widgets/membership_card.dart';
import '../widgets/stat_card.dart';
import 'membership_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64.h(context)),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: AppBar(
              backgroundColor: AppColors.surface.withOpacity(0.8),
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppColors.primary,
                  size: 24.sp(context),
                ),
                onPressed: () {},
              ),
              title: Text(
                'KINETIC',
                style: GoogleFonts.montserrat(
                  fontSize: 24.sp(context),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  letterSpacing: -1,
                  color: AppColors.primary,
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20.0.w(context)),
                  child: Center(
                    child: Container(
                      width: 40.w(context),
                      height: 40.w(context),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.primary.withOpacity(0.2),
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(AppAssets.profileImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      AppAssets.heroImageHome,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, AppColors.background],
                          stops: [0.1, 1.0],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 48.h(context),
                    left: 20.w(context),
                    right: 20.w(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TRANSFORM',
                          style: GoogleFonts.montserrat(
                            fontSize: 46.sp(context),
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          'YOUR BODY',
                          style: GoogleFonts.montserrat(
                            fontSize: 48.sp(context),
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: AppColors.primary,
                            height: 1.1,
                            shadows: [
                              Shadow(
                                color: AppColors.primary.withOpacity(0.4),
                                blurRadius: 15.w(context),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h(context)),
                        Text(
                          'Unlock your peak potential with state-of-the-art equipment, world-class trainers, and a community driven by performance.',
                          style: GoogleFonts.inter(
                            fontSize: 18.sp(context),
                            color: AppColors.textGrey,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 32.h(context)),
                        Wrap(
                          spacing: 16.w(context),
                          runSpacing: 16.h(context),
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryDark,
                                foregroundColor: const Color(0xFF102000),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.w(context),
                                  vertical: 14.h(context),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    12.w(context),
                                  ),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'GET STARTED',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp(context),
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.4,
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: BorderSide(
                                  color: AppColors.primaryDark,
                                  width: 2.w(context),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.w(context),
                                  vertical: 14.h(context),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    12.w(context),
                                  ),
                                ),
                              ),
                              child: Text(
                                'VIEW TOUR',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp(context),
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Membership Plans Section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0.w(context),
                vertical: 30.0.h(context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      bool isMobile = constraints.maxWidth < 600;
                      return Flex(
                        direction: isMobile ? Axis.vertical : Axis.horizontal,
                        crossAxisAlignment: isMobile
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        children: [
                          if (isMobile)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MEMBERSHIP PLANS',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 28.sp(context),
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h(context)),
                                Text(
                                  'Choose the level of performance that fits your lifestyle.',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp(context),
                                    color: AppColors.textGrey,
                                  ),
                                ),
                              ],
                            ),
                          if (!isMobile)
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MEMBERSHIP PLANS',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 28.sp(context),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h(context)),
                                  Text(
                                    'Choose the level of performance that fits your lifestyle.',
                                    style: GoogleFonts.inter(
                                      fontSize: 16.sp(context),
                                      color: AppColors.textGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(
                            height: isMobile ? 24.h(context) : 0,
                            width: isMobile ? 0 : 16.w(context),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.w(context)),
                            decoration: BoxDecoration(
                              color: AppColors.surface,
                              borderRadius: BorderRadius.circular(
                                30.w(context),
                              ),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.05),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w(context),
                                    vertical: 8.h(context),
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryDark,
                                    borderRadius: BorderRadius.circular(
                                      30.w(context),
                                    ),
                                  ),
                                  child: Text(
                                    'Monthly',
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp(context),
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF304F00),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w(context),
                                    vertical: 8.h(context),
                                  ),
                                  child: Text(
                                    'Yearly (Save 20%)',
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp(context),
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 48.h(context)),

                  // Plans Grid
                  LayoutBuilder(
                    builder: (context, constraints) {
                      bool isDesktop = constraints.maxWidth > 800;
                      if (isDesktop) {
                        return Row(
                          children: [
                            Expanded(
                              child: MembershipCard(
                                title: 'Basic',
                                price: '\$49',
                                description:
                                    'Perfect for those starting their fitness journey with premium equipment access.',
                                features: const [
                                  'All Gym Locations',
                                  'Locker Room Access',
                                  '2 Guest Passes /mo',
                                ],
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MembershipDetailsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 16.w(context)),
                            Expanded(
                              child: MembershipCard(
                                title: 'Pro',
                                price: '\$89',
                                description:
                                    'Advanced features for enthusiasts who want to track every beat and rep.',
                                isRecommended: true,
                                features: const [
                                  'Everything in Basic',
                                  'Unlimited Group Classes',
                                  'Personalized Workout Plans',
                                  'Sauna & Recovery Zone',
                                ],
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MembershipDetailsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 16.w(context)),
                            Expanded(
                              child: MembershipCard(
                                title: 'Elite',
                                price: '\$149',
                                description:
                                    'The ultimate luxury fitness experience with private coaching and nutrition.',
                                features: const [
                                  'Everything in Pro',
                                  '4 Personal Training Sessions',
                                  'Nutritional Consulting',
                                  'Private Locker & Laundry',
                                ],
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MembershipDetailsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                      return Column(
                        children: [
                          MembershipCard(
                            title: 'Basic',
                            price: '\$49',
                            description:
                                'Perfect for those starting their fitness journey with premium equipment access.',
                            features: const [
                              'All Gym Locations',
                              'Locker Room Access',
                              '2 Guest Passes /mo',
                            ],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MembershipDetailsScreen(),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 16.h(context)),
                          MembershipCard(
                            title: 'Pro',
                            price: '\$89',
                            description:
                                'Advanced features for enthusiasts who want to track every beat and rep.',
                            isRecommended: true,
                            features: const [
                              'Everything in Basic',
                              'Unlimited Group Classes',
                              'Personalized Workout Plans',
                              'Sauna & Recovery Zone',
                            ],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MembershipDetailsScreen(),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 16.h(context)),
                          MembershipCard(
                            title: 'Elite',
                            price: '\$149',
                            description:
                                'The ultimate luxury fitness experience with private coaching and nutrition.',
                            features: const [
                              'Everything in Pro',
                              '4 Personal Training Sessions',
                              'Nutritional Consulting',
                              'Private Locker & Laundry',
                            ],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MembershipDetailsScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: 15.h(context)),

                  // Stats Grid
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return GridView.count(
                        crossAxisCount: constraints.maxWidth > 500 ? 4 : 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 15.h(context),
                        crossAxisSpacing: 15.w(context),
                        childAspectRatio: 1.5,
                        children: const [
                          StatCard(value: '24/7', label: 'Access'),
                          StatCard(value: '50+', label: 'Classes'),
                          StatCard(value: '15', label: 'Locations'),
                          StatCard(value: '1:1', label: 'Coaching'),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            // Bottom padding for nav bar
            SizedBox(height: 80.h(context)),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.surface.withOpacity(0.9),
          border: Border(top: BorderSide(color: Colors.white.withOpacity(0.1))),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 24.w(context),
              offset: Offset(0, -4.h(context)),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0.h(context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(context, Icons.home, 'Home', true),
                _buildNavItem(context, Icons.card_membership, 'Plans', false),
                _buildNavItem(context, Icons.fitness_center, 'Workouts', false),
                _buildNavItem(context, Icons.person, 'Profile', false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    IconData icon,
    String label,
    bool isActive,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 24.sp(context),
          color: isActive
              ? AppColors.primary
              : AppColors.textGrey.withOpacity(0.5),
        ),
        SizedBox(height: 4.h(context)),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12.sp(context),
            fontWeight: FontWeight.w500,
            color: isActive
                ? AppColors.primary
                : AppColors.textGrey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
