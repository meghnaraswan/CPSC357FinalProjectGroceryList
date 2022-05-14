//
//  MealDisplay.swift
//  FinalGroceryList
//
//  Created by iMan on 5/10/22.
//

import SwiftUI

struct MealDisplay: View {
//    let selectedDish: Dish
    
    let calendar = Calendar.current
    let now = Date()
    
    let eight_today = calendar.date(
      bySettingHour: 8,
      minute: 0,
      second: 0,
      of: now)!

    let ten_thirty_today = calendar.date(
      bySettingHour: 10,
      minute: 30,
      second: 0,
      of: now)!
    
    let twelve_today = calendar.date(
      bySettingHour: 12,
      minute: 0,
      second: 0,
      of: now)!
    
    let one_thirty_today = calendar.date(
      bySettingHour: 13,
      minute: 30,
      second: 0,
      of: now)!
    
    let two_thirty_today = calendar.date(
      bySettingHour: 14,
      minute: 30,
      second: 0,
      of: now)!
    
    let three_forty_five_today = calendar.date(
      bySettingHour: 15,
      minute: 45,
      second: 0,
      of: now)!
    
    let six_today = calendar.date(
      bySettingHour: 18,
      minute: 0,
      second: 0,
      of: now)!
    
    let eight_today = calendar.date(
      bySettingHour: 20,
      minute: 0,
      second: 0,
      of: now)!
    
    var body: some View {
        Form {
            Section(header: Text("Dish")) {
                if(now >= eight_today && now <= ten_thirty_today) {
                    HStack {
                        Image("pancakes")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("PANCAKES")
                    }
                } else if(now >= twelve_today && now <= one_thirty_today) {
                    HStack {
                        Image("salad")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("SALAD")
                    }
                } else if(now >= one_thirty_today && now < two_thirty_today) {
                    HStack {
                        Image("smoothie")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("SMOOTHIE")
                    }
                } else if(now >= two_thirty_today && now < three_forty_five_today) {
                    HStack {
                        Image("pizza")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("PIZZA")
                    }
                } else if(now >= six_today && now <= eight_today) {
                    HStack {
                        Image("sushi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("SUSHI")
                    }
                } else {
                    HStack {
                        Image("groceries")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 60)
                        Text("GROCERIES")
                    }
                }
            }
        }
    }
}

struct MealDisplay_Previews: PreviewProvider {
    static var previews: some View {
        MealDisplay()
    }
}

//struct DisplayImage: View {
//    let calendar = Calendar.current
//    let now = Date()
//
//    let eight_today = calendar.date(
//      bySettingHour: 8,
//      minute: 0,
//      second: 0,
//      of: now)!
//
//    let ten_thirty_today = calendar.date(
//      bySettingHour: 10,
//      minute: 30,
//      second: 0,
//      of: now)!
//
//    let twelve_today = calendar.date(
//      bySettingHour: 12,
//      minute: 0,
//      second: 0,
//      of: now)!
//
//    let one_thirty_today = calendar.date(
//      bySettingHour: 13,
//      minute: 30,
//      second: 0,
//      of: now)!
//
//    let two_thirty_today = calendar.date(
//      bySettingHour: 14,
//      minute: 30,
//      second: 0,
//      of: now)!
//
//    let three_forty_five_today = calendar.date(
//      bySettingHour: 15,
//      minute: 45,
//      second: 0,
//      of: now)!
//
//    let six_today = calendar.date(
//      bySettingHour: 18,
//      minute: 0,
//      second: 0,
//      of: now)!
//
//    let eight_today = calendar.date(
//      bySettingHour: 20,
//      minute: 0,
//      second: 0,
//      of: now)!
//
//    var body: some View {
//
//        // In recent versions of Swift Date objectst are comparable, so you can
//        // do greater than, less than, or equal to comparisons on dates without
//        // needing a date extension
//
//        if(now >= eight_today && now <= ten_thirty_today) {
//            HStack {
//                Image("pancakes")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("PANCAKES")
//            }
//        } else if(now >= twelve_today && now <= one_thirty_today) {
//            HStack {
//                Image("salad")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("SALAD")
//            }
//        } else if(now >= one_thirty_today && now < two_thirty_today) {
//            HStack {
//                Image("smoothie")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("SMOOTHIE")
//            }
//        } else if(now >= two_thirty_today && now < three_forty_five_today) {
//            HStack {
//                Image("pizza")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("PIZZA")
//            }
//        } else if(now >= six_today && now <= eight_today) {
//            HStack {
//                Image("sushi")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("SUSHI")
//            }
//        } else {
//            HStack {
//                Image("groceries")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 100, height: 60)
//                Text("GROCERIES")
//            }
//        }
//    }
//}
