import 'package:go_router/go_router.dart';
import '../../modules/User/screen/profile_screen.dart';
import '../../modules/cart/screen/cart_screen.dart';
import '../../modules/Cart/screen/cart_detail_screen.dart';
import '../../modules/Auth/screen/login_screen.dart';
import '../../modules/Auth/screen/register_screen.dart';
import '../../modules/User/screen/edit_profile_screen.dart';
import '../../modules/Cart/screen/detail_screen.dart';
import '../../modules/product/screen/product_screen.dart';
//End Import

//INIT LOCATION
const String _initialLocation = '/';

final appRouter = GoRouter(
  initialLocation: _initialLocation,
  routes: [
    GoRoute(
      path: ProfileScreen.routeName,
      builder: (_, __) => const ProfileScreen(),
    ),
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
  ],
);
