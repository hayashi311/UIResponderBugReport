# UIResponderBugReport

## Bug: UIResponder.inputAccessoryViewController return next responder's inputViewController

UIResponder chain like following

```
UIWindow - ViewController (has inputViewController) - HRResponder (has inputAccessoryView)
```

HRResponder's `inputAccessoryViewController` return ViewController's `inputViewController`

```log
// ViewController's properties

] inputView = (null)
] inputViewController = <HRInputViewController: 0x14667d1e0>
] inputAccessoryView = (null)
] inputAccessoryViewController = (null)

// HRResponder's properties

] responder.inputView = (null)
] responder.inputViewController = <HRInputViewController: 0x14667d1e0>
] responder.inputAccessoryView = <HRInputAccessoryView: 0x14663a560; frame = (0 0; 0 0); layer = <CALayer: 0x14662f1b0>>
] responder.inputAccessoryViewController = <HRInputViewController: 0x14667d1e0> <- This should be nil

```



