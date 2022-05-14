//
//  MealTimeDishes.swift
//  FinalGroceryList
//
//  Created by iMan on 5/10/22.
//

import SwiftUI

struct MealTimeDishes: View {
    //member variables
    
    //want to get current time to display what meal the user should be eating at this time
    let date = Date()
    let calendar = Calendar.current
    var minutes:Int = 0
    var mins:Int = 0
    var hour:Int = 0
    var message:String = ""
    
    let TWELVE_AM = 0
    let EIGHT_TODAY = 480
    let TEN_THIRTY_TODAY = 630
    let TWELVE_TODAY = 720
    let ONE_THIRTY_TODAY = 810
    let TWO_THIRTY_TODAY = 870
    let THREE_FORTY_FIVE_TODAY = 945
    let SIX_TODAY = 1080
    let EIGHT_PM_TODAY = 1260
    
    init() {
        //local variables
        hour = calendar.component(.hour, from: date) //current hour
        let hourToMin = hour * 60 //converting current hour to min
        mins = (calendar.component(.minute, from: date)) //current min
        minutes = hourToMin + mins //adding converted hour to min to current min
        message = SectionMessage(hour: hour, minutes: mins) //passing current hour and min in SectionMessage() function
    }
    
    var body: some View {
        //format the view to show the dish image, dish name, meal time, and a breif description to the user
        Form {
            Section(header: Text(message)) {
                if(minutes >= EIGHT_TODAY && minutes <= TEN_THIRTY_TODAY) { //display pancakes from 8:00am - 10:30am
                    Image("pancakes")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("PANCAKES")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Breakfast")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("Breakfast time! Enjoy those yummy pancakes.")
                } else if(minutes >= TWELVE_TODAY && minutes <= ONE_THIRTY_TODAY) { //display salad from 12:00pm - 1:30pm
                    Image("salad")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("SALAD")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Lunch")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("It's the beginning of Lunch time! Enjoy your healthy bowl of fruit salad.")
                } else if(minutes >= ONE_THIRTY_TODAY && minutes < TWO_THIRTY_TODAY) { //display smoothie from 1:30pm - 2:30pm
                    Image("smoothie")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("SMOOTHIE")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Lunch")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("After salad, we have a smoothie! Enjoy a refreshing glass of smoothie.")
                } else if(minutes >= TWO_THIRTY_TODAY && minutes < THREE_FORTY_FIVE_TODAY) { //display pizza from 2:30pm - 3:45pm
                    Image("pizza")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("PIZZA")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Lunch")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("It's Lunch time! Enjoy your pizza after eating your salad your nice boawl of salad and drinking your delicious glass of smoothie.")
                } else if(minutes >= SIX_TODAY && minutes <= EIGHT_PM_TODAY) { //display sushi from 6:00pm - 8:00pm
                    Image("sushi")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("SUSHI")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Dinner")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("It's Dinner time! Enjoy your sushi.")
                        .font(.title3)
                } else if(minutes >= TWELVE_AM && minutes <= EIGHT_TODAY) { //display sleeping icon from 12:00am - 8:00am
                    Image("sleeping")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("SLEEP")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("Sleep Time")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("Good night and sweet dreams!")
                        .font(.title3)
                } else { //display groceries icon for the remaining times to represent snacks
                    Image("groceries")
                        .resizable()
                        .cornerRadius(12.0)
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("SNACKS")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    HStack(alignment: .center) {
                        Text("No Meal")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "clock")
                            .cornerRadius(12.0)
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    Text("There is no meal to be eaten currently. You can eat snacks in the meantime or wait for your next meal.")
                        .font(.title3)
                }
            }
        }
    }
    //function to display current time as we pass the current hour and minute
    func SectionMessage(hour hr:Int, minutes min:Int) -> String{
        var message:String = ""
        //depending on how many digits the our or minute is, we will add a zero before the number if it is a single digit
        if(hr < 10 && min < 10){
            message = "What to eat at 0\(hr):0\(min)"
        } else if (hr >= 10 && min < 10) {
            message = "What to eat at \(hr):0\(min)"
        } else if (hr < 10 && min >= 10) {
            message = "What to eat at 0\(hr):\(min)"
        } else if (hr >= 10 && min >= 10) {
            message = "What to eat at \(hr):\(min)"
        } else {
            message = "invalid time"
        }
        return(message)
    }
}

struct MealTimeDishes_Previews: PreviewProvider {
    static var previews: some View {
        MealTimeDishes()
    }
}
