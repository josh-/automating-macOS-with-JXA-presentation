ObjC.import('Cocoa')

const resultString = (result) => `Result: ${ result ? result.toString() : ''}`

ObjC.registerSubclass({
    name: 'AppDelegate',
    methods: {
        'calculate:': {
            types: ['void', ['id']],
            implementation: function (sender) {
                var total = Number(textField1.stringValue.js) + Number(textField2.stringValue.js)
                resultTextFieldLabel.stringValue = resultString(total)
            }
        }
    }
})

var appDelegate = $.AppDelegate.alloc.init

const styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask
var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
    $.NSMakeRect(0, 0, 250, 120),
    styleMask,
    $.NSBackingStoreBuffered,
    false
)

var calculateButton = $.NSButton.alloc.initWithFrame($.NSMakeRect(25, 20, 200, 25))
calculateButton.title = 'Calculate 🧙‍♂️'
calculateButton.bezelStyle = $.NSRoundedBezelStyle
calculateButton.buttonType = $.NSMomentaryLightButton
calculateButton.target = appDelegate
calculateButton.action = 'calculate:'
calculateButton.keyEquivalent = '\r'

window.contentView.addSubview(calculateButton)

var resultTextFieldLabel = $.NSTextField.alloc.initWithFrame($.NSMakeRect(25, 45, 200, 24))
resultTextFieldLabel.stringValue = resultString()
resultTextFieldLabel.drawsBackground = false
resultTextFieldLabel.editable = false
resultTextFieldLabel.bezeled = false
resultTextFieldLabel.selectable = true
window.contentView.addSubview(resultTextFieldLabel)

var textField1 = $.NSTextField.alloc.initWithFrame($.NSMakeRect(25, 80, 90, 24))
textField1.stringValue = ''
window.contentView.addSubview(textField1)

var plusTextFieldLabel = $.NSTextField.alloc.initWithFrame($.NSMakeRect(120, 80, 24, 24))
plusTextFieldLabel.stringValue = '+'
plusTextFieldLabel.drawsBackground = false
plusTextFieldLabel.editable = false
plusTextFieldLabel.bezeled = false
plusTextFieldLabel.selectable = true
window.contentView.addSubview(plusTextFieldLabel)

var textField2 = $.NSTextField.alloc.initWithFrame($.NSMakeRect(135, 80, 90, 24))
textField2.stringValue = ''
window.contentView.addSubview(textField2)

window.center
window.title = 'Scientific Calculator 🙈'
window.makeKeyAndOrderFront(window)
