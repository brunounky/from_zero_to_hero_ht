import 'package:from_zero_to_hero_ht/features/products/data/product_repository_impl.dart';
import 'package:from_zero_to_hero_ht/features/products/domain/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<Product> productDetail(ProductDetailRef ref, int productId) async {
  final productRepository = ref.watch(productRepositoryProvider);
  return await productRepository.findProductById(productId);
}