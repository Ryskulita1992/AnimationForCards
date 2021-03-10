//
//  ContentView.swift
//  AnimationForCards
//
//  Created by admin on 22.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false;
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 1, green: 0.7346416116, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)

            VStack{
                Text("Credit cards")
                    .font(.largeTitle).bold()
                    .padding(20)
                    .offset(x: -10)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.pink)
                ZStack{
                    Image(uiImage: #imageLiteral(resourceName: "group-1213"))
                        .shadow(color: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), radius: 40, x: 0, y:30 )
                        .offset(x: show ? -10:0)
                        .rotation3DEffect(
                            Angle(degrees:  show ? 0: 10),
                            axis: (x: 0, y: 10, z: 0))
                        .animation(Animation.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0).delay(0.1))
                    
                    
                    Image( uiImage: #imageLiteral(resourceName: "Rectangle 436"))
                        
                        .shadow(color: Color(#colorLiteral(red: 1, green: 0.3409228027, blue: 0.6895731091, alpha: 1)), radius:
                                    show ? 100: 20, x:0, y: show ? 100 : 20 )
                        .offset(x: show ?  -330 : 0)
                        .rotation3DEffect(
                            Angle(degrees:  show ? 10:0), axis: (x: 0, y: 10, z: 0))
                        .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration : 0))
                    
                }.onTapGesture {
                    self.show.toggle()
                }
                Spacer()
                
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.sizeCategory, .medium)
            
        }
        
    }
}

