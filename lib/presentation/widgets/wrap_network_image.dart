import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/declarative_bool.dart';

const _noImage =
    'https://res.cloudinary.com/lacabastore/image/upload/v1614738052/hauaoxcvpwn3wcbzc0hs.png';

class WrapNetworkImage extends StatelessWidget {
  const WrapNetworkImage({
    required this.image,
    super.key,
    this.height,
    this.width,
    this.fit,
    this.loading,
  });

  final String? image;

  final double? height;
  final double? width;

  final BoxFit? fit;
  final Widget? loading;

  @override
  Widget build(BuildContext context) {
    // assert(image.isNotEmpty, 'image must not be empty');
    final imageUrl = (image != null && image!.isNotEmpty) ? image! : _noImage;

    return Image.network(
      imageUrl,
      // _noImage,
      height: height, //?? double.infinity,
      width: width, // ?? double.infinity,
      fit: fit ?? BoxFit.cover,
      errorBuilder: (_, __, ___) => _Widget(
        height: height,
        width: width,
        state: StateImage.error,
        child: loading,
      ),
      frameBuilder: (_, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return child;
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: frame != null
              ? child
              : _Widget(
                  height: height,
                  width: width,
                  state: StateImage.loading,
                  child: loading,
                ),
        );
      },
      loadingBuilder: (_, child, load) {
        if (load == null) return child;
        if (load.cumulativeBytesLoaded == load.expectedTotalBytes) return child;

        return _Widget(
          height: height,
          width: width,
          state: StateImage.loading,
          child: loading,
        );
      },
    );
  }
}

class _Widget extends StatelessWidget {
  const _Widget({
    required this.state,
    this.width,
    this.height,
    this.child,
  });

  final double? width;
  final double? height;

  final Widget? child;
  final StateImage state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // ?? double.infinity,
      height: height, //?? double.infinity,
      child: Center(
        child: child ??
            state.isLoading.when(
              isTrue: CircularProgressIndicator.adaptive,
              isFalse: () => const Icon(Icons.error_outline_outlined),
            ),
      ),
    );
  }
}

enum StateImage {
  loading,
  error;
}

extension StateFromImage on StateImage {
  bool get isLoading => this == StateImage.loading;
  bool get isError => this == StateImage.error;
}
