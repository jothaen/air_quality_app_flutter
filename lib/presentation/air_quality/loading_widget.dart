part of 'air_quality_page.dart';

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        Card(
          color: Colors.white,
          elevation: 16,
          child: SizedBox(
            height: 146,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  _Shimmer(width: 300, height: 20),
                  SizedBox(height: 8),
                  _Shimmer(width: 150, height: 14),
                  SizedBox(height: 16),
                  _Shimmer(width: 200, height: 16),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Shimmer extends StatelessWidget {
  const _Shimmer({required this.width, required this.height, this.child});
  final double width;
  final double height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      color: Colors.grey,
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}