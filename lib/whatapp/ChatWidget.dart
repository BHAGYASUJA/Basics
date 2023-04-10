import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=>const MaterialApp(
      useInheritedMediaQuery: true,
      home:ChatWidget(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class ChatWidget extends StatelessWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil`d
    throw UnimplementedError();
  }
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 5),
          child: Column(children: [
            for(int i=1;i<4;i++)
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRect(
                      child: Image.asset(
                          "asset/images/p$i.jpg", width: 65, height: 65),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text("ARUN",
                             style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Hi Arun,how Are You",
                            style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.w400,
                          color: Colors.black54,
                          ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text("21:42",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF0FCE5E),
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          alignment: Alignment.center,
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0FCE5E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text("2",
                          style:TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          fontSize: 16,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
          ],
          ),

      ),
    );
  }



