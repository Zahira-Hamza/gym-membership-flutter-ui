import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../utils/responsive_size.dart';

class StatCard extends StatelessWidget {
  final String value;
  final String label;

  const StatCard({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w(context)),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16.w(context)),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: GoogleFonts.montserrat(
              fontSize: 32.sp(context),
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
          // SizedBox(height: 2.h(context)),
          Text(
            label.toUpperCase(),
            style: GoogleFonts.inter(
              fontSize: 12.sp(context),
              fontWeight: FontWeight.w500,
              letterSpacing: 1.2,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }
}
