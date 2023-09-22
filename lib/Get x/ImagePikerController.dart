import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePikerController extends GetxController{
  RxString imagePath=''.obs;
  Future pickImage(ImageSource source) async{
    final ImagePicker _imagePicker =ImagePicker();
    final image=await _imagePicker.pickImage(source: source);
    imagePath.value=image!.path.toString();
  }
}