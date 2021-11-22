%hook AppDelegate
- (void)exitApp {
	
	NSLog(@"如果弹窗展示了，点击了确定即可，并不会退出APP，继续使用");
}

%end


%hook CCB_5_BaseCellViewController
- (void)showWithTitle:(id)arg1 message:(id)arg2 btnTitleArray:(id)arg3 alertType:(int)arg4 callback:(id)arg5 {
	NSLog(@"CCB_5_BaseCellViewController message为：%@", arg2);
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"]) {
		NSLog(@"不展示[手机已越狱提示弹窗]");
	} else {
		NSLog(@"执行原逻辑");
		%orig;
	}
}
%end

%hook CCBViewController
- (void)showWithTitle:(id)arg1 message:(id)arg2 btnTitleArray:(id)arg3 alertType:(int)arg4 callback:(id)arg5 {
	NSLog(@"CCBViewController message为：%@", arg2);
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"]) {
		NSLog(@"不展示[手机已越狱提示弹窗]");
	} else {
		NSLog(@"执行原逻辑");
		%orig;
	}
}

%end




%ctor {
	NSLog(@"建设银行已注入");
}