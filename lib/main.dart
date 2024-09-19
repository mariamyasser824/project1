import 'package:booklyapp/core/network/api_service.dart';
import 'package:booklyapp/core/network/get_it.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/featuers/home/data/repo/home_repo.dart';
import 'package:booklyapp/featuers/home/data/repo/home_repo_impl.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/controller/AllBooks/AllBooks_state.dart';
import 'package:booklyapp/featuers/home/presenation/controller/Bestseller/Bestseller_cubit.dart';
import 'package:booklyapp/featuers/home/presenation/views/screen_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/screen_3.dart';

import 'package:booklyapp/featuers/splashscreen/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupserviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AllbooksCubit(getIt.get<HomeRepoImpl>())..getFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) =>
                BestsellerCubit(getIt.get<HomeRepoImpl>())..getBestseller())
      ],
      child: MaterialApp.router(

        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff100B20),

        ),
      ),
    );
  }
}
