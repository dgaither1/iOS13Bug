# iOS13Bug
This is a sample app to demonstrate a bug in iOS 13/Xcode 11 beta versions

Inside of this project, there is a static lib (libTestStaticLib.a) that was built with Xcode 10.2 with iOS Deployment Target set to 10.2
This static lib has a class that has the following method:

```
- (NSString *) testAvailableCommand {
    NSString *message = @"";
    if (@available(iOS 11, *)) {
        // Running iOS 11 OR NEWER
        message = @"TEST - iOS 11 or newer detected";
    } else {
        // Earlier version of iOS
        message = @"TEST - iOS version is less than 11";
    }
    return message;
}
```

# The problem
If you run the app on a simulator with iOS 13 beta, you will see in the logs that the else block was hit and the incorrect message was returned.

# Expected Behavior
The if check should return true and the first message should be returned.
