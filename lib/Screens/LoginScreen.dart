import 'package:flutter/material.dart';
import 'package:talk_messenger/Screens/PhoneAuthScreen.dart';
import 'package:talk_messenger/Screens/EmailAuthScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF4DA6FF), Color(0xFF0A84FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "T",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Talk",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Messenger",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 12),
              Text(
                "O jeito simples de conversar",
                style: TextStyle(color: Colors.grey[600]),
              ),
              const Spacer(),
              _buildButton(
                text: "Entrar com Telefone",
                icon: Icons.phone_android,
                color: const Color(0xFF0A84FF),
                isOutlined: false,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PhoneAuthScreen()),
                ),
              ),
              const SizedBox(height: 16),
              _buildButton(
                text: "Entrar com Email",
                icon: Icons.email_outlined,
                color: const Color(0xFF0A84FF),
                isOutlined: true,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EmailAuthScreen()),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "Ao continuar você aceita os Termos de Uso",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required IconData icon,
    required Color color,
    required bool isOutlined,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: isOutlined ? Colors.white : color,
          side: BorderSide(color: color, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        icon: Icon(icon, color: isOutlined ? color : Colors.white),
        label: Text(
          text,
          style: TextStyle(
            color: isOutlined ? color : Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
