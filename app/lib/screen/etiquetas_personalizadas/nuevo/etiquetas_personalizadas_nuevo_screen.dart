import 'package:fep/screen/etiquetas_personalizadas/nuevo/etiquetas_personalizadas_nuevo_controller.dart';
import 'package:fep/widgets/back_arrow.dart';
import 'package:fep/widgets/custom_elevated_button.dart';
import 'package:fep/widgets/custom_text_form_field.dart';
import 'package:fep/widgets/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EtiquetasPersonalizadasNuevoScreen extends StatelessWidget {
  const EtiquetasPersonalizadasNuevoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BackArrow(text: 'Etiquetas Personalizadas'),
        automaticallyImplyLeading: false,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Nueva Etiqueta Personalizada',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Formulario(),
            ],
          ),
        ),
      ),
    );
  }
}

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EtiquetasPersonalizadasNuevoController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: controller.formFormKey,
            child: Column(
              children: [
                Obx(
                  () => controller.loading.value
                      ? const LinearProgressIndicator()
                      : const SizedBox.shrink(),
                ),
                const SizedBox(height: 10),
                FadeInAnimation(
                  delay: 1.0,
                  child: CustomTextFormField(
                    label: 'Etiqueta',
                    controller: controller.etiquetaController,
                    validator: controller.validateInput,
                  ),
                ),
                const SizedBox(height: 20),
                FadeInAnimation(
                  delay: 1.1,
                  child: CustomElevatedButton(
                    message: "Guardar",
                    function: () => controller.guardar(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
