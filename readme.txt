应用场景:登录界面或者填写信息的时候点击空白退出键盘
一般解决方案:
1.监听scrollView实时滚动代理方法调用[self.view endEditing:YES]或者[self.textField resignFirstResponse];
2.touchBegin方法里,调用[self.view endEditing:YES]或者[self.textField resignFirstResponse];
这里介绍另外一种解决方案
1.给viewController写一个分类
2.利用键盘弹出和退出发出通知调用相应的方法
3.给当前控制器添加点击手势



用法
0、创建UIViewController的分类UIViewController+DismissKeyboard.h，在分类中实现功能

1.导入头文件
#import "UIViewController+DismissKeyboard.h"

2.在viewDidLoad方法中主动调用
- (void)viewDidLoad {
[super viewDidLoad];
[self setupForDismissKeyboard];
}