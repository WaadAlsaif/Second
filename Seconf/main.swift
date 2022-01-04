//
//  main.swift
//  Library1
//
//  Created by Waad Alsaif on 28/12/2021.
//

import Foundation
var UserChoice = ""
var BooksObject = Books()

RunApp()

var name=""

func RunApp(){
    
    print("              📚أهلًا وسهلًا بكم في مكتبة دار النور \n")
    print("فضلًا أدخل اسمك")
    
    if let inputname = readLine(){
        name = inputname
        
    }
    print("أهلًا وسهلًا \(name) ")
    
mainMenu()
}
//guard let userChoice = readLine()
//else {
//    return
//}
//    optionfun(userChoice)
//
//}

var userinput = ""

func mainMenu(){
   
    print("-------------------------- القائمة الرئيسية ------------------------------")
    let menu="""

    ١- شراء كتاب
    ٢- خروج
    ---------------------------------------------------------------------------------
    """
   
    
    repeat{
        
    print("اختر خدمة")
    print("-----------------------")
    print(menu)
    
        if let userInput = readLine(){
        switch userInput{
        case "١":
            BooksObject.Buy()
//        case "٢":
//            BooksObject.Browing()
        case "٢":
            Exit()
        default:
            print("أدخلت اختيار خاطئ فضلًا أدخل رقم آخر\n")
            mainMenu()
        }
        }
        
    } while userinput != "٢"
}


func SideMenue(){
    print("تصنيف الكتب ")
    let geners = """
١- غموض
٢- خيال
"""
    print(geners)
    

    }

func Exit(){
    
    print("  شكرًا لاختيارك مكتبة دار النور 💕📚")
    print("نراك بزيارة أخرى قريبًا، وداعًا ")
}




class Books{
    
    var i=1

    func NamesOfBooks(TypeOfGener: String)->String{
    
    if(TypeOfGener == "1"){
            let Mystery:[String]=["شيفرة دافنتشي","جريمة في قطار الشرق السريع","وادي الخوف","ليل لاينتهي"]
            let MysteryAuother:[String]=["دان براون","أجاثا كريستي","آرثر كونان دويل","أجاثا كريستي"]

    for (array1, array2) in zip(Mystery, MysteryAuother) {
        
       let NewArray = print("\(i)- \(array1) , \(array2)")
        i=i+1
   
    }
        print("-------------------------------------------------------------------------")
     print("اختار الكتاب الذي تريد شراءه ")
       
        guard let userChoice = readLine()
            else {
                return ""
            }
            switch userChoice{
            case "١":
                print("----------------------- سعر كتاب شفرة دافنتشي ٨٠ ريالًا---------------------------")
                Bill(Price: 80)
            case "٢":
                print("----------------------- سعر كتاب جريمة في قطار الشرق السريع ٦٠ ريالًا---------------------------")
                Bill(Price: 60)
            case "٣":
                print("----------------------- سعر كتاب وادي الخوف ٦٦ ريالًا---------------------------")
                Bill(Price: 66)
            case "٤":
                print("----------------------- سعر كتاب ليل لاينتهي ٧٤ ريالًا---------------------------")
                Bill(Price: 74)
            default:
                print("أدخلت اختيار خاطئ فضلًا أدخل رقم آخر\n")
                SideMenue()
            }
            
            
        
     } else if (TypeOfGener=="2"){
            let Fiction:[String]=["عودة الغائب","الساحرة الهجينة","بساتين عربستان"]
            let FictionAouther:[String]=["منذر قباني","أسامة المسلم","أسامة المسلم"]
        
        for (array1, array2) in zip(Fiction, FictionAouther) {
            
            print("\(i)- \(array1) , \(array2)")
            i=i+1
        }
         print("-------------------------------------------------------------------------")
      print("اختار الكتاب الذي تريد شراءه ")
        
         guard let userChoice = readLine()
             else {
                 return ""
             }
             switch userChoice{
             case "١":
                 print("----------------------- سعر كتاب عودة الغائب ٥٠ ريالًا---------------------------")
                 Bill(Price: 50)
             case "٢":
                 print("----------------------- سعر كتاب الساحرة الهجينة ٧٤ ريالًا---------------------------")
                 Bill(Price: 74)
             case "٣":
                 print("----------------------- سعر كتاب بساتتين عربستان ٦٦ ريالًا---------------------------")
                 Bill(Price: 66)
             default:
                 print("أدخلت اختيار خاطئ فضلًا أدخل رقم آخر\n")
                 SideMenue()
             }
             
        }
        
        
    return ""

    }


    func Buy(){
        
        print("\n------------ شراء كتاب ----------------")
    SideMenue()
        guard let userChoice = readLine()
        else {
            return
        }
        switch userChoice{
        case "١":
            print("----------------------- تصنيف الغموض ---------------------------")
            BooksObject.NamesOfBooks(TypeOfGener: "1")
        case "٢":
            print("----------------------- تصنيف الخيال---------------------------")
            BooksObject.NamesOfBooks(TypeOfGener: "2")
        default:
            print("أدخلت اختيار خاطئ فضلًا أدخل رقم آخر\n")
            SideMenue()
        
        }
        
    }
    
    


func Bill(Price: Int) -> Int{
    
    print("------------")
    print("فاتورة الشراء قدرها \(Price)")
    Exit()
    return Price
    
}

    
//    func Browing(){
//
//        print("-------------------------- استعارة كتاب ------------------------------")
//        SideMenue()
//        guard let userChoice = readLine()
//        else {
//            return
//        }
//        switch userChoice{
//        case "١":
//            print("----------------------- تصنيف الغموض ---------------------------")
//            BooksObject.NamesOfBooks(TypeOfGener: "1")
//
//        case "٢":
//            print("----------------------- تصنيف الخيال---------------------------")
//            BooksObject.NamesOfBooks(TypeOfGener: "2")
////            switch userChoice{
////            case "١":
////                print("أنت تريد استعارة كتاب : عودة الغائب للكاتب : منذز قباني ")
////            case "٢":
////                print("أنت تريد استعارة كتاب :  الساحرة الهجينة للكاتب : أسامة المسلم  ")
////            case "٣":
////                print("أنت تريد استعارة كتاب : بساتين عربستان للكاتب : أسامة المسلم  ")
////            default:
////                print("لقد اخترت اختيار خاطئ")
////            }
//        default:
//            print("أدخلت اختيار خاطئ فضلًا أدخل رقم آخر\n")
//            SideMenue()
//
//        }
//        }

    
    
 
//        let userChoice = readLine()
//
//
//            switch userChoice{
//            case "١":
//                    print("أنت تريد استعارة كتاب : شفرة دافنشي للكاتب : دان براون  ")
//            case "٢":
//                print("أنت تريد استعارة كتاب :جريمة في قطار الشرق السريع للكاتب : أجاثا كريستي  ")
//            case "٣":
//                print("أنت تريد استعارة كتاب :وادي الخوف للكاتب :آرثر كونان دويل ")
//            case "٤":
//                print("أنت تريد استعارة كتاب :ليل لاينتهي للكاتب : أجاثا كريستي  ")
//            default:
//                print("لقد اخترت اختيار خاطئ")
//            }


}

