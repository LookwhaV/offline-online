import 'package:flutter/material.dart';
import 'package:top10_movies/TVShows_Detail.dart';
import 'package:top10_movies/online_page.dart';

class TVShows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 1.5,
                children: <Widget>[
                  _buildCard('Among Us', 'assets/among.jpg', context,
                      'เกมน่ารักที่มีลายเส้นไม่ซับซ้อน การเล่นไม่ยุ่งยาก สามารถเปิดห้องเพื่อเล่นกับเพื่อนโดยเฉพาะได้ วิธีการเล่นก็ง่าย ๆ จะมีการแบ่งออกเป็น 2 ฝั่ง คือ ฝั่งนักบินอวกาศปกติและฝั่ง Imposter โดยนักบินปกติจะต้องทำเควสในยานให้เสร็จ พร้อมทั้งหาเบาะแสของ Imposter ด้วย ขณะที่อีกฝ่าย Imposter จะต้องหาทางสังหารคนในยานให้หมดจึงจะชนะ อารมณ์คล้าย ๆ เกม Werewolf'),
                  _buildCard('Raft', 'assets/raft.jpg', context,
                      'เกมเอาชีวิตรอดในโอเพ่นเวิลด์ เป็นเกมที่สามารถเปิดให้เพื่อนเข้ามาจอยในเซิร์ฟเวอร์เดียวกันได้ วิธีการเล่นเน้นการเอาตัวรอด ทั้งการสร้างแพ การหาอาหาร การผจญภัยในท้องทะเล โดยต้องระวังฉลามที่จะเข้ามาบุกยังแพเป็นประจำทุกวัน เป็นเกมที่เหมาะกับการทำงานเป็นทีม ช่วยกันทำหน้าที่ต่าง ๆ เพื่อเอาชีวิตรอดให้ได้ยาวนาน'),
                  _buildCard('PUBG', 'assets/pubg.jpg', context,
                      'เกม PUBG เป็นเกมยิงกันที่เรียกได้ว่าเป็นที่รู้จักอันดับต้น ๆ ของคนที่ชอบเกมแนว FPS ตอนนี้ PUBG สามารถเล่นในคอมได้แล้ว แถมยังสามารถจับคู่กับเพื่อนเพื่อเล่นกับฝ่ายตรงข้ามได้ด้วย แต่ถ้าใครสนุกกับการโซโล่ก็สามารถแข่งขันกับผู้เข้าแข่งขันอีก 99 คนได้เช่นเคย'),
                  _buildCard('Dead by Daylight.', 'assets/dead.jpg', context,
                      'เกมแนวเอาชีวิตรอดที่ต้องลุ้นระทึกทุกวินาทีอย่าง Dead by Daylight สามารถเล่นเป็น Survivor กับเพื่อน ๆ ได้ง่าย ๆ เพียงจับทีมให้ครบ 4 คนก็พร้อมเข้าไปปั่นไฟแล้วหาทางหนีจากฆาตกรสุดโหดภายในเกมได้แล้ว เกมนี้จะกดเดี่ยวหรือทีมก็ได้ไม่ติดขัด แต่ถ้าเล่นครบทีม 4 คนจะมีโอกาสชนะมากกว่า'),
                  _buildCard(' Fall Guys.', 'assets/fall-guys.jpg', context,
                      'ใครชอบเกมน่ารักดุ๊กดิ๊ก ๆ ต้องลองเล่นเกม Fall Guys ที่ตัวละครน่ารักมาก เกมก็เล่นง่าย แล้วก็หัวร้อนง่ายด้วย เพียงทำมิชชั่นแต่ละด่านให้ผ่านเท่านั้น ซึ่งมิชชั่นก็จะสุ่มมาให้เล่น ทั้งเกมหนีวัว AI ที่จะพุ่งชน เกมตามล่าหาหางมาใส่ เกมขโมยไข่ฝั่งตรงข้าม ต้องเล่นเองถึงจะเข้าใจความหัวร้อนที่นุบนิบ'),
                  _buildCard('Valorant', 'assets/valorant.jpg', context,
                      'เกม FPS สุดมันส์ที่คนชอบเกมแนวยิงกันต้องเคยเล่น เกมนี้เล่นผ่านมุมมองบุคคลที่ 1 โดยเกมจะมีโหมดให้แบ่งผู้เล่นออกเป็นทีมได้ สามารถชวนเพื่อนมาเล่นด้วยกันได้ มาพร้อมฉากสวย ๆ และสกินตัวละครที่น่าเป็นเจ้าของ เกมเดียวได้ความสนุกและอิ่มใจในคราวเดียว'),
                  _buildCard('Guild War.', 'assets/guild-war.jpg', context,
                      'เกมมัลติเพลย์เยอร์บนจอ PC อีกหนึ่งเกมดี ๆ ตัวเกมสร้างออกมาในรูปแบบเกมแนว MMORPG หรือเกมทำฟาร์มเก็บเวลไปเรื่อย แล้วออกไปสู้กับกิลด์อื่น ๆ ซึ่งกิลด์ของเราเองสามารถชักชวนเพื่อนมาร่วมสนุก ร่วมช่วยกันสร้างกิลด์ให้ยิ่งใหญ่พร้อมรบกับกิลด์อื่น ๆ ได้อย่างไม่อายใคร'),
                  _buildCard('Valheim', 'assets/valheim.jpg', context,
                      'เกมแนวเอาชีวิตรอดอีกหนึ่งเกมที่ภาพสวยมาก ใครที่อยากเล่นกับเพื่อนห้ามพลาดเลย สามารถชวนเพื่อนมาร่วมผจญภัยและเอาตัวรอดไปด้วยกันได้ โดยตัวเกมจะอยู่ในยุคที่ไวกิ้งยังรุ่งเรือง การสู้รบและการเอาชีวิตรอดจึงได้กลิ่นไปนักสู่แบบเต็ม ๆ'),
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String names, String imgPath, context, spoil) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TVShowsDetail(
                        assetPath: imgPath,
                        name: names,
                        detail: spoil,
                      )));
            },
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Align(
                    alignment: Alignment(0, 0.9),
                    child: Text(
                      names,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          backgroundColor: Colors.black.withOpacity(0.75)),
                    )))));
  }
}
