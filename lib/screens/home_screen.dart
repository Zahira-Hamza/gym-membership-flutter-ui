import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/assets.dart';
import '../constants/colors.dart';
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
        preferredSize: const Size.fromHeight(64),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: AppBar(
              backgroundColor: AppColors.surface.withOpacity(0.8),
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.menu, color: AppColors.primary),
                onPressed: () {},
              ),
              title: Text(
                'KINETIC',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  letterSpacing: -1,
                  color: AppColors.primary,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 40,
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
              height: 707,
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
                    bottom: 48,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TRANSFORM',
                          style: GoogleFonts.montserrat(
                            fontSize: 46,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          'YOUR BODY',
                          style: GoogleFonts.montserrat(
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                            color: AppColors.primary,
                            height: 1.1,
                            shadows: [
                              Shadow(
                                color: AppColors.primary.withOpacity(0.4),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Unlock your peak potential with state-of-the-art equipment, world-class trainers, and a community driven by performance.',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: AppColors.textGrey,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryDark,
                                foregroundColor: const Color(0xFF102000),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'GET STARTED',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.4,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(
                                  color: AppColors.primaryDark,
                                  width: 2,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 14,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'VIEW TOUR',
                                style: GoogleFonts.inter(
                                  fontSize: 14,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 48.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MEMBERSHIP PLANS',
                              style: GoogleFonts.montserrat(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Choose the level of performance that fits your lifestyle.',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: AppColors.textGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.05),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primaryDark,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'Monthly',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF304F00),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              child: Text(
                                'Yearly (Save 20%)',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.textGrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),

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
                                onTap: () {},
                              ),
                            ),
                            const SizedBox(width: 16),
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
                                onTap: () {},
                              ),
                            ),
                            const SizedBox(width: 16),
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
                            onTap: () {},
                          ),
                          const SizedBox(height: 16),
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
                            onTap: () {},
                          ),
                          const SizedBox(height: 16),
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

                  const SizedBox(height: 48),

                  // Stats Grid
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return GridView.count(
                        crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
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
            const SizedBox(height: 80),
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
              blurRadius: 24,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(Icons.home, 'Home', true),
                _buildNavItem(Icons.card_membership, 'Plans', false),
                _buildNavItem(Icons.fitness_center, 'Workouts', false),
                _buildNavItem(Icons.person, 'Profile', false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isActive
              ? AppColors.primary
              : AppColors.textGrey.withOpacity(0.5),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
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
