import 'package:bloc/bloc.dart';
import 'package:motorapp/homepage/dashboard.dart';
import 'package:motorapp/pages/addItem.dart';
import 'package:motorapp/pages/help.dart';
import 'package:motorapp/pages/myprofile.dart';
import 'package:motorapp/pages/resetpassword.dart';

enum NavigationEvents{

ProfileClickedEvent,
ResetPasswordClickedEvent,
HomePageClickedEvent,
HelpClickedEvent,
AddItemClickedEvent
}


abstract class NavigationStates{}

class NavigationBloc extends Bloc <NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);
  
  NavigationStates get initialState => DashBoardPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async*{
    switch (event){
      case NavigationEvents.HomePageClickedEvent: yield DashBoardPage();
      break;
      case NavigationEvents.ProfileClickedEvent: yield MyProfilepage();
        break;
      case NavigationEvents.ResetPasswordClickedEvent: yield ResetPasswordpage();
        break;
      case NavigationEvents.HelpClickedEvent: yield HelpPage();
        break;
      case NavigationEvents.AddItemClickedEvent: yield AddItemPage();
        break;
    }
  }
  
}