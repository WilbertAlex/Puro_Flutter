import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sysventas/modelo/CategoriaModelo.dart';
import 'package:sysventas/modelo/MarcaModelo.dart';
import 'package:sysventas/modelo/ProductoModelo.dart';
import 'package:sysventas/modelo/UnidadMedidaModelo.dart';
import 'package:sysventas/repository/CategoriaRepository.dart';
import 'package:sysventas/repository/MarcaRepository.dart';
import 'package:sysventas/repository/ProductoRepository.dart';
import 'package:sysventas/repository/UnidadMedidaRepository.dart';

part 'producto_event.dart';
part 'producto_state.dart';

class ProductoBloc extends Bloc<ProductoEvent, ProductoState> {
  late final ProductoRepository _productoRepository;
  late final MarcaRepository _marcaRepository;
  late final CategoriaRepository _categoriaRepository;
  late final UnidadMedidaRepository _unidadMedidaRepository;

  ProductoBloc(this._productoRepository, this._unidadMedidaRepository,
      this._categoriaRepository, this._marcaRepository) : super(ProductoInitialState()) {
    on<ProductoEvent>((event, emit) async{

      if(event is ListarProductoEvent){
        emit(ProductoLoadingState());
        try{
          List<ProductoResp> productoList= await _productoRepository.getEntidad();
          emit(ProductoLoadedState(productoList));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }else if(event is DeleteProductoEvent){
        try{
          await _productoRepository.deleteEntidad(event.producto!.idProducto);
          emit(ProductoLoadingState());
          List<ProductoResp> productoList= await _productoRepository.getEntidad();
          emit(ProductoLoadedState(productoList));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }else if(event is CreateProductoEvent){
        try{
          await _productoRepository.createEntidad(event.producto);
          emit(ProductoLoadingState());
          List<ProductoResp> productoList= await _productoRepository.getEntidad();
          emit(ProductoLoadedState(productoList));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }else if (event is UpdateProductoEvent){
        try{
          await _productoRepository.updateEntidad(event.producto.idProducto, event.producto);
          emit(ProductoLoadingState());
          List<ProductoResp> productoList= await _productoRepository.getEntidad();
          emit(ProductoLoadedState(productoList));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }else if (event is FilterProductoEvent){
        emit(ProductoLoadingState());
        try{
          List<ProductoResp> productoList= await _productoRepository.getEntidad();
          List<ProductoResp> productosFiltrados=productoList.where((producto){
            return producto.nombre.toLowerCase().contains(event.datoBuscado.toLowerCase());
          }).toList();
          emit(ProductoLoadedFilterState(productoList, productosFiltrados));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }else if(event is CreateProductoFormEvent){
        try{
          List<Marca> marcaList= await _marcaRepository.getEntidad();
          List<Categoria> categoriaList= await _categoriaRepository.getEntidad();
          List<UnidadMedida> unidadMedidaList= await _unidadMedidaRepository.getEntidad();
          emit(ProductoLoadedFormState(marcaList,categoriaList, unidadMedidaList));
        }catch(e){
          emit(ProductoErrorState(e as Error));
        }
      }
    });
  }
}