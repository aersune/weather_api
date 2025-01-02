import 'package:flutter/material.dart';
import 'package:weather_api/utils/app_style.dart';
import 'package:weather_api/utils/colors.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                 AppColors.gradient1,
                AppColors.gradient2,
              ]
            )
          ),
          child: Column(
            children: [
              // const SizedBox(height: 35,),
              Container(
                width: 244,
                height: 244,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/rain.png'), fit: BoxFit.cover)
                ),
              ),
               Text('19°', style: AppStyle.mainStyle.copyWith(fontSize: 35),),
               Text('Precipitations' ,style: AppStyle.mainStyle.copyWith(fontSize: 18),),
               Text("Max: 24°   Min:18°" , style: AppStyle.mainStyle.copyWith(fontSize: 18),),
              SizedBox(
                width: size.width,

                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: 336,
                          height: 336,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/home.png'),
                                  fit: BoxFit.fitWidth
                              )
                          )
                      ),
                    ),
                    Positioned(
                    bottom: 0,
                      child: Container(
                          width: size.width,
                          height: 220,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.gradient1,
                              AppColors.gradient2,
                            ]),
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      width: size.width,
                      child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline_rounded)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                        ],
                      ),
                    ),)
                  ]
                ),
              )
            ],
          )
        ),

      ),
    );
  }
}
