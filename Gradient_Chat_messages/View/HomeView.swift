//
//  HomeView.swift
//  Gradient_Chat_messages
//
//  Created by vignesh kumar c on 11/08/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.vertical) {
                LazyVStack(spacing: 15) {
                    ForEach(messsage) { message in
                        MessageCardView(screenProxy: proxy, message: message)
                    }
                }
                .padding(15)
            }
        }
    }
}

struct MessageCardView: View {
    var screenProxy: GeometryProxy
    var message: Messages
    var body: some View {
        VStack {
            Text(message.message)
                .padding(15)
                .foregroundColor(message.isReply ? .primary: .white)
                .background {
                    if message.isReply {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray.opacity(0.3))
                    } else {
                        GeometryReader {
                            let actualsize = $0.size
                            let rect = $0.frame(in: .global)
                            let screenSize = screenProxy.size
                            let safeArea = screenProxy.safeAreaInsets
                            
                            Rectangle()
                                .fill(.linearGradient(colors: [Color("color1"),                         Color("color1"), Color("color1"), Color("color2"),  Color("color2"), Color("color2"), Color("color3"),Color("color3")], startPoint: .top, endPoint: .bottom))
                                .mask(alignment: .topLeading) {
                                    RoundedRectangle(cornerRadius: 15)
                                        .frame(width: actualsize.width, height: actualsize.height)
                                        .offset(x: rect.minX, y: rect.minY)
                                }
                                .offset(x: -rect.minX, y: -rect.minY)
                                .frame(width: screenSize.width, height: screenSize.height + safeArea.top + safeArea.bottom)
                            
                        }
                    }
                }
                .frame(maxWidth: 250, alignment: message.isReply ? .leading : .trailing)
                .frame(maxWidth: .infinity, alignment: message.isReply ? .leading : .trailing)
        }
    }
}

#Preview {
    ContentView()
}
