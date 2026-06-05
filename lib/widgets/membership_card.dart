import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/responsive_size.dart';

class MembershipCard extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final List<String> features;
  final bool isRecommended;
  final VoidCallback onTap;

  const MembershipCard({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.features,
    this.isRecommended = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.glassBackground,
          borderRadius: BorderRadius.circular(24.w(context)),
          border: Border.all(
            color: isRecommended ? AppColors.primary.withOpacity(0.5) : AppColors.glassBorder,
            width: 1,
          ),
          boxShadow: isRecommended
              ? [
                  BoxShadow(
                    color: AppColors.primary.withOpacity(0.3),
                    blurRadius: 20.w(context),
                    spreadRadius: 0,
                  )
                ]
              : null,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24.w(context)),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(32.w(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: GoogleFonts.inter(
                        fontSize: 14.sp(context),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.4,
                        color: isRecommended ? AppColors.primary : AppColors.textGrey,
                      ),
                    ),
                    SizedBox(height: 16.h(context)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          price,
                          style: GoogleFonts.montserrat(
                            fontSize: 40.sp(context),
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 4.w(context)),
                        Text(
                          '/mo',
                          style: GoogleFonts.inter(
                            fontSize: 16.sp(context),
                            color: AppColors.textGrey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h(context)),
                    Text(
                      description,
                      style: GoogleFonts.inter(
                        fontSize: 14.sp(context),
                        color: AppColors.textGrey,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 32.h(context)),
                    ...features.map((feature) => Padding(
                          padding: EdgeInsets.only(bottom: 16.h(context)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: AppColors.primary,
                                size: 20.sp(context),
                              ),
                              SizedBox(width: 12.w(context)),
                              Expanded(
                                child: Text(
                                  feature,
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp(context),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: 24.h(context)),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isRecommended
                              ? AppColors.primary
                              : Colors.white.withOpacity(0.1),
                          foregroundColor: isRecommended ? Colors.black : Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16.h(context)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.w(context)),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'JOIN NOW',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp(context),
                            fontWeight: isRecommended ? FontWeight.w900 : FontWeight.bold,
                            letterSpacing: 0.7,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isRecommended)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w(context), vertical: 4.h(context)),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.w(context)),
                      ),
                    ),
                    child: Text(
                      'RECOMMENDED',
                      style: GoogleFonts.inter(
                        fontSize: 10.sp(context),
                        fontWeight: FontWeight.w900,
                        color: const Color(0xFF102000),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
