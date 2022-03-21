import 'package:flutter/material.dart';

const kAppTitle = "Stock Scan Parser";
const kHomePageTitle = "Home";
const kAppVersion = "Version: ";

// routes
const kRouteSplashScreen = "/splash";
const kRouteHomePage = "/homepage";
const kDetailsPage = "/details";

// colors

const kAppColor = Color(0xFF01131B);
const kWhite = Colors.white;

const kPagePadding = 10.0;
const kTextTitleSize = 30.0;

const kSplashTextTitleSize = 30.0;
const kSplashTextVersionSize = 14.0;

const kDetailsPageTextSize = 18.0;

const kCategoriesBubbleBorderWidth = 1.0;
// network

const kDataFetchFailMsg = 'Can\'t fetch data';
const kApiEndpoint = "https://mobile-app-challenge.herokuapp.com";

const kNoInternetConnection = 'No Internet!';
const kTryAgain = 'Try again';

const kTextError = 'Error';

const kBullish = 'Bullish';

const kLoadingIndicator = Center(
  child: CircularProgressIndicator(),
);
