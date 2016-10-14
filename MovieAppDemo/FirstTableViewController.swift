//
//  FirstTableViewController.swift
//  MovieAppDemo
//
//  Created by 翁誠宏 on 2016/10/12.
//  Copyright © 2016年 Alpha Camp. All rights reserved.
//

import UIKit

class FirstTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var movieArray = [
        ["name":"怒火地平線",
         "image":"TrainToBusan.jpg",
         "date":"2016-10-06",
         "type":"動作、劇情、懸疑/驚悚",
         "description":"★ 真實事件改編 震驚全球的海灣大爆炸 引發史上最大海洋浩劫\n★《變形金剛系列》金獎團隊 耗資億萬美金打造天崩地裂毀滅末日\n★ 驚心動魄災難電影鉅獻 動懾人心的震撼場景與動人情感直逼《明天過後》《2012》\n★ 爆炸威力可比核彈 衛星清晰可見 漏油蔓延數千公里 影響慘重如同911恐怖襲擊★ 當人類以為可以控制一切 沒想到大自然正在醞釀反撲\n★ 無良財團一味開發 透支人類的未來 卻也讓地球點燃了憤怒的火把\n★ 馬克華柏格x寇特羅素x狄倫歐布萊恩x 約翰馬可維奇 x 凱特哈德森 億萬票房卡司陣容堅強\n\n2010年，一座在美國墨西哥灣的鑽油平台發生故障，導致前所未有、威力驚人的大規模爆炸，造成多名人員傷亡、失蹤，倖存者險象環生，必須在關鍵48小時內保全性命，逃離怒火血海，搶救失蹤的工作夥伴，更要設法阻止因爆炸而引發的另一場世紀海洋生態浩劫……。\n\n毀天滅地 就在一瞬間\n\n2010年，鑽油平台「深水地平線」（Deepwater Horizon）在美國路易斯安納州墨西哥灣鑽探位於水面下5千呎深的油井，可是在4月20日上午，甲烷氣從鑽探井深處噴發，造成爆炸，引發熊熊大火，威力驚人，平台變成一團烈焰火球，即將沉入海面，平台上的126名員工性命危在旦夕，平台技師麥克威廉斯（馬克華柏格 飾）與幾名頂尖技師和工程師逃過一劫，但他們得在千鈞一髮的生死關頭救出其他同僚，設法讓傷害降到最低。眼前是茫茫火海和滾滾濃煙，周圍是一望無際的海洋，他們只能搏命奮戰，拼死求生。"],
        ["name":"為妳說的謊",
         "image":"PeculiarChildren.jpg",
         "date":"2016-10-07",
         "type":"劇情、愛情",
         "description":"★《藍色情人節》導演德瑞克席安佛蘭斯最新感人力作！\n★「萬磁王」麥可法斯賓達 X 奧斯卡新科影后艾莉西亞薇坎德定情之作！\n★ 改編自全球暢銷同名小說，強勢問鼎 2017 年奧斯卡獎項！\n★ 年度催淚鉅獻，感動超越《我就要你好好的》！\n\n《我所能為妳所做的，就是說一個美麗的謊…》\n\n在與世隔絕的傑努岩島上擔任燈塔看守人湯姆(麥可法斯賓達 飾)，與他的妻子 伊莎貝(艾莉西亞薇坎德 飾)，兩人結婚多年過著幸福的生活，卻遲遲無法擁有 孩子。某天早晨，他們在海邊漂流的小船上發現一名女嬰，毅然決定帶回家撫養， 女嬰被夫妻倆視為己出，在充滿愛的環境中快樂長大。\n\n多年後，湯姆遇見一位傷 心欲絕的寡婦漢娜(瑞秋懷茲 飾)，她的丈夫和女兒在一場意外中失去下落，湯 姆驚覺到他養女的生母可能就是漢娜。湯姆和伊莎貝在是否說出真相之間掙扎， 他們萬萬沒有想到，當初為愛所做的決定，竟改變了所有人的命運……。"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FirstTableViewCell
        
        let movieInfo = movieArray[indexPath.row]
        cell.movieImage.image = UIImage(named: movieInfo["image"]!)
        cell.movieName.text = movieInfo["name"]
        cell.movieType.text = "類型:" + movieInfo["type"]!
        cell.releaseDate.text = "上映日期:" + movieInfo["date"]!

        // Configure the cell...

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGoDetail"{
            if let detailTableViewController = segue.destination as?DetailTableViewController{
        
            if let myIndexPath = myTableView.indexPathForSelectedRow{
                
                detailTableViewController.movieInfo = movieArray[myIndexPath.row]
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath: \(indexPath.row)")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
