import '../index.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key,required this.onPressed, required this.buttonText,});

  final VoidCallback onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
          key: key,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(4),
            //button color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                )),
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
          )),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key,required this.onPressed, required this.buttonText,});

  final VoidCallback onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyMedium,
          )),
    );
  }
}

class ButtonWithoutBorder extends StatelessWidget {
  const ButtonWithoutBorder({super.key, required this.onPressed, required this.buttonText});

  final VoidCallback onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(    decoration: TextDecoration.underline,fontWeight: FontWeight.w700,fontSize: 14
            ),
          )),
    );  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.onPressed, required this.icon, required this.buttonText});
  final VoidCallback onPressed;
  final IconData icon;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
          key: key,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(4),
            //button color
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                )),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),
              ),
              AppSpacing.horizontalSpacing8,
              Icon(icon)
            ],
          )),
    );
  }
}