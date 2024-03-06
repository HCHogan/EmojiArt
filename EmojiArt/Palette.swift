//
//  Palette.swift
//  EmojiArt
//
//  Created by Hank Hogan on 2024/3/1.
//

import Foundation

struct Palette: Codable, Identifiable, Hashable {
    var name: String
    var emojis: String
    var id = UUID()

    static var builtins: [Palette] { [
        Palette(name: "Animals", emojis: "🐶🐱🐭🐹🐰🦊🦝🐻🐼🦘🦡🐨🐯🦁🐮🐷🐽🐸🐵🙈🙉🙊🐒🦍🦧🐔🐧🐦🐤🐣🐥"),
        Palette(name: "Sports", emojis: "⚽️🏀🏈⚾️🥎🎾🏐🏉🎱🏓🏸🥅🏒🏑🥍🏏⛳️🥊🥋🎽⛸🥌🛷🛹🎿⛷🏂🪂🏋️🤼🤸🤺🥇🥈🥉🏅🎖🏆"),
        Palette(name: "Music", emojis: "🎸🎹🎻🥁🎺🎷🪕🎤🎧"),
        Palette(name: "Flora", emojis: "🌲🌳🌴🌱🌿☘️🍀🎍🎋🍃🍂🍁🍄🌾🌺🌻🌹🥀🌷🌼🌸💐🍇🍈🍉🍊🍋🍌🍍🍎🍏🍐🍑🍒🍓🥝🍅🥭🥥🥑🍆🥔🥕🌽🌶🫑🥒🥬🥦🍄🥜🌰🍞🥐🥖🫓🥨🥯🥞🧇🧀🍖🍗🥩🥓🍔🍟🍕🌭🥪🌮🌯🫔🥙🧆🥚🍳🥘🍲🫕🥣🥗🍿🧈🧂🥫🍱🍘🍙🍚🍛🍜🍝🍠🍢🍣🍤🍥🥮🍡🥟🥠🥡🦪🍦🍧🍨🍩🍪🎂🍰🧁🥧🍫🍬🍭🍮🍯🍼🥛☕️🫖🍵🍶🍾🍷🍸🍹🍺🍻🥂🥃🥤🧃🧉🧊🍼🥄🍴🍽🥢🫔🥡🥄🍴🍽🥢🫔🥡"),
        Palette(name: "Faces", emojis: "😀😃😄😁😆😅😂🤣😊😇🙂🙃😉😌😍🥰😘😗😙😚😋😛😝😜🤪🤨🧐🤓😎🥸🤩🥳😏😒😞😔😟😕🙁☹️😣😖😫😩🥺😢😭😤😠😡🤬🤯😳🥵🥶😱😨😰😥😓🤗🤔🤭🤫🤥😶😐😑😬🙄😯😦😧😮😲🥱😴🤤😪😵🤐🥴🤢🤮🤧😷🤒🤕🤑🤠😈👿👹👺🤡💩👻💀☠️👽👾🤖🎃😺😸😹😻😼😽🙀😿"),
        Palette(name: "COVID", emojis: "😷🦠🧼🧴🚿🛁🧻🧽🧹🛒🧺🧯🔥🚱🚭🔞🚷🚳🚯🚷🚸🔱📵🚯🚳🚱🚷")
    ] }
}
