import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/assets.dart';
import '../constants/colors.dart';
import '../utils/responsive_size.dart';
import '../widgets/benefit_card.dart';
import '../widgets/faq_item.dart';
import '../widgets/feature_list_item.dart';

class MembershipDetailsScreen extends StatelessWidget {
  const MembershipDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.surface.withOpacity(0.8),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primary,
            size: 24.sp(context),
          ),
          onPressed: () => Navigator.pop(context),
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
            padding: EdgeInsets.only(right: 20.w(context)),
            child: Center(
              child: Container(
                width: 40.w(context),
                height: 40.w(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary.withOpacity(0.2)),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hero Section
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.matrix([
                            0.3,
                            0.3,
                            0.3,
                            0,
                            0,
                            0.3,
                            0.3,
                            0.3,
                            0,
                            0,
                            0.3,
                            0.3,
                            0.3,
                            0,
                            0,
                            0,
                            0,
                            0,
                            1,
                            0,
                          ]),
                          child: Image.network(
                            AppAssets.heroImageDetails,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                AppColors.background,
                                AppColors.background.withOpacity(0.4),
                                Colors.transparent,
                              ],
                              stops: const [0.0, 0.4, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20.w(context),
                        right: 20.w(context),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.w(context),
                                vertical: 4.h(context),
                              ),
                              margin: EdgeInsets.only(bottom: 12.h(context)),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(
                                  20.w(context),
                                ),
                                border: Border.all(
                                  color: AppColors.primary.withOpacity(0.3),
                                ),
                              ),
                              child: Text(
                                'PREMIUM TIER',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp(context),
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            Text(
                              'Elite Membership',
                              style: GoogleFonts.montserrat(
                                fontSize: 28.sp(context),
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4.h(context)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '\$149',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 40.sp(context),
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.primary,
                                  ),
                                ),
                                SizedBox(width: 8.w(context)),
                                Text(
                                  '/ MONTH',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp(context),
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textGrey,
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

                Padding(
                  padding: EdgeInsets.all(20.w(context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Core Features
                      Row(
                        children: [
                          Container(
                            width: 8.w(context),
                            height: 32.h(context),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4.w(context)),
                            ),
                          ),
                          SizedBox(width: 8.w(context)),
                          Text(
                            'Core Features',
                            style: GoogleFonts.montserrat(
                              fontSize: 24.sp(context),
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h(context)),
                      const FeatureListItem(
                        icon: Icons.schedule,
                        title: '24/7 Unlimited Access',
                        subtitle:
                            'Train on your schedule, anytime, day or night.',
                      ),
                      const FeatureListItem(
                        icon: Icons.person_add_alt_1,
                        title: 'Personal Training',
                        subtitle:
                            '4 complementary sessions with a Master Trainer per month.',
                      ),
                      const FeatureListItem(
                        icon: Icons.spa,
                        title: 'Luxury Spa & Sauna',
                        subtitle:
                            'Full access to recovery zones, steam rooms, and saunas.',
                      ),
                      const FeatureListItem(
                        icon: Icons.restaurant,
                        title: 'Nutrition Plan',
                        subtitle:
                            'Personalized bio-metric nutrition and supplement guide.',
                      ),
                      const FeatureListItem(
                        icon: Icons.confirmation_num,
                        title: 'VIP Guest Passes',
                        subtitle:
                            'Bring a guest 5 times a month at no extra cost.',
                      ),

                      SizedBox(height: 48.h(context)),

                      // Exclusive Benefits
                      Text(
                        'Exclusive Benefits',
                        style: GoogleFonts.montserrat(
                          fontSize: 24.sp(context),
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 24.h(context)),
                      const BenefitCard(
                        icon: Icons.diamond,
                        title: 'Priority Booking',
                        subtitle:
                            'First access to limited high-intensity classes.',
                        isLarge: true,
                      ),
                      SizedBox(height: 16.h(context)),
                      Row(
                        children: [
                          const Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: BenefitCard(
                                icon: Icons.local_parking,
                                title: 'Valet Parking',
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w(context)),
                          const Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: BenefitCard(
                                icon: Icons.wifi,
                                title: 'High-Speed Fiber',
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 48.h(context)),

                      // FAQ
                      Text(
                        'FAQ',
                        style: GoogleFonts.montserrat(
                          fontSize: 24.sp(context),
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 24.h(context)),
                      const FaqItem(
                        question: 'Can I freeze my membership?',
                        answer:
                            'Yes, Elite members can freeze their membership for up to 60 days per calendar year at no additional cost.',
                      ),
                      const FaqItem(
                        question: 'Are classes included?',
                        answer:
                            'Absolutely. Elite members have unlimited access to all group classes, including specialized workshops.',
                      ),
                      const FaqItem(
                        question: 'Is there a contract term?',
                        answer:
                            'Elite plans are available as month-to-month with a 30-day notice period for cancellation.',
                      ),

                      SizedBox(height: 100.h(context)), // Space for CTA
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Call to Action Footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20.w(context)),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.background,
                    AppColors.background.withOpacity(0.8),
                    Colors.transparent,
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: const Color(0xFF102000),
                  padding: EdgeInsets.symmetric(vertical: 14.h(context)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.w(context)),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Subscribe Now',
                      style: GoogleFonts.montserrat(
                        fontSize: 24.sp(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // SizedBox(width: 12.w(context)),
                    Icon(Icons.bolt, size: 28.sp(context)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
