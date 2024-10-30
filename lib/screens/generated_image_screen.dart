import 'package:barber_app/constants/color_constant.dart';
import 'package:barber_app/widgets/app_bar_widget.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImageGenerationScreen extends StatefulWidget {
  final String hairLine;
  final String hairLengthTop;
  final String hairLengthSide;
  final String hairLengthBack;
  final String hairTexture;

  const ImageGenerationScreen(
      {super.key, required this.hairLine, required this.hairLengthTop, required this.hairLengthSide, required this.hairLengthBack, required this.hairTexture});

  @override
  State<ImageGenerationScreen> createState() => _ImageGenerationScreenState();
}

class _ImageGenerationScreenState extends State<ImageGenerationScreen> {
  bool isGenerating = true;
  late OpenAI openAI;
  List<String> urls = [];

  @override
  void initState() {
    super.initState();
    openAI = OpenAI.instance.build(
      token: dotenv.env['OPENAI_API_KEY'],
      baseOption: HttpSetup(
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    _generateImage();
  }

  Future<void> _generateImage() async {
    final prompt =
    ''' 
          Generate three images of a male with the following characteristics:
          Hair Texture: ${widget.hairTexture}
          Hair Length on top: ${widget.hairLengthTop}
          Hair Length on side: ${widget.hairLengthSide}
          Hair Length on back: ${widget.hairLengthBack}
          Hairline: ${widget.hairLine}
          blur the person's face. 
          have soft lighting to emphasize the hair texture. The background should be a simple, 
          soft color to ensure the focus remains on the person’s head.
          Once the image is generated split the image into four separate images
          frame 1 should have: the left side angle
          frame 2 should have: the right side angle
          frame 3 should have: the front side angle
          frame 4 should have: the back side angle
        ''';

    final request = GenerateImage(
        model: DallE3(),
        prompt,
        1,
        size: ImageSize.size1024,
        responseFormat: Format.url);
    try {
      final response = await openAI.generateImage(request);

      setState(() {
        isGenerating = false;
        urls = response?.data?.map((data) => data?.url ?? '').toList() ?? [];
      });
    } catch (e) {
      setState(() {
        isGenerating = false;
        urls = ['Error generating images: $e'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backgroundColor,
      appBar: AppBarWidget(title: 'Generated Images'),
      body: Center(
        child: isGenerating
            ? const CircularProgressIndicator(
          color: ColorConst.primaryColor,
        )
            : urls.isNotEmpty && urls[0].startsWith('http')
            ? ListView.builder(
          itemCount: urls.length,
          itemBuilder: (context, index) {
            return Image.network(urls[index], width: MediaQuery.of(context).size.width - 20,);
          },
        )
            : const Text("Failed to generate images."),
      ),
    );
  }
}
