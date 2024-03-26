import 'package:go_router/go_router.dart';
import 'package:test_flutter_lartest_tech/app/home.dart';
import '../../modules/User/screen/profile_screen.dart';
import '../../modules/cart/screen/cart_screen.dart';
import '../../modules/Cart/screen/cart_detail_screen.dart';
import '../../modules/Auth/screen/login_screen.dart';
import '../../modules/Auth/screen/register_screen.dart';
import '../../modules/User/screen/edit_profile_screen.dart';
import '../../modules/Cart/screen/detail_screen.dart';
import '../../modules/product/screen/product_screen.dart';
import '../../modules/location/screen/location_screen.dart'; import '../../modules/feed/screen/feed_screen.dart';import '../../modules/User/screen/user_screen.dart';import '../../modules/User/screen/user_screen.dart';//End Import

//INIT LOCATION
const String _initialLocation = '/';

final appRouter = GoRouter(
  initialLocation: _initialLocation,
  routes: [
    GoRoute(path: '/', builder: (_, __) => const MyHomePage(), routes: [
      GoRoute(
        path: ProfileScreen.routeName,
        builder: (_, __) => const ProfileScreen(),
      ),
      GoRoute(
        path: CartScreen.routeName,
        builder: (_, __) => const CartScreen(),
      ),
      GoRoute(
        path: CartDetailScreen.routeName,
        builder: (_, __) => const CartDetailScreen(),
      ),
      GoRoute(
        path: LoginScreen.routeName,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: RegisterScreen.routeName,
        builder: (_, __) => const RegisterScreen(),
      ),
      GoRoute(
        path: EditProfileScreen.routeName,
        builder: (_, __) => const EditProfileScreen(),
      ),
      GoRoute(
        path: DetailScreen.routeName,
        builder: (_, __) => const DetailScreen(),
      ),
      GoRoute(
        path: ProductScreen.routeName,
        builder: (_, __) => const ProductScreen(),
      )
    ]),
    GoRoute(
      path: LocationScreen.routeName,
      builder: (_, __) => const LocationScreen(),
    )
  ,GoRoute(
      path: FeedScreen.routeName,
      builder: (_, __) => const FeedScreen(),
    )
,GoRoute(
      path: UserScreen.routeName,
      builder: (_, __) => const UserScreen(),
    )
,GoRoute(
      path: UserScreen.routeName,
      builder: (_, __) => const UserScreen(),
    )
],
);
