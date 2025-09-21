//
//  ContentView.swift
//  picturedemo
//
//  Created by 114iosClassStudent04 on 2025/9/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background
            Color(red: 3/255, green: 140/255, blue: 252/255)
                .ignoresSafeArea()
            //Black Circle
            Circle()
                .frame(width: 310, height:310)
                .rotationEffect(Angle(degrees: 90))
                .foregroundStyle(.black)
                .offset(x:0, y:0)
            //Face
            Circle()
                .frame(width: 260, height:260)
                .rotationEffect(Angle(degrees: 80))
                .foregroundStyle(.yellow)
                .offset(x:2.5, y:2.5)
            //Mouth
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100, height:80)
                .foregroundColor(.yellow)
                .offset(x:10.5, y:95)
                .rotationEffect(Angle(degrees: 23))
            //Left Eye
            Circle()
                .frame(width: 75, height:75)
                .rotationEffect(Angle(degrees: 90))
                .foregroundStyle(.black)
                .offset(x:-60, y:12)
            //Right Eye
            Circle()
                .frame(width: 75, height:75)
                .rotationEffect(Angle(degrees: 90))
                .foregroundColor(.black)
                .offset(x:45, y:50)
            //Nose
            Rectangle()
                .trim(from: 0, to: 0.5)
                .rotationEffect(Angle(degrees: -20))
                .foregroundStyle(.black)
                .frame(width: 30, height:30)
                .offset(x:-20, y:70)
            //Left Eyebrow
            Capsule()
                .frame(width: 20, height:45)
                .rotationEffect(Angle(degrees: -30))
                .foregroundStyle(.black)
                .offset(x:-20, y:-20)
            //Right Eyebrow
            Capsule()
                .frame(width: 20, height:45)
                .rotationEffect(Angle(degrees: 73))
                .foregroundStyle(.black)
                .offset(x:37, y:-1.8)
            // Background picture
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:120, y:-180)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-120, y:-250)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-20, y:-380)
            Ellipse()
                .frame(width: 50, height:50)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:150, y:-340)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:200, y:0)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-200, y:50)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-170, y:-120)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:140, y:180)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-90, y:180)
            Ellipse()
                .frame(width: 65, height:65)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:55, y:270)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:150, y:400)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-170, y:400)
            Ellipse()
                .frame(width: 70, height:70)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:-70, y:320)
            Ellipse()
                .frame(width: 80, height:80)
                .foregroundStyle(Color(red: 3/255, green: 223/255, blue: 252/255,))
                .opacity(0.3)
                .offset(x:50, y:-280)
                
            // Stroked Text (outline effect using layered shadows)
            ZStack {
                // 底層：用多重陰影模擬描邊
                Text("Brawl Stars")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .shadow(color: .black, radius: 0, x: 1, y: 0)
                    .shadow(color: .black, radius: 0, x: -1, y: 0)
                    .shadow(color: .black, radius: 0, x: 0, y: 1)
                    .shadow(color: .black, radius: 0, x: 0, y: -1)
                    .shadow(color: .black, radius: 0, x: 1, y: 1)
                    .shadow(color: .black, radius: 0, x: -1, y: -1)
                    .shadow(color: .black, radius: 0, x: -1, y: 1)
                    .shadow(color: .black, radius: 0, x: 1, y: -1)
                
                // 上層：填色文字（與下層文字一致）
                Text("Brawl Stars")
                    .font(.largeTitle)
                    .foregroundStyle(.yellow)
            }
            .offset(x:0, y:-200)
        }
    }
}

#Preview {
    ContentView()
}
