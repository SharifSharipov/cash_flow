part of 'themes.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  const ThemeTextStyles({
    required this.appBarTitle,
    required this.buttonStyle,
    required this.regularCaptionTwo,
    required this.regularCaptionOne,
    required this.regularFootnote,
    required this.regularSubheadline,
    required this.regularCallout,
    required this.regularBody,
    required this.regularHeadline,
    required this.regularTitleOne,
    required this.regularTitleTwo,
    required this.regularTitleThree,
    required this.regularLargeTitle,
    required this.bodyCaptionTwo,
    required this.bodyCaptionOne,
    required this.bodyFootnote,
    required this.bodySubheadline,
    required this.bodyCallout,
    required this.bodyBody,
    required this.bodyHeadline,
    required this.bodyTitleOne,
    required this.bodyTitleTwo,
    required this.bodyTitleThere,
    required this.bodyLargeTitle,
  });

  final TextStyle appBarTitle;
  final TextStyle buttonStyle;
  final TextStyle regularCaptionTwo;
  final TextStyle regularCaptionOne;
  final TextStyle regularFootnote;
  final TextStyle regularSubheadline;
  final TextStyle regularCallout;
  final TextStyle regularBody;
  final TextStyle regularHeadline;
  final TextStyle regularTitleOne;
  final TextStyle regularTitleTwo;
  final TextStyle regularTitleThree;
  final TextStyle regularLargeTitle;
  final TextStyle bodyCaptionTwo;
  final TextStyle bodyCaptionOne;
  final TextStyle bodyFootnote;
  final TextStyle bodySubheadline;
  final TextStyle bodyCallout;
  final TextStyle bodyBody;
  final TextStyle bodyHeadline;
  final TextStyle bodyTitleOne;
  final TextStyle bodyTitleTwo;
  final TextStyle bodyTitleThere;
  final TextStyle bodyLargeTitle;

  static const ThemeTextStyles light = ThemeTextStyles(
    appBarTitle: TextStyle(
      color: AppColors.textColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
    ),
    buttonStyle: TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    regularBody: TextStyle(
      color: AppColors.textColor,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCallout: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCaptionOne: TextStyle(
      color: AppColors.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCaptionTwo: TextStyle(
      color: AppColors.textColor,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularFootnote: TextStyle(
      color: AppColors.textColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularHeadline: TextStyle(
      color: AppColors.textColor,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    regularLargeTitle: TextStyle(
      color: AppColors.textColor,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularSubheadline: TextStyle(
      color: AppColors.textColor,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleOne: TextStyle(
      color: AppColors.textColor,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleTwo: TextStyle(
      color: AppColors.textColor,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleThree: TextStyle(
      color: AppColors.textColor,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyBody: TextStyle(
      color: AppColors.textColor,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCallout: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCaptionOne: TextStyle(
      color: AppColors.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCaptionTwo: TextStyle(
      color: AppColors.textColor,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyFootnote: TextStyle(
      color: AppColors.textColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyHeadline: TextStyle(
      color: AppColors.textColor,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    bodyLargeTitle: TextStyle(
      color: AppColors.textColor,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodySubheadline: TextStyle(
      color: AppColors.textColor,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyTitleOne: TextStyle(
      color: AppColors.textColor,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
    ),
    bodyTitleTwo: TextStyle(
      color: AppColors.textColor,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyTitleThere: TextStyle(
      color: AppColors.textColor,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
  );
  static const ThemeTextStyles dark = ThemeTextStyles(
    appBarTitle: TextStyle(
      fontSize: 20,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
    ),
    buttonStyle: TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    regularBody: TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCallout: TextStyle(
      color: AppColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCaptionOne: TextStyle(
      color: AppColors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularCaptionTwo: TextStyle(
      color: Colors.white,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularFootnote: TextStyle(
      color: AppColors.white,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularHeadline: TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    regularLargeTitle: TextStyle(
      color: AppColors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularSubheadline: TextStyle(
      color: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleOne: TextStyle(
      color: AppColors.white,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleTwo: TextStyle(
      color: AppColors.white,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    regularTitleThree: TextStyle(
      color: AppColors.white,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyBody: TextStyle(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCallout: TextStyle(
      color: AppColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCaptionOne: TextStyle(
      color: AppColors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyCaptionTwo: TextStyle(
      color: AppColors.white,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyFootnote: TextStyle(
      color: AppColors.white,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyHeadline: TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Inter',
    ),
    bodyLargeTitle: TextStyle(
      color: AppColors.white,
      fontSize: 36,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodySubheadline: TextStyle(
      color: AppColors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyTitleOne: TextStyle(
      color: AppColors.white,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
    ),
    bodyTitleTwo: TextStyle(
      color: AppColors.white,
      fontSize: 28,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
    bodyTitleThere: TextStyle(
      color: AppColors.white,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
    ),
  );

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? appBarTitle,
    TextStyle? buttonStyle,
    TextStyle? regularBody,
    TextStyle? regularCallout,
    TextStyle? regularCaption1,
    TextStyle? regularCaption2,
    TextStyle? regularFootnote,
    TextStyle? regularHeadline,
    TextStyle? regularLargeTitle,
    TextStyle? regularSubheadline,
    TextStyle? regularTitleOne,
    TextStyle? regularTitleTwo,
    TextStyle? regularTitleThree,
    TextStyle? bodyBody,
    TextStyle? bodyCallout,
    TextStyle? bodyCaptionOne,
    TextStyle? bodyCaptionTwo,
    TextStyle? bodyFootnote,
    TextStyle? bodyHeadline,
    TextStyle? bodyLargeTitle,
    TextStyle? bodySubheadline,
    TextStyle? bodyTitle1,
    TextStyle? bodyTitle2,
    TextStyle? bodyTitle3,
  }) => ThemeTextStyles(
    appBarTitle: appBarTitle ?? this.appBarTitle,
    buttonStyle: buttonStyle ?? this.buttonStyle,
    regularBody: regularBody ?? this.regularBody,
    regularCallout: regularCallout ?? this.regularCallout,
    regularCaptionOne: regularCaption1 ?? regularCaptionOne,
    regularCaptionTwo: regularCaption2 ?? regularCaptionTwo,
    regularFootnote: regularFootnote ?? this.regularFootnote,
    regularHeadline: regularHeadline ?? this.regularHeadline,
    regularLargeTitle: regularLargeTitle ?? this.regularLargeTitle,
    regularSubheadline: regularSubheadline ?? this.regularSubheadline,
    regularTitleOne: regularTitleOne ?? this.regularTitleOne,
    regularTitleTwo: regularTitleTwo ?? this.regularTitleTwo,
    regularTitleThree: regularTitleThree ?? this.regularTitleThree,
    bodyBody: bodyBody ?? this.bodyBody,
    bodyCallout: bodyCallout ?? this.bodyCallout,
    bodyCaptionOne: bodyCaptionOne ?? this.bodyCaptionOne,
    bodyCaptionTwo: bodyCaptionTwo ?? this.bodyCaptionTwo,
    bodyFootnote: bodyFootnote ?? this.bodyFootnote,
    bodyHeadline: bodyHeadline ?? this.bodyHeadline,
    bodyLargeTitle: bodyLargeTitle ?? this.bodyLargeTitle,
    bodySubheadline: bodySubheadline ?? this.bodySubheadline,
    bodyTitleOne: bodyTitle1 ?? bodyTitleOne,
    bodyTitleTwo: bodyTitle2 ?? bodyTitleTwo,
    bodyTitleThere: bodyTitle3 ?? bodyTitleThere,
  );

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      buttonStyle: TextStyle.lerp(buttonStyle, other.buttonStyle, t)!,
      regularBody: TextStyle.lerp(regularBody, other.regularBody, t)!,
      regularCallout: TextStyle.lerp(regularCallout, other.regularCallout, t)!,
      regularCaptionOne: TextStyle.lerp(
        regularCaptionOne,
        other.regularCaptionOne,
        t,
      )!,
      regularCaptionTwo: TextStyle.lerp(
        regularCaptionTwo,
        other.regularCaptionTwo,
        t,
      )!,
      regularFootnote: TextStyle.lerp(
        regularFootnote,
        other.regularFootnote,
        t,
      )!,
      regularHeadline: TextStyle.lerp(
        regularHeadline,
        other.regularHeadline,
        t,
      )!,
      regularLargeTitle: TextStyle.lerp(
        regularLargeTitle,
        other.regularLargeTitle,
        t,
      )!,
      regularSubheadline: TextStyle.lerp(
        regularSubheadline,
        other.regularSubheadline,
        t,
      )!,
      regularTitleOne: TextStyle.lerp(
        regularTitleOne,
        other.regularTitleOne,
        t,
      )!,
      regularTitleTwo: TextStyle.lerp(
        regularTitleTwo,
        other.regularTitleTwo,
        t,
      )!,
      regularTitleThree: TextStyle.lerp(
        regularTitleThree,
        other.regularTitleThree,
        t,
      )!,
      bodyBody: TextStyle.lerp(bodyBody, other.bodyBody, t)!,
      bodyCallout: TextStyle.lerp(bodyCallout, other.bodyCallout, t)!,
      bodyCaptionOne: TextStyle.lerp(bodyCaptionOne, other.bodyCaptionOne, t)!,
      bodyCaptionTwo: TextStyle.lerp(bodyCaptionTwo, other.bodyCaptionTwo, t)!,
      bodyFootnote: TextStyle.lerp(bodyFootnote, other.bodyFootnote, t)!,
      bodyHeadline: TextStyle.lerp(bodyHeadline, other.bodyHeadline, t)!,
      bodyLargeTitle: TextStyle.lerp(bodyLargeTitle, other.bodyLargeTitle, t)!,
      bodySubheadline: TextStyle.lerp(
        bodySubheadline,
        other.bodySubheadline,
        t,
      )!,
      bodyTitleOne: TextStyle.lerp(bodyTitleOne, other.bodyTitleOne, t)!,
      bodyTitleTwo: TextStyle.lerp(bodyTitleTwo, other.bodyTitleTwo, t)!,
      bodyTitleThere: TextStyle.lerp(bodyTitleThere, other.bodyTitleThere, t)!,
    );
  }
}
