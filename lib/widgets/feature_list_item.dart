import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/responsive_size.dart';

class FeatureListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w(context)),
      margin: EdgeInsets.only(bottom: 16.h(context)),
      decoration: BoxDecoration(
        color: AppColors.glassBorderLight, // roughly rgba(255,255,255,0.05) or similar
        borderRadius: BorderRadius.circular(12.w(context)),
        border: Border.all(
          color: AppColors.glassBorderLight,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48.w(context),
            height: 48.w(context), // maintain aspect ratio
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8.w(context)),
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 24.sp(context),
            ),
          ),
          SizedBox(width: 16.w(context)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp(context),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4.h(context)),
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp(context),
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
