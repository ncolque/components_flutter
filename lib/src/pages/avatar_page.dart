import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://3.bp.blogspot.com/-Y0ryB7p68fQ/W0-MAOfpouI/AAAAAAAAB-s/Sw2K7gA7Q88JVK4u7ZiSmt6JJpZPFPCAwCLcBGAs/s1600/mrrobot_s2_cast_rami-malek2.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.revistagq.com/photos/5ca5fe80bda59482f933e7e8/master/pass/anonymous_182.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('NC'),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/679a936609f37411bef9407b14220267d7a85b79b69ca5600fbe82b7c1ae19fa._RI_V_TTW_.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
