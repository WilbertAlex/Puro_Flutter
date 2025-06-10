part of 'producto_bloc.dart';

@immutable
sealed class ProductoEvent {}

class ListarProductoEvent extends ProductoEvent{
  ListarProductoEvent(){}
}

class DeleteProductoEvent extends ProductoEvent{
  ProductoResp producto;
  DeleteProductoEvent(this.producto){}
}

class UpdateProductoEvent extends ProductoEvent{
  ProductoDto producto;
  UpdateProductoEvent(this.producto);
}

class CreateProductoEvent extends ProductoEvent{
  ProductoDto producto;
  CreateProductoEvent(this.producto);
}

class CreateProductoFormEvent extends ProductoEvent{

}
class FilterProductoEvent extends ProductoEvent{
  String datoBuscado;
  FilterProductoEvent(this.datoBuscado);
}