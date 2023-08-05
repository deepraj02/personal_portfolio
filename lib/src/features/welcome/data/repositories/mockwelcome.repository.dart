import '../models/welcome_page.model.dart';
import 'iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {
  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return WelcomePageModel(
          name: 'Deepraj Baidya',
          title: 'Flutter & DevOps Engineer @TEXTMI',
          subTitle: 'Flutter 💙 • DevOps & Cloud ☁️ • OpenSource 🌐',
          imgPath:
              'https://media.licdn.com/dms/image/D4D03AQHbh2a30AWRFw/profile-displayphoto-shrink_800_800/0/1683387084361?e=1696464000&v=beta&t=pjE858N2efGiK4iW_RZuSC3bIumRHtPVejBjvH04DqE',
          greetings: [
            "hello",
            "hola",
            "bonjour",
            "ciao",
          ],
        );
      },
    );
  }
}
