# HWWeakTimer

## Description

NSTimer alternative that doesn't retain the target.


## How to Use

You can create a NSTimer with `target` and `selector` and the NSTimer will not maintain a strong reference to target:

    + (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                          target:(id)aTarget
                                        selector:(SEL)aSelector
                                        userInfo:(id)userInfo
                                         repeats:(BOOL)repeats;

Or you can use `block` to create a NSTimer:

    + (NSTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                          block:(HWTimerHandler)block
                                       userInfo:(id)userInfo
                                        repeats:(BOOL)repeats;


# License
MIT