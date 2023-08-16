import 'package:flutter/material.dart';
import 'package:gptone/communaute_fibre/widget/section_faq.dart';
import 'package:gptone/communaute_fibre/widget/section_profile.dart';
import 'package:gptone/communaute_fibre/widget/section_statut.dart';

class PageCommunauteFibre extends StatelessWidget {
  const PageCommunauteFibre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 1),
        child: const Column(
          children: [SectionStatuts(), SectionProfile(), SectionFaq()],
        ),
      ))),
    );
  }
}
