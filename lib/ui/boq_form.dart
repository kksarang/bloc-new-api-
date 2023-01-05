import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/args/boq_form_args.dart';
import '../../../data/result.dart';
import '../../../di/injection_container.dart' as di;
import '../bloc/boq_form_cubit.dart';
import '../core/utilites/validator.dart';
import '../data/model/api/boq_product_data.dart';
import '../widget/dimen.dart';
import '../widget/error_info.dart';
import '../widget/palette.dart';
import '../widget/riple_loader.dart';
import '../widget/styles.dart';

class BoqForm extends StatelessWidget {
  final BoqFormArgs args;

  const BoqForm({super.key, required this.args});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => di.sl.get<BoqFormCubit>(),
        child: BoqFormBody(args: args),
      );
}

class BoqFormBody extends StatefulWidget {
  final BoqFormArgs args;
  const BoqFormBody({super.key, required this.args});

  @override
  State<BoqFormBody> createState() => _BoqFormBodyState();
}

class _BoqFormBodyState extends State<BoqFormBody> {
  late BoqFormCubit _boqFormCubit;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _quantityController = TextEditingController();
  bool _invalidQuantity = false;

  bool _oldValueAssigned = false;

  @override
  void didChangeDependencies() {
    _boqFormCubit = BlocProvider.of<BoqFormCubit>(context);
    if (widget.args.boqData != null && !_oldValueAssigned) {
      _boqFormCubit.initUserSelections(widget.args.boqData!);
      setState(() {
        _quantityController.text = widget.args.boqData!.quantity.toString();
        _oldValueAssigned = true;
      });
    }
    _boqFormCubit.loadProductData();
    _boqFormCubit.messageStream.listen((event) {});
    _boqFormCubit.addEditBoqResult.listen((event) {
      event.maybeWhen(
        loading: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
        error: (message) {
          print(message);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Expanded(child: Text(message)), Icon(Icons.error)],
                ),
                behavior: SnackBarBehavior.floating,
              ),
            );
        },
        success: (data, message) => Navigator.of(context).pop(true),
        orElse: () {},
      );
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<BoqFormCubit, Result<BoqProductData>>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => RipleLoader(),
          error: (message) => ErrorInfo(message: message, onTap: () => _boqFormCubit.loadProductData()),
          success: (data, message) => Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: EdgeInsets.all(Dimen.grid_2),
              decoration: BoxDecoration(
                color: Palette.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                ),
              ),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(Dimen.grid_4, Dimen.grid_2, Dimen.grid_4, Dimen.grid_2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: Dimen.grid_3),
                      DropdownButtonFormField2(
                        decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Category'),
                        isExpanded: true,
                        value: _boqFormCubit.selectedCategory,
                        // value: data.categories
                        //     .firstWhere((p0) => p0.is_selected ?? false),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        items: data.categories
                            .map((category) => DropdownMenuItem<int>(
                                  value: category.id,
                                  child: Text(
                                    '${category.name}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) => _boqFormCubit.changeCategory(value as int),
                      ),
                      SizedBox(height: Dimen.grid_3),
                      DropdownButtonFormField2(
                        decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Sub category'),
                        isExpanded: true,
                        value: _boqFormCubit.selectedSubCategory,
                        // value: data.subCategories
                        //     .firstWhere((p0) => p0.is_selected ?? false),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        items: data.subCategories
                            .where((p0) => p0.categoryId == _boqFormCubit.selectedCategory)
                            .map((subCategory) => DropdownMenuItem<int>(
                                  value: subCategory.id,
                                  child: Text(
                                    '${subCategory.name}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) => _boqFormCubit.changeSubCategory(value as int),
                      ),
                      SizedBox(height: Dimen.grid_3),
                      DropdownButtonFormField2(
                        decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Brand'),
                        isExpanded: true,
                        // value: data.brands
                        //     .firstWhere((p0) => p0.is_selected ?? false),
                        value: _boqFormCubit.selectedBrand,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        items: data.brands
                            .where((p0) => p0.categoryID == _boqFormCubit.selectedCategory)
                            .map((brand) => DropdownMenuItem<int>(
                                  value: brand.id,
                                  child: Text(
                                    '${brand.name}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) => _boqFormCubit.changeBrand(value as int),
                      ),
                      SizedBox(height: Dimen.grid_3),
                      DropdownButtonFormField2(
                        decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Product'),
                        isExpanded: true,
                        value: _boqFormCubit.selectedProduct,
                        // value: data.products
                        //     .firstWhere((p0) => p0.is_selected ?? false),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        items: data.products
                            .where((p0) => p0.categoryID == _boqFormCubit.selectedSubCategory)
                            .map((product) => DropdownMenuItem<int>(
                                  value: product.id,
                                  child: Text(
                                    '${product.name}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) => _boqFormCubit.changeProduct(value as int),
                      ),
                      SizedBox(height: Dimen.grid_3),
                      TextFormField(
                        onChanged: (value) {
                          if (_invalidQuantity) _formKey.currentState!.validate();
                        },
                        maxLines: 1,
                        controller: _quantityController,
                        keyboardType: TextInputType.number,
                        decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Quantity'),
                        validator: (value) {
                          String? err = Validator.nullValidate(value, 'quantity');
                          setState(() {
                            _invalidQuantity = err != null;
                          });
                          return err;
                        },
                      ),
                      SizedBox(height: Dimen.grid_3),
                      Row(
                        children: [Text("SAVE")],
                      ),
                      SizedBox(height: Dimen.grid_2),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
