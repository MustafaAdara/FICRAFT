
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/image_picker/cubit/states.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerCubit extends Cubit<ImagePickerStates>
{
  ImagePickerCubit(): super(ImagePickerInitialState());

  static ImagePickerCubit get(context) => BlocProvider.of(context);

  final ImagePicker picker = ImagePicker();

  XFile? image;


  void takePhoto(ImageSource source) async {
    var pickedFile = await picker.pickImage(source: source);

    image = pickedFile;
    emit(ImagePickerChangeState());
  }

  //PickedFile? get pickedImage => image != null ? PickedFile(image!.path) : null;

}