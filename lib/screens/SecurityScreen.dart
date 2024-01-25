import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text(
          "Chính sách bảo mật",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Center(child: Column(
          children: [
            Row(
              children: [
                Text("PRIVACY POLICY", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(height: 22,),
              ],
            ),
            Row(
              children: [Text("Cleanup and Speedup", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.black))],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(child: Text("This Privacy Policy (“Privacy Policy”), is an integral part of our End User License Agreement (“EULA”), and governs the processing and transfer of personal data collected or processed by using or accessing Cleanup and Speedup mobile application (“we”, “us” or “our”) or our services, all as detailed in the applicable EULA (respectively the “App” and “Service”).", style: TextStyle(fontSize: 13),)),
                
              ],
            ),
            SizedBox(height: 35,),
            Row(
              children: [
                Expanded(child: Text("This Privacy Policy explains what data we may collect from you, how such data may be used or shared with others, how we safeguard it and how you may exercise your rights related to your Personal Data (as defined below), among others, and where applicable, as required according to the EU General Data Protection Regulation (“GDPR”),the Brazilian General Data Protection Law (as amended by Law No. 13,853/2019) (“LGPD”), the California Consumer Privacy Act (“CCPA”) and other US states as further detailed below.", style: TextStyle(fontSize: 13),)),
                
              ],
            ),

            SizedBox(height: 35,),
            Row(
              children: [
                Expanded(child: Text("If you have any questions regarding this Privacy Policy or our data practices, you are welcome to contact us at: support.cleanupandspeedup@zipoapps.com"))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
