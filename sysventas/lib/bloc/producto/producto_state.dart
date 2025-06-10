part of 'producto_bloc.dart';

@immutable
sealed class ProductoState {}

final class ProductoInitialState extends ProductoState {}

class ProductoLoadingState extends ProductoState{}

class ProductoLoadedState extends ProductoState{

  List<ProductoResp> productoList;

  ProductoLoadedState(this.productoList);

}

class ProductoLoadedFormState extends ProductoState{
  List<Marca> marcaList;
  List<Categoria> categoriaList;
  List<UnidadMedida> unidadMedidaList;

  ProductoLoadedFormState(this.marcaList, this.categoriaList, this.unidadMedidaList);
}

class ProductoLoadedFilterState extends ProductoState {
  List<ProductoResp> productoList;
  List<ProductoResp> productoFiltroList;

  ProductoLoadedFilterState(this.productoList, this.productoFiltroList);
}

class ProductoErrorState extends ProductoState {
  Error e;
  ProductoErrorState(this.e);
}
