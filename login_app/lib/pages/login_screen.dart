import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_filed.dart';

import '../components/custom_text_filed _password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
          titlePadding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "\$@",
                  style: TextStyle(color: Color.fromARGB(255, 6, 249, 14)),
                ),
                Text(
                  "Login Screen Flutter",
                  style: TextStyle(color: Color.fromARGB(250, 4, 244, 12)),
                ),
                Text(
                  "@\$",
                  style: TextStyle(color: Color.fromARGB(255, 6, 249, 14)),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        // ignore: avoid_unnecessary_containers
        child: Column(
          children: [
            Row(
              children: const [
                Spacer(),
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 10),
            // ignore: avoid_unnecessary_containers
            CustomTextFlield(controller: userController, hintText: "User Name"),
            const SizedBox(height: 20),
            CustomTextFlieldPassWord(
                controller: passController, hintText: "Password"),
            const SizedBox(height: 30),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      String userName = userController.text.trim();
                      String password = passController.text.trim();
                      String notification = (userName == '') || (password == '')
                          ? 'Vui lòng nhập đầy đủ tài khoản và mật khẩu!'
                          : 'Đăng nhập thành công $userName !';
                      // ignore: non_constant_identifier_names
                      final snackBar = SnackBar(
                        content: Text(notification),
                        action: SnackBarAction(label: '', onPressed: () {}),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar); // là  
                    },
                    style: ElevatedButton.styleFrom(
                      shadowColor:
                          const Color.fromARGB(255, 3, 244, 11), // Màu đổ bóng
                      elevation: 20,
                    ),
                    child: const Text("Login"),
                  ),
                ),
                const Spacer(),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors
                        .transparent, // đặt giá trị cho nền của ElevatedButton
                    shadowColor: Colors
                        .transparent, // đặt giá trị cho màu bóng của ElevatedButton
                  ),
                  child: const Text(
                    "Back",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Colors
                          .transparent, // đặt giá trị cho nền của ElevatedButton
                      shadowColor: Colors
                          .transparent, // đặt giá trị cho màu bóng của ElevatedButton
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.blue),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
