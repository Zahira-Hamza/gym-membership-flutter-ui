import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../utils/responsive_size.dart';

class BenefitCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool isLarge;

  const BenefitCard({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLarge ? 120.h(context) : 80.h(context),
      width: double.infinity,
      padding: EdgeInsets.all(20.w(context)),
      decoration: BoxDecoration(
        color: AppColors.glassBorderLight,
        borderRadius: BorderRadius.circular(16.w(context)),
        border: Border.all(color: AppColors.glassBorderLight),
      ),
      child: isLarge
          ? Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(icon, color: AppColors.primary, size: 24.sp(context)),
                    SizedBox(height: 8.h(context)),
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 14.sp(context),
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    if (subtitle != null) ...[
                      SizedBox(height: 4.h(context)),
                      Text(
                        subtitle!,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp(context),
                          color: AppColors.textGrey,
                        ),
                      ),
                    ],
                  ],
                ),
                Positioned(
                  right: -16.w(context),
                  bottom: -16.w(context),
                  child: Icon(
                    icon,
                    size: 120.sp(context),
                    color: Colors.white.withOpacity(0.05),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: AppColors.primary, size: 24.sp(context)),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp(context),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.2,
                  ),
                ),
              ],
            ),
    );
  }
}
