#line 1 "Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CCB_5_BaseCellViewController; @class AppDelegate; @class CCBViewController; 
static void (*_logos_orig$_ungrouped$AppDelegate$exitApp)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AppDelegate$exitApp(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$)(_LOGOS_SELF_TYPE_NORMAL CCB_5_BaseCellViewController* _LOGOS_SELF_CONST, SEL, id, id, id, int, id); static void _logos_method$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$(_LOGOS_SELF_TYPE_NORMAL CCB_5_BaseCellViewController* _LOGOS_SELF_CONST, SEL, id, id, id, int, id); static void (*_logos_orig$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$)(_LOGOS_SELF_TYPE_NORMAL CCBViewController* _LOGOS_SELF_CONST, SEL, id, id, id, int, id); static void _logos_method$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$(_LOGOS_SELF_TYPE_NORMAL CCBViewController* _LOGOS_SELF_CONST, SEL, id, id, id, int, id); 

#line 1 "Tweak.xm"

static void _logos_method$_ungrouped$AppDelegate$exitApp(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
	NSLog(@"如果弹窗展示了，点击了确定即可，并不会退出APP，继续使用");
}





static void _logos_method$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$(_LOGOS_SELF_TYPE_NORMAL CCB_5_BaseCellViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, int arg4, id arg5) {
	NSLog(@"CCB_5_BaseCellViewController message为：%@", arg2);
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"]) {
		NSLog(@"不展示[手机已越狱提示弹窗]");
	} else {
		NSLog(@"执行原逻辑");
		_logos_orig$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
	}
}



static void _logos_method$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$(_LOGOS_SELF_TYPE_NORMAL CCBViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, int arg4, id arg5) {
	NSLog(@"CCBViewController message为：%@", arg2);
	if ([arg2 containsString:@"Root"] || [arg2 containsString:@"越狱"]) {
		NSLog(@"不展示[手机已越狱提示弹窗]");
	} else {
		NSLog(@"执行原逻辑");
		_logos_orig$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
	}
}






static __attribute__((constructor)) void _logosLocalCtor_3b47fc20(int __unused argc, char __unused **argv, char __unused **envp) {
	NSLog(@"建设银行已注入");
}
static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AppDelegate = objc_getClass("AppDelegate"); MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(exitApp), (IMP)&_logos_method$_ungrouped$AppDelegate$exitApp, (IMP*)&_logos_orig$_ungrouped$AppDelegate$exitApp);Class _logos_class$_ungrouped$CCB_5_BaseCellViewController = objc_getClass("CCB_5_BaseCellViewController"); MSHookMessageEx(_logos_class$_ungrouped$CCB_5_BaseCellViewController, @selector(showWithTitle:message:btnTitleArray:alertType:callback:), (IMP)&_logos_method$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$, (IMP*)&_logos_orig$_ungrouped$CCB_5_BaseCellViewController$showWithTitle$message$btnTitleArray$alertType$callback$);Class _logos_class$_ungrouped$CCBViewController = objc_getClass("CCBViewController"); MSHookMessageEx(_logos_class$_ungrouped$CCBViewController, @selector(showWithTitle:message:btnTitleArray:alertType:callback:), (IMP)&_logos_method$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$, (IMP*)&_logos_orig$_ungrouped$CCBViewController$showWithTitle$message$btnTitleArray$alertType$callback$);} }
#line 41 "Tweak.xm"
