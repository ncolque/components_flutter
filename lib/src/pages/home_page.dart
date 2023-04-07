import 'package:components_flutter/src/routes/routes.dart';
import 'package:components_flutter/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuOptions = Routes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
                trailing:
                    Icon(Icons.keyboard_arrow_right, color: AppTheme.primary),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => Divider(),
          itemCount: menuOptions.length),
    );
  }
}
