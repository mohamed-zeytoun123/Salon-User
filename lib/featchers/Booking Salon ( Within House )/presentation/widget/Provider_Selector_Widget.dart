// ignore_for_file: file_names, library_private_types_in_public_api, deprecated_member_use

import 'dart:developer';

import 'package:app2/core/style/Fonts_style.dart';
import 'package:app2/featchers/Booking%20Freelance/presentation/widget/provider_show_image_name_dis_widget.dart';
import 'package:app2/featchers/Booking%20Salon%20(%20Within%20House%20)/data/model/provider_model_dummy.dart';
import 'package:flutter/material.dart';

class ProviderSelectorWidget extends StatefulWidget {
  final List<ProviderModelDUMMY> providers;
  final bool isEnabled;

  const ProviderSelectorWidget({
    super.key,
    required this.providers,
    this.isEnabled = true,
  });

  @override
  _ProviderSelectorWidgetState createState() => _ProviderSelectorWidgetState();
}

class _ProviderSelectorWidgetState extends State<ProviderSelectorWidget> {
  ProviderModelDUMMY? selectedProvider;

  List<DropdownMenuItem<ProviderModelDUMMY>> buildProviderItems() {
    return [
      for (var provider in widget.providers)
        DropdownMenuItem<ProviderModelDUMMY>(
          value: provider,
          child: Stack(
            children: [
              ProviderShowImageNameDisWidget(
                isShowDivider: true,
                image: provider.image,
                name: provider.name,
                discription: provider.description,
              ),
              if (provider.isUnavailable)
                Positioned.fill(
                  child: Container(
                    width: double.infinity,
                    color: Color(0xffE3E3E3).withOpacity(0.5),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(bottom: 7),
                    padding: const EdgeInsets.only(right: 8),
                    child: Text("Unavailable",
                        style: FontsStyle.whit16w400
                            .copyWith(color: Color(0xff952323))),
                  ),
                ),
            ],
          ),
        ),
    ];
  }

  List<Widget> buildSelectedItems() {
    return [
      for (var provider in widget.providers)
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            provider.name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<ProviderModelDUMMY>(
                  isExpanded: true,
                  value: selectedProvider,
                  hint: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    child: Text(
                      'Choose technique',
                      style: FontsStyle.white13w400
                          .copyWith(color: const Color(0xffC8C8C8)),
                    ),
                  ),
                  icon: Container(
                    width: 55,
                    height: double.infinity,
                    color: Colors.grey[200],
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                      size: 28,
                    ),
                  ),
                  items: buildProviderItems(),
                  selectedItemBuilder: (context) => [
                    for (var provider in widget.providers)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 2),
                          child: Text(
                            provider.name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                  ],
                  onChanged: widget.isEnabled
                      ? (provider) {
                          if (provider != null && !provider.isUnavailable) {
                            setState(() {
                              selectedProvider = provider;
                              log(provider.name);
                            });
                          }
                        }
                      : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
