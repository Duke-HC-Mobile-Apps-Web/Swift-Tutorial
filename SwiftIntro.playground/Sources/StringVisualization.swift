import UIKit

//taken from Swift Standard Library playground

/*:
# License
IMPORTANT:  This Apple software is supplied to you by Apple
Inc. ("Apple") in consideration of your agreement to the following
terms, and your use, installation, modification or redistribution of
this Apple software constitutes acceptance of these terms.  If you do
not agree with these terms, please do not use, install, modify or
redistribute this Apple software.

In consideration of your agreement to abide by the following terms, and
subject to these terms, Apple grants you a personal, non-exclusive
license, under Apple's copyrights in this original Apple software (the
"Apple Software"), to use, reproduce, modify and redistribute the Apple
Software, with or without modifications, in source and/or binary forms;
provided that if you redistribute the Apple Software in its entirety and
without modifications, you must retain this notice and the following
text and disclaimers in all such redistributions of the Apple Software.
Neither the name, trademarks, service marks or logos of Apple Inc. may
be used to endorse or promote products derived from the Apple Software
without specific prior written permission from Apple.  Except as
expressly stated in this notice, no other rights or licenses, express or
implied, are granted by Apple herein, including but not limited to any
patent rights that may be infringed by your derivative works or by other
works in which the Apple Software may be incorporated.

The Apple Software is provided by Apple on an "AS IS" basis.  APPLE
MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
FOR A PARTICULAR PURPOSE, REGARDING THE APPLE SOFTWARE OR ITS USE AND
OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.

IN NO EVENT SHALL APPLE BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
MODIFICATION AND/OR DISTRIBUTION OF THE APPLE SOFTWARE, HOWEVER CAUSED
AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
STRICT LIABILITY OR OTHERWISE, EVEN IF APPLE HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

Copyright (C) 2015 Apple Inc. All Rights Reserved.
*/

private enum Theme {
    enum Color {
        static let border = UIColor(red: 184/255.0, green: 201/255.0, blue: 238/255.0, alpha: 1)
        static let shade = UIColor(red: 227/255.0, green: 234/255.0, blue: 249/255.0, alpha: 1)
        static let highlight = UIColor(red: 14/255.0, green: 114/255.0, blue: 199/255.0, alpha: 1)
    }
    enum Font {
        static let codeVoice = UIFont(name: "Menlo-Regular", size: 14)!
    }
}

private struct StyledString {
    let string: String
    let shaded: Bool
    let highlighted: Bool
    let bordered: Bool
}

private extension UILabel {
    convenience init(styledString: StyledString) {
        self.init()
        text = styledString.string
        textAlignment = .Center
        font = Theme.Font.codeVoice
        textColor = styledString.highlighted ? Theme.Color.highlight : UIColor.blackColor()
        backgroundColor = styledString.shaded ? Theme.Color.shade : UIColor.whiteColor()
        if (styledString.bordered) {
            layer.borderColor = Theme.Color.border.CGColor
            layer.borderWidth = 1.0
        }
    }
}

public func visualize(str: String) -> UIView {
    return _visualize(str, range: nil)
}

public func visualize(str: String, index: String.Index) -> UIView {
    return _visualize(str, range: index...index)
}

public func visualize(str: String, range: Range<String.Index>) -> UIView {
    return _visualize(str, range: range)
}

private func _visualize(str: String, range: Range<String.Index>?) -> UIView {
    let stringIndices = str.characters.indices
    
    let styledCharacters = zip(stringIndices, str.characters).map { (characterIndex, char) -> StyledString in
        let shaded: Bool
        if let range = range where range.contains(characterIndex) {
            shaded = true
        } else {
            shaded = false
        }
        return StyledString(string: String(char), shaded: shaded, highlighted: false, bordered: true)
    }
    
    let characterLabels = styledCharacters.map { UILabel(styledString: $0) }
    
    let styledIndexes = (0..<stringIndices.count).map { index -> StyledString in
        let characterIndex = str.startIndex.advancedBy(index)
        
        let highlighted: Bool
        if let range = range where range.startIndex == characterIndex || range.last == characterIndex {
            highlighted = true
        } else {
            highlighted = false
        }
        
        return StyledString(string: String(index), shaded: false, highlighted: highlighted, bordered: false)
    }
    
    let indexLabels = styledIndexes.map { UILabel(styledString: $0) }
    
    let charStacks: [UIStackView] = zip(characterLabels, indexLabels).map { (charLabel, indexLabel) in
        let stack = UIStackView()
        stack.axis = .Vertical
        stack.distribution = .FillEqually
        stack.addArrangedSubview(indexLabel)
        stack.addArrangedSubview(charLabel)
        return stack
    }
    
    let stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 25 * charStacks.count, height: 50))
    stackView.distribution = .FillEqually
    charStacks.forEach(stackView.addArrangedSubview)
    
    return stackView
}

public let messageDates = [
    NSDate().dateByAddingTimeInterval(-2000),
    NSDate().dateByAddingTimeInterval(-1500),
    NSDate().dateByAddingTimeInterval(-500),
    NSDate()
]


