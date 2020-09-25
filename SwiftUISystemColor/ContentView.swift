//
//  ContentView.swift
//  SwiftUISystemColor
//
//  Created by Shunsuke Takagi on 9/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Form {
//            ContentView2()
//                .padding(.vertical, 500.0)
//            Section(header: Text("フレーズ")) {
//                ForEach(1..<15) { a in
//                HStack {
//                    Image(systemName: "play.circle.fill")
//
//                        .buttonStyle(PlainButtonStyle())
//                        //                        .padding(.bottom, 10.0)
//                        .frame(width: nil)
//                        .font(.system(size: 30.0, weight: .thin))
//                        .foregroundColor(Color.accentColor)
//
//                    VStack(alignment: .leading) {
//                        Text("今日は晴れです")
//                        Spacer()
//                        Text("Today is summy day")
//                            .foregroundColor(Color(UIColor.secondaryLabel))
//
//                    }
//                    .padding(.leading)
//
////                    Image(systemName: "play.circle.fill")
////                        .buttonStyle(PlainButtonStyle())
////                        //                        .padding(.bottom, 10.0)
////                        .frame(width: nil)
////                        .font(.system(size: 30.0, weight: .thin))
////                        .foregroundColor(Color.accentColor)
//                }
//                .padding(.vertical)
//                }
//            }
            Section(header: Text("定義済の標準色")) {
                ColorSample(colorName: "black",     color: Color.black)
                ColorSample(colorName: "blue",      color: Color.blue)
                ColorSample(colorName: "gray",      color: Color.gray)
                ColorSample(colorName: "green",     color: Color.green)
                ColorSample(colorName: "orange",    color: Color.orange)
                ColorSample(colorName: "pink",      color: Color.pink)
                ColorSample(colorName: "purple",    color: Color.purple)
                ColorSample(colorName: "red",       color: Color.red)
                ColorSample(colorName: "white",     color: Color.white)
                ColorSample(colorName: "yellow",    color: Color.yellow)
            }
            Section(header: Text("グレー")) {
                ColorSample(colorName: "gray",   color: Color(UIColor.systemGray))
                ColorSample(colorName: "gray2",   color: Color(UIColor.systemGray2))
                ColorSample(colorName: "gray3",   color: Color(UIColor.systemGray3))
                ColorSample(colorName: "gray4",   color: Color(UIColor.systemGray4))
                ColorSample(colorName: "gray5",   color: Color(UIColor.systemGray5))
                ColorSample(colorName: "gray6",   color: Color(UIColor.systemGray6))
                
            }
            Section(header: Text("その他")) {
                ColorSample(colorName: "primary",   color: Color.primary)
                ColorSample(colorName: "secondary", color: Color.secondary)
                ColorSample(colorName: "accentColor", color: Color.accentColor)
                ColorSample(colorName: "clear",     color: Color.clear)
            }
            Section(header: Text("テキスト")) {
                ColorSample(colorName: "label",   color: Color(UIColor.label))
                ColorSample(colorName: "secondaryLabel",   color: Color(UIColor.secondaryLabel))
                ColorSample(colorName: "tertiaryLabel",   color: Color(UIColor.tertiaryLabel))
                ColorSample(colorName: "quaternaryLabel",   color: Color(UIColor.quaternaryLabel))
                
            }
            
        }
    }
}

// カラーサンプル表示カスタムView
struct ColorSample: View {
    var colorName: String
    var color: Color
    
    var body: some View {
        HStack {
            Text("Color."+colorName)
            Spacer()
            color
                .frame(width: 140)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
