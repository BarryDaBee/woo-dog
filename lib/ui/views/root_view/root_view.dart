import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/locator.dart';
import 'package:acumen_app/ui/views/chat_view/chat_home_view.dart';
import 'package:acumen_app/ui/views/root_view/root_view_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:acumen_app/ui/views/home_view/home_view.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  Widget getCurrentView(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      // case 1:
      //   return const HomeView();
      case 2:
        return const ChatHomeView();
      // case 3:
      //   return const HomeView();
      default:
        return const HomeView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: getCurrentView(model.currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              model.setIndex(index);
            },
            currentIndex: model.currentIndex,
            selectedLabelStyle: GoogleFonts.poppins(
                color: AppColors.black2B,
                fontSize: 10,
                fontWeight: FontWeight.w700),
            unselectedLabelStyle: GoogleFonts.poppins(
                color: AppColors.black2B,
                fontSize: 10,
                fontWeight: FontWeight.w700),
            selectedItemColor: AppColors.black2B,
            unselectedItemColor: const Color(0xFFAEAEB2),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'home'.svg,
                  color: const Color(0xFFAEAEB2),
                ),
                label: 'Home',
                activeIcon: SvgPicture.asset('home'.svg),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'moments'.svg,
                  color: const Color(0xFFAEAEB2),
                ),
                activeIcon: SvgPicture.asset(
                  'moments'.svg,
                  color: AppColors.black2B,
                ),
                label: 'Moments',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(
                      'chat'.svg,
                      color: const Color(0xFFAEAEB2),
                    ),
                    const Positioned(
                      top: -1,
                      right: 5,
                      child: CircleAvatar(
                        backgroundColor: AppColors.red,
                        radius: 3.5,
                      ),
                    ),
                  ],
                ),
                activeIcon: SvgPicture.asset(
                  'chat'.svg,
                  color: AppColors.black2B,
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'profile'.svg,
                  color: const Color(0xFFAEAEB2),
                ),
                activeIcon: SvgPicture.asset(
                  'profile'.svg,
                  color: AppColors.black2B,
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => locator<RootViewModel>(),
    );
  }
}
