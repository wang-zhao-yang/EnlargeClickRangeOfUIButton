有时候需要扩大 UIButton 的点击区域，实现方法如下：

新建一个继承于 UIButton 的类，重写 `- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event;` 方法。

1. 这个函数的用处是判断当前的点击或者触摸事件的点是否在当前的 view 上
 
2. 它被 `- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event;` 调用，通过对每个子视图调用 `- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event;` 决定最终哪个视图来响应事件。如果 `- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event;` 返回 YES，则子视图的继承树就会被遍历（遍历顺序中最先响应的是与用户最接近的那个视图），子视图的子视图继续调用递归这个函数，直到找到可以响应事件的子视图（这个子视图的 `- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event;` 返回 self，其它子视图则会返回 nil）；如果 `- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event;` 返回 NO，则视图的继承树就会被忽略。

代码如下：

```
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect bounds = CGRectMake(60, -40, self.bounds.size.width, self.bounds.size.height);
    bounds = CGRectInset(bounds, -30, -20);
    return CGRectContainsPoint(bounds, point);
}
```

1. 通过修改 bounds 的 x、y 值就可以向 X 轴或者 Y 轴的某一个方向扩展

2. 当 bounds 的 x、y 值为负，则向 X 轴或者 Y 轴的正方向扩展点击区域；反之，则向 X 轴或者 Y 轴的负方向扩展点击区域

3. `CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)` 方法：通过第二个参数 dx 和第三个参数 dy 重置第一个参数 rect 作为结果返回。重置的方式为：首先将 rect 的坐标（origin）按照（dx, dy）进行平移，然后将 rect 的大小（size）宽度缩小 2 倍的 dx，高度缩小 2 倍的 dy

4. `CGRectContainsPoint(CGRect rect, CGPoint point)` 方法：判断第二个参数 point 点是否在第一个参数 rect 范围内，返回 YES，则在其范围内，否则不在其范围内。


