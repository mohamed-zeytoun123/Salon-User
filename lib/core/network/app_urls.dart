// ignore_for_file: file_names

class AppUrls {
  static String homeApi = "http://94.72.98.154/abdulrahim/public/api";
  static String login = "$homeApi/auth/login";
  static String signUp = "$homeApi/auth/register";
  static String getTopSalon = "$homeApi/branches?top=1";
  static String getNearest = "$homeApi/branches?nearest=1";
  static String getNearestFetchSalon = "$homeApi/branches?nearest=1&type=2";
  static String getNearestFetchFreelance = "$homeApi/branches?nearest=1&type=1";
  static String getSliders = "$homeApi/sliders";
  static String getProducts = "$homeApi/products";
  static String getServices = "$homeApi/services";
  


  // static String signUp = "$homeApi/auth/register";

}
