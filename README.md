# HJ_MLeaksFinder
MLeaksFinder 代码的copy， 解决UIalertview  的崩溃问题，因不知怎么上传到源码中，就自己copy了一份，如需删除，请及时告知；
MLeaksFinder 源码地址： https://github.com/Zepo/MLeaksFinder


[中文介绍](http://wereadteam.github.io/2016/07/20/MLeaksFinder2/) | [FAQ中文](https://github.com/Zepo/MLeaksFinder/blob/master/FAQ-CN.md)

```
pod 'HJ_MLeaksFinder'
```
MLeaksFinder comes into effect after `pod install`, there is no need to add any code nor to import any header file.

*WARNING: FBRetainCycleDetector is removed from the podspec due to Facebook's BSD-plus-Patents license. If you want to use FBRetainCycleDetector to find retain cycle, add `pod 'FBRetainCycleDetector'` to your project's Podfile and turn the macro `MEMORY_LEAKS_FINDER_RETAIN_CYCLE_ENABLED` on in `MLeaksFinder.h`.*

# Usage
MLeaksFinder can automatically find leaks in UIView and UIViewController objects. When leaks happening, it will present an alert with the leaked object in its View-ViewController stack.
```
Memory Leak
(
    MyTableViewController,
    UITableView,
    UITableViewWrapperView,
    MyTableViewCell
)
```

For the above example, we are sure that objects of `MyTableViewController`, `UITableView`, `UITableViewWrapperView` are deallocated successfully, but not the objects of `MyTableViewCell`.

## Mute Assertion
If your class is designed as singleton or for some reason objects of your class should not be dealloced, override `- (BOOL)willDealloc` in your class by returning NO.
```objc
- (BOOL)willDealloc {
    return NO;
}
```

## Find Leaks in Other Objects
MLeaksFinder finds leaks in UIView and UIViewController objects by default. However, you can extend it to find leaks in the whole object graph rooted at a UIViewController object.
```objc
- (BOOL)willDealloc {
    if (![super willDealloc]) {
        return NO;
    }
    
    MLCheck(self.viewModel);
    return YES;
}
```
