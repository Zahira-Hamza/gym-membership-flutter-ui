import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../constants/assets.dart';
import '../widgets/feature_list_item.dart';
import '../widgets/benefit_card.dart';
import '../widgets/faq_item.dart';

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
          icon: const Icon(Icons.arrow_back, color: AppColors.primary),
          onPressed: () => Navigator.pop(context),
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hero Section
                SizedBox(
                  height: 442,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.matrix([
                            0.3, 0.3, 0.3, 0, 0,
                            0.3, 0.3, 0.3, 0, 0,
                            0.3, 0.3, 0.3, 0, 0,
                            0, 0, 0, 1, 0,
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
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              margin: const EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                              ),
                              child: Text(
                                'PREMIUM TIER',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            Text(
                              'Elite Membership',
                              style: GoogleFonts.montserrat(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '\$149',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.primary,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '/ MONTH',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Core Features
                      Row(
                        children: [
                          Container(
                            width: 8,
                            height: 32,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Core Features',
                            style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const FeatureListItem(
                        icon: Icons.schedule,
                        title: '24/7 Unlimited Access',
                        subtitle: 'Train on your schedule, anytime, day or night.',
                      ),
                      const FeatureListItem(
                        icon: Icons.person_add_alt_1, // close to person_celebrate
                        title: 'Personal Training',
                        subtitle: '4 complementary sessions with a Master Trainer per month.',
                      ),
                      const FeatureListItem(
                        icon: Icons.spa,
                        title: 'Luxury Spa & Sauna',
                        subtitle: 'Full access to recovery zones, steam rooms, and saunas.',
                      ),
                      const FeatureListItem(
                        icon: Icons.restaurant,
                        title: 'Nutrition Plan',
                        subtitle: 'Personalized bio-metric nutrition and supplement guide.',
                      ),
                      const FeatureListItem(
                        icon: Icons.confirmation_num,
                        title: 'VIP Guest Passes',
                        subtitle: 'Bring a guest 5 times a month at no extra cost.',
                      ),
                      
                      const SizedBox(height: 48),
                      
                      // Exclusive Benefits
                      Text(
                        'Exclusive Benefits',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const BenefitCard(
                        icon: Icons.diamond,
                        title: 'Priority Booking',
                        subtitle: 'First access to limited high-intensity classes.',
                        isLarge: true,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Expanded(
                            child: SizedBox(
                              height: 128,
                              child: BenefitCard(
                                icon: Icons.local_parking,
                                title: 'Valet Parking',
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: SizedBox(
                              height: 128,
                              child: BenefitCard(
                                icon: Icons.wifi,
                                title: 'High-Speed Fiber',
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 48),
                      
                      // FAQ
                      Text(
                        'FAQ',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const FaqItem(
                        question: 'Can I freeze my membership?',
                        answer: 'Yes, Elite members can freeze their membership for up to 60 days per calendar year at no additional cost.',
                      ),
                      const FaqItem(
                        question: 'Are classes included?',
                        answer: 'Absolutely. Elite members have unlimited access to all group classes, including specialized workshops.',
                      ),
                      const FaqItem(
                        question: 'Is there a contract term?',
                        answer: 'Elite plans are available as month-to-month with a 30-day notice period for cancellation.',
                      ),
                      
                      const SizedBox(height: 100), // Space for CTA
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
              padding: const EdgeInsets.all(20),
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
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Subscribe Now',
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Icon(Icons.bolt, size: 28),
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
