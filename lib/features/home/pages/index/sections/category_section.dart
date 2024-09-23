part of '../page.dart';

class _CategorySection extends StatefulWidget {
  const _CategorySection({
    super.key,
  });

  @override
  State<_CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<_CategorySection> {

  List<String> categoryData = [
    'All Shoes',
    'Running',
    'Training',
    'Basketball',
    'Hiking',
    'Hiking',
    'Hiking',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                width: 83,
                decoration: BoxDecoration(
                    color: selectedIndex == index ? AppColor.primaryColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: selectedIndex == index ? Colors.transparent : const Color(0xff302F37),
                  )
                ),
                child: Center(child: Text(categoryData[index], style: TextStyle(
                  color: selectedIndex == index ? AppColor.whiteText : AppColor.greyText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),)),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 16,);
          },
          itemCount: categoryData.length,
        ),
      ),
    );
  }
}

