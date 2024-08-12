//
//  MessageModel.swift
//  Gradient_Chat_messages
//
//  Created by vignesh kumar c on 11/08/24.
//

import Foundation
import SwiftUI

struct Messages: Identifiable {
    var id: UUID = .init()
    var message: String
    var isReply: Bool = false
}

let messsage: [Messages] = [
    .init(message: "Hai this is vignesh"),
    .init(message: "Hai vignesh", isReply: true),
    .init(message: "How's it going?"),
    .init(message: "I'm doing pretty well, thanks. How about you?", isReply: true),
    .init(message: "I'm good too, thanks. Just relaxing after a long day. So, what do you like to do in your free time?"),
    .init(message: "That sounds nice. I usually spend my free time reading or exploring new music. How about you?", isReply: true),
    .init(message: "Reading is cool! I’m more into movies and gaming. Recently got into some new series. Any book recommendations?"),
    .init(message: "Depends on what you like. I just finished a mystery novel that was pretty gripping. Are you into thrillers?", isReply: true),
    .init(message: "Absolutely! I love a good thriller. What’s the name of the book?"),
    .init(message: "It’s called The Silent Patient by Alex Michaelides. Have you heard of it?", isReply: true),
    .init(message: "Oh, I’ve heard of that one! It’s been on my to-read list for a while. Guess I should finally give it a go."),
    .init(message: "Definitely! I think you’ll enjoy it. What about movies? Seen anything good lately", isReply: true)
    
]
