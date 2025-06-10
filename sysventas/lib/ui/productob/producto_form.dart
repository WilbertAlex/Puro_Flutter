
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sysventas/apis/categoria_api.dart';
import 'package:sysventas/apis/marca_api.dart';
import 'package:sysventas/apis/producto_api.dart';
import 'package:sysventas/apis/unidadmedida_api.dart';
import 'package:sysventas/bloc/producto/producto_bloc.dart';
import 'package:sysventas/modelo/CategoriaModelo.dart';
import 'package:sysventas/modelo/MarcaModelo.dart';
import 'package:sysventas/modelo/ProductoModelo.dart';
import 'package:sysventas/modelo/UnidadMedidaModelo.dart';
import 'package:sysventas/util/TokenUtil.dart';

class ProductoFormB extends StatefulWidget {
  const ProductoFormB({super.key});

  @override
  State<ProductoFormB> createState() => _ProductoFormState();
}

class _ProductoFormState extends State<ProductoFormB> {
  final _formKey = GlobalKey<FormState>();
  // Controllers
  final nombreController = TextEditingController();
  final puController = TextEditingController();
  final puOldController = TextEditingController();
  final utilidadController = TextEditingController();
  final stockController = TextEditingController();
  final stockOldController = TextEditingController();

  Categoria? selectedCategoria;
  Marca? selectedMarca;
  UnidadMedida? selectedUnidad;

  late List<Categoria> categorias = [];
  late List<Marca> marcas = [];
  late List<UnidadMedida> unidades = [];

  @override
  void initState(){
    super.initState();
    BlocProvider.of<ProductoBloc>(context).add(CreateProductoFormEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrar ProductB')),
      body: BlocBuilder<ProductoBloc, ProductoState>(builder: (context, state){
        if(state is ProductoLoadedFormState){
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: nombreController,
                    decoration: const InputDecoration(labelText: 'Nombre'),
                    validator: (value) => value!.isEmpty ? 'Campo requerido' : null,
                  ),
                  TextFormField(
                    controller: puController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Precio Unitario (pu)'),
                    validator: (value) => value!.isEmpty ? 'Campo requerido' : null,
                  ),
                  TextFormField(
                    controller: puOldController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Precio Anterior (puOld)'),
                  ),
                  TextFormField(
                    controller: utilidadController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Utilidad'),
                  ),
                  TextFormField(
                    controller: stockController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Stock Actual'),
                  ),
                  TextFormField(
                    controller: stockOldController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Stock Anterior'),
                  ),
                  DropdownButtonFormField<Categoria>(
                    value: selectedCategoria,
                    items: state.categoriaList.map((cat) {
                      return DropdownMenuItem(value: cat, child: Text(cat.nombre));
                    }).toList(),
                    onChanged: (value) => setState(() => selectedCategoria = value),
                    decoration: const InputDecoration(labelText: 'Categoría'),
                    validator: (value) => value == null ? 'Seleccione una categoría' : null,
                  ),
                  DropdownButtonFormField<Marca>(
                    value: selectedMarca,
                    items: state.marcaList.map((mar) {
                      return DropdownMenuItem(value: mar, child: Text(mar.nombre));
                    }).toList(),
                    onChanged: (value) => setState(() => selectedMarca = value),
                    decoration: const InputDecoration(labelText: 'Marca'),
                    validator: (value) => value == null ? 'Seleccione una marca' : null,
                  ),
                  DropdownButtonFormField<UnidadMedida>(
                    value: selectedUnidad,
                    items: state.unidadMedidaList.map((um) {
                      return DropdownMenuItem(value: um, child: Text(um.nombreMedida));
                    }).toList(),
                    onChanged: (value) => setState(() => selectedUnidad = value),
                    decoration: const InputDecoration(labelText: 'Unidad de Medida'),
                    validator: (value) => value == null ? 'Seleccione una unidad' : null,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          BlocProvider.of<ProductoBloc>(context).add(ListarProductoEvent());
                          Navigator.pop(context, true);
                        },
                        child: const Text('Cancelar'),
                      ),
                      ElevatedButton(
                        onPressed: _registrarProducto,
                        child: const Text('Guardar'),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      }),
    );
  }

  void _registrarProducto() async{
    if (_formKey.currentState!.validate()) {
      final producto = ProductoDto(
        idProducto: 0, // o generado por backend
        nombre: nombreController.text,
        pu: double.parse(puController.text),
        puOld: double.tryParse(puOldController.text) ?? 0,
        utilidad: double.tryParse(utilidadController.text) ?? 0,
        stock: double.tryParse(stockController.text) ?? 0,
        stockOld: double.tryParse(stockOldController.text) ?? 0,
        categoria: selectedCategoria!.idCategoria,
        marca: selectedMarca!.idMarca,
        unidadMedida: selectedUnidad!.idUnidad,
      );
      BlocProvider.of<ProductoBloc>(context).add(CreateProductoEvent(producto));
      Navigator.pop(context, () {setState(() {}); });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Producto registrado exitosamente')),
      );
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No estan bien los datos de los campos!')),
      );
    }
  }
}