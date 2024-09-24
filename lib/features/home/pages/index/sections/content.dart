part of '../page.dart';

class AllShoes extends StatelessWidget {
  const AllShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Products',
            style: TextStyle(color: AppColor.whiteText, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 14,
          ),
         SizedBox(
           height: 270,
           child: ListView.separated(
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemBuilder: (BuildContext context, int index) {
               return Container(
                 width: 215,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.asset('assets/images/popular.png', ),
                     const SizedBox(height: 30,),
                     const Padding(
                       padding: EdgeInsets.only(left: 20.0, right: 15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Hiking', style: TextStyle(
                               color: AppColor.silverText,
                               fontSize: 12,
                               fontWeight: FontWeight.w400
                           ),),
                           SizedBox(height: 6,),
                           Text('TERREX URBAN LOWijijijijijiOWijijijijijiOWijijijijijiOWijijijijiji',
                             style: TextStyle(
                                 fontSize: 18,
                                 color: AppColor.blackText,
                                 fontWeight: FontWeight.w600
                             ),
                             overflow: TextOverflow.ellipsis,
                             // maxLines: 2,
                           ),
                           SizedBox(height: 6,),

                           Text('\$ 399', style: TextStyle(
                               fontSize: 14,
                               color: AppColor.blueText,
                               fontWeight: FontWeight.w600
                           ),),
                         ],
                       ),
                     ),

                   ],
                 ),
               );
             },
             separatorBuilder: (BuildContext context, int index) {
               return const SizedBox(width: 30,);
             },
             itemCount: 5,
           ),
         ),

        ],
      ),
    );
  }
}

class RunningShoes extends StatelessWidget {
  const RunningShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Running Shoes',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class TrainingShoes extends StatelessWidget {
  const TrainingShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Training Shoes',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class BasketballShoes extends StatelessWidget {
  const BasketballShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Basketball Shoes',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class FootballShoes extends StatelessWidget {
  const FootballShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Football Shoes',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
