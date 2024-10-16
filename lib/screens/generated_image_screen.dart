import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImageGenerationScreen extends StatefulWidget {
  final String hairLine;
  final String hairLengthTop;
  final String hairLengthSide;
  final String hairLengthBack;
  final String hairTexture;

  const ImageGenerationScreen({super.key, required this.hairLine, required this.hairLengthTop, required this.hairLengthSide, required this.hairLengthBack, required this.hairTexture});

  @override
  State<ImageGenerationScreen> createState() => _ImageGenerationScreenState();
}

class _ImageGenerationScreenState extends State<ImageGenerationScreen> {
  bool isGenerating = true;
  late OpenAI openAI;
  String url = '';

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
    const prompt = "cat eating snake blue red.";

    final request = GenerateImage(
        model: DallE2(),
        prompt,
        1,
        size: ImageSize.size256,
        responseFormat: Format.url);try {
      final response = await openAI.generateImage(request);

      setState(() {
        isGenerating = false;
        url = response?.data?.last?.url ?? '';
      });
    } catch (e) {
      setState(() {
        isGenerating = false;
        url = 'Error generating image: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          if (isGenerating)
            const CircularProgressIndicator()
          else if (url.isNotEmpty)
            Image.network(url)
          else
            const Text("Failed to generate image."),
        ],
      ),
    );
  }
}
