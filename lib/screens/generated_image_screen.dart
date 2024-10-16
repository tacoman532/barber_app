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
          Hair Length: ${widget.hairLengthTop}
          Hairline: ${widget.hairLine}
          The person's head should be shown from the left side, the right side, and the front to 
          display the unique hair features. The person should have a neutral expression, 
          with soft lighting to emphasize the hair texture. The background should be a simple, 
          soft color to ensure the focus remains on the person’s head.
          Once the image is generated split the image into three separate images and then return them.
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
      appBar: AppBar(title: const Text('Generated Images')),
      body: Center(
        child: isGenerating
            ? const CircularProgressIndicator()
            : urls.isNotEmpty && urls[0].startsWith('http')
            ? ListView.builder(
          itemCount: urls.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(urls[index]),
            );
          },
        )
            : const Text("Failed to generate images."),
      ),
    );
  }
}
