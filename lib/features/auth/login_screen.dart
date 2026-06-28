import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_assets.dart';
import 'package:flutter_application_1/core/utils/app_colors.dart';
import 'package:flutter_application_1/core/utils/app_routs.dart';
import 'package:flutter_application_1/core/widgets/app_button.dart';
import 'package:flutter_application_1/core/widgets/app_text_filed.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _LoginHeroSection(),
                const SizedBox(height: 24),
                const _WelcomeTextSection(),
                const SizedBox(height: 20),
                _LoginFormSection(
                  emailController: emailController,
                  passwordController: passwordController,
                  isPasswordHidden: isPasswordHidden,
                  onPasswordToggle: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                ),
                const SizedBox(height: 18),
                AppButton(
                  buttonText: 'Login',
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.settingRoute);
                  },
                ),
                const SizedBox(height: 18),
                _LoginFooterSection(
                  onCreateAccountTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Sign up screen will be added next.'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginHeroSection extends StatelessWidget {
  const _LoginHeroSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.continerColor,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppAssets.livingRomeIamge,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    AppColors.textPrimary.withOpacity(0.45),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 16,
              bottom: 16,
              child: Text(
                'Smart Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WelcomeTextSection extends StatelessWidget {
  const _WelcomeTextSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Control your home devices in one simple place.',
          style: TextStyle(
            color: AppColors.textSecondary,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

class _LoginFormSection extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool isPasswordHidden;
  final VoidCallback onPasswordToggle;

  const _LoginFormSection({
    required this.emailController,
    required this.passwordController,
    required this.isPasswordHidden,
    required this.onPasswordToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFiled(
          controller: emailController,
          width: double.infinity,
          hintText: 'Email address',
          keyboardType: TextInputType.emailAddress,
          prefixIcon:
              Icon(Icons.email_outlined, color: AppColors.textSecondary),
        ),
        const SizedBox(height: 12),
        AppTextFiled(
          controller: passwordController,
          width: double.infinity,
          hintText: 'Password',
          obscureText: isPasswordHidden,
          prefixIcon: Icon(Icons.lock_outline, color: AppColors.textSecondary),
          suffixIcon: IconButton(
            onPressed: onPasswordToggle,
            icon: Icon(
              isPasswordHidden
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.info_outline, size: 18, color: AppColors.secondaryColor),
            const SizedBox(width: 6),
            Text(
              'Use your NTI account credentials',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ],
        ),
      ],
    );
  }
}

class _LoginFooterSection extends StatelessWidget {
  final VoidCallback onCreateAccountTap;

  const _LoginFooterSection({required this.onCreateAccountTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: TextStyle(color: AppColors.textSecondary),
          ),
          TextButton(
            onPressed: onCreateAccountTap,
            child: Text(
              'Create one',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
