.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_TORCH_OFF:Ljava/lang/String; = "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

.field static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_SPLASH_SCREEN:Z = false

.field static final DEBUG_WAKEUP:Z = false

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_HIDE_POCKET_LOCK:I = 0x6

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field static final LONG_PRESS_POWER_TORCH:I = 0x5

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x14

.field private static final MSG_ACCESSIBILITY_TV:I = 0x16

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_BUGREPORT_TV:I = 0x15

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x17

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPATCH_VOLKEY_SKIP_TRACK:I = 0x21

.field private static final MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK:I = 0x1f

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x13

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HANDLE_ALL_APPS:I = 0x19

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_ASSIST:I = 0x1a

.field private static final MSG_LAUNCH_ASSIST_LONG_PRESS:I = 0x1b

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_NOTIFY_USER_ACTIVITY:I = 0x1d

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x1c

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1e

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x18

.field private static final MSG_TOGGLE_TORCH:I = 0x20

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PENDING_KEY_NULL:I = -0x1

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SCREENSHOT_CHORD_DELAY_TIMER:J = 0x0L

.field private static final SCROLL_BOOST_SS_ENABLE:Z

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_SPLASH_SCREENS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field private static final USER_ACTIVITY_NOTIFICATION_DELAY:I = 0xc8

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z = false

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field private static final mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field private static final mTmpRect:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private haveEnableGesture:Z

.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

.field private final mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAlarmManager:Landroid/app/AlarmManager;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field private mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

.field private mAodShowing:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mAwake:Z

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mClearedBecauseOfForceShow:Z

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field private final mDeviceKeyHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/DeviceKeyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDismissImeOnBackKeyPressed:Z

.field mDisplay:Landroid/view/Display;

.field protected mDisplayRotation:I

.field mDockLayer:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field final mDockedStackBounds:Landroid/graphics/Rect;

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mExtEventObserver:Landroid/os/UEventObserver;

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceShowSystemBars:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field private mGestureButton:Lcom/android/server/policy/GestureButton;

.field private mGestureButtonRegistered:Z

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeWakeButton:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsDeviceInPocket:Z

.field private mIsPerfBoostFlingAcquired:Z

.field private mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

.field private mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field final mLastDockedStackBounds:Landroid/graphics/Rect;

.field mLastDockedStackSysUiFlags:I

.field mLastFocusNeedsMenu:Z

.field mLastFullscreenStackSysUiFlags:I

.field mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLastWindowSleepTokenNeeded:Z

.field mLidControlsScreenLock:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field private final mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field mNavbarVisible:Z

.field mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mNotifyUserActivity:Z

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPendingWakeKey:I

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field volatile mPictureInPictureVisible:Z

.field private final mPocketCallback:Landroid/pocket/IPocketCallback;

.field private mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

.field private mPocketLockShowing:Z

.field private mPocketManager:Landroid/pocket/PocketManager;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field private mRearFlashCameraId:Ljava/lang/String;

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field private final mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

.field volatile mRequestedOrGoingToSleep:Z

.field mResettingSystemUiFlags:I

.field private mResolvedLongPressOnPowerBehavior:I

.field private mRingerToggleChord:I

.field mSafeMode:Z

.field mSafeModeEnabledVibePattern:[J

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowRotationSuggestions:I

.field mShowingDream:Z

.field mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field mStatusBarLayer:I

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field private mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

.field mSystemBooted:Z

.field mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field private mTopWindowIsKeyguard:Z

.field private mTorchEnabled:Z

.field private mTorchLongPressPowerEnabled:Z

.field private mTorchOffPendingIntent:Landroid/app/PendingIntent;

.field private mTorchTimeout:I

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field private mUseGestureButton:Z

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationAngles:I

.field mUserRotationMode:I

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrator:Landroid/os/Vibrator;

.field mVolumeAnswer:Z

.field private mVolumeMusicControl:Z

.field private mVolumeMusicControlActive:Z

.field mVolumeRockerWake:Z

.field private mVolumeWakeActive:Z

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandler"
    .end annotation
.end field

.field private mWindowSleepTokenNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 423
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 424
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 425
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 454
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 455
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_BROWSER"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_EMAIL"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CONTACTS"

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CALENDAR"

    const/16 v2, 0xd0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_MUSIC"

    const/16 v2, 0xd1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CALCULATOR"

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 484
    const-string/jumbo v0, "vendor.perf.gestureflingboost.enable"

    .line 485
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 712
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 714
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 715
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 716
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 717
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 719
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 720
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 721
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    .line 4151
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 491
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 492
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 508
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 539
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 540
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 541
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    .line 542
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 544
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    .line 545
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 546
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 548
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    .line 549
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    .line 550
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    .line 551
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    .line 553
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 557
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 562
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 569
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 579
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 580
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 598
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 606
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 611
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 612
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 621
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 636
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 638
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 639
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 640
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 643
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 664
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 665
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 666
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 667
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 677
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 693
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 695
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 698
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 699
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 700
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 701
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 705
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 709
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 731
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    .line 797
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 798
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 799
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 800
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 845
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 867
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 877
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 880
    new-instance v2, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 883
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 886
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    .line 893
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketCallback:Landroid/pocket/IPocketCallback;

    .line 1089
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1096
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    .line 1271
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1279
    new-instance v1, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v1}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 1281
    new-instance v1, Lcom/android/server/policy/BarController;

    const-string v3, "NavigationBar"

    const/high16 v4, 0x8000000

    const/high16 v5, 0x20000000

    const/high16 v6, -0x80000000

    const/4 v7, 0x2

    const/high16 v8, 0x8000000

    const v9, 0x8000

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 1289
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 1297
    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    .line 1305
    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    .line 2046
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 2091
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 2277
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 5089
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 7545
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 7566
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 7581
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 7602
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 8604
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 8728
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDevicePocketStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSkipTrackEventToStatusBar(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMusicControlActive:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleTorch()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/util/ScreenshotHelper;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTopAppGame()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .line 334
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$4602(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    return p0
.end method

.method static synthetic access$4702(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 0

    .line 334
    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$5100(I)Z
    .locals 0

    .line 334
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/String;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelTorchOff()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V
    .locals 0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1915
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .locals 3

    .line 3811
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3812
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3813
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3814
    if-nez v1, :cond_0

    .line 3815
    return-void

    .line 3817
    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3818
    if-nez v0, :cond_1

    .line 3819
    return-void

    .line 3823
    :cond_1
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3824
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3825
    invoke-virtual {p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 3826
    return-void
.end method

.method private static adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 0

    .line 9886
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9887
    :goto_0
    invoke-static {p0, p1}, Landroid/view/WindowManagerPolicyControl;->adjustClearableFlags(Landroid/view/WindowManager$LayoutParams;I)I

    move-result p0

    return p0
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .locals 0

    .line 9891
    packed-switch p0, :pswitch_data_0

    .line 9899
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9897
    :pswitch_0
    const-string/jumbo p0, "true"

    return-object p0

    .line 9895
    :pswitch_1
    const-string p0, "false"

    return-object p0

    .line 9893
    :pswitch_2
    const-string/jumbo p0, "unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyForceImmersiveMode(ILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    .line 5726
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 5727
    iget-object v0, p3, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 5729
    :cond_0
    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 5730
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5731
    iget-object p1, p3, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5733
    :cond_1
    iget-object p1, p3, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 5736
    :cond_2
    :goto_0
    return-void
.end method

.method private applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1

    .line 6400
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6401
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 6402
    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    .line 6404
    :cond_0
    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 6407
    :cond_1
    :goto_0
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 4

    .line 8799
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 8800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    .line 8802
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    if-eqz v0, :cond_1

    .line 8803
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 8806
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8807
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 8808
    monitor-exit v0

    .line 8809
    return-void

    .line 8808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 0

    .line 5739
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_0

    .line 5740
    return-void

    .line 5744
    :cond_0
    and-int/lit16 p1, p2, 0x400

    if-eqz p1, :cond_1

    .line 5745
    iget-object p1, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5747
    :cond_1
    iget-object p1, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5749
    :goto_0
    return-void
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    .line 9474
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    return v0
.end method

.method private static awakenDreams()V
    .locals 1

    .line 4119
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 4120
    if-eqz v0, :cond_0

    .line 4122
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4125
    goto :goto_0

    .line 4123
    :catch_0
    move-exception v0

    .line 4127
    :cond_0
    :goto_0
    return-void
.end method

.method private backLongPress()V
    .locals 2

    .line 1892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1894
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->unpinActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    return-void

    .line 1898
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1902
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_1

    .line 1903
    const/4 v0, 0x0

    goto :goto_0

    .line 1904
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 1905
    :goto_0
    if-nez v0, :cond_2

    .line 1906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1907
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1900
    :pswitch_1
    nop

    .line 1911
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindKeyguard()V
    .locals 2

    .line 8528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8529
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    .line 8530
    monitor-exit v0

    return-void

    .line 8532
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 8533
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8534
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 8535
    return-void

    .line 8533
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2

    .line 5289
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5290
    sget-object p3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 5291
    sget-object p3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 5292
    sget-object p3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p4

    .line 5293
    sget-object p4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v0

    .line 5294
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 5295
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    .line 5296
    invoke-virtual {p2, p3, p4, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 5297
    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2928
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2927
    :goto_0
    return v0
.end method

.method private canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    .line 5752
    nop

    .line 5753
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5754
    move v0, v2

    goto :goto_0

    .line 5753
    :cond_0
    nop

    .line 5754
    move v0, v1

    .line 5755
    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    .line 5756
    move p1, v2

    goto :goto_1

    .line 5755
    :cond_1
    nop

    .line 5756
    move p1, v1

    :goto_1
    xor-int/2addr p1, v0

    .line 5757
    if-nez p1, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .locals 2

    .line 2039
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2040
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    .line 1703
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    .line 1704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1705
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    :cond_0
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .line 1688
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_1

    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1690
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1697
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    :cond_2
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .locals 2

    .line 2043
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2044
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .line 2035
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2036
    return-void
.end method

.method private cancelTorchOff()V
    .locals 2

    .line 9812
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 9813
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 9816
    :cond_0
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9211
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 9212
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 9214
    invoke-static {p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p3

    const/high16 v1, -0x80000000

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9217
    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    .line 9222
    if-eqz p3, :cond_1

    move-object p0, p2

    :cond_1
    return-object p0

    .line 9225
    :cond_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 9230
    :cond_3
    if-nez p3, :cond_4

    .line 9232
    return-object p1

    .line 9237
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p0

    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 9239
    return-object p2

    .line 9242
    :cond_5
    return-object p1

    .line 9227
    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, v0

    :goto_2
    return-object p2
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .line 9444
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v0, 0x7

    .line 9445
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 9446
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 9447
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 9449
    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZ)I
    .locals 1

    .line 9414
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    if-nez v0, :cond_1

    .line 9415
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_4

    .line 9416
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    .line 9418
    :cond_1
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 9419
    if-eqz p4, :cond_2

    .line 9420
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    .line 9421
    :cond_2
    if-eqz p3, :cond_3

    .line 9422
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_0

    .line 9424
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 9428
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result p2

    if-nez p2, :cond_5

    .line 9429
    const p2, 0x7fffffff

    and-int/2addr p1, p2

    .line 9431
    :cond_5
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    .line 3130
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3133
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3136
    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    .line 5025
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5026
    if-eqz v0, :cond_0

    .line 5027
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 5029
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 11

    .line 7436
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7437
    return-void

    .line 7439
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 7440
    const/16 v4, 0x1005

    .line 7442
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 7443
    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7454
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v5

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const-string v10, "WindowManager"

    const/16 v8, 0x1005

    invoke-interface/range {v5 .. v10}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7458
    goto :goto_0

    .line 7456
    :catch_0
    move-exception p1

    .line 7457
    const-string v0, "WindowManager"

    const-string v1, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7459
    goto :goto_0

    .line 7446
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move-object v5, v9

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7450
    goto :goto_0

    .line 7448
    :catch_1
    move-exception p1

    .line 7449
    const-string v0, "WindowManager"

    const-string v1, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7451
    goto :goto_0

    .line 7462
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 7463
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v5

    const/16 v6, 0x65

    const/high16 v7, -0x80000000

    const-string v10, "WindowManager"

    const/16 v8, 0x1005

    invoke-interface/range {v5 .. v10}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 7469
    :cond_2
    goto :goto_0

    .line 7467
    :catch_2
    move-exception p1

    .line 7468
    const-string v0, "WindowManager"

    const-string v1, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7472
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 4763
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/DeviceKeyHandler;

    .line 4768
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/os/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4769
    if-nez v1, :cond_0

    .line 4770
    const/4 p1, 0x1

    return p1

    .line 4774
    :cond_0
    nop

    .line 4775
    move-object p1, v1

    goto :goto_1

    .line 4772
    :catch_0
    move-exception v1

    .line 4773
    const-string v2, "WindowManager"

    const-string v3, "Could not dispatch event to device key handler"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4775
    :goto_1
    goto :goto_0

    .line 4776
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    .line 1918
    if-eqz p1, :cond_0

    .line 1919
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 1921
    :cond_0
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9962
    packed-switch p0, :pswitch_data_0

    .line 9968
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9966
    :pswitch_0
    const-string p0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object p0

    .line 9964
    :pswitch_1
    const-string p0, "DOUBLE_TAP_HOME_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    .line 9393
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/StatusBarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9394
    return v1

    .line 9396
    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 9397
    return v0

    .line 9400
    :cond_1
    nop

    .line 9401
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 9402
    move v2, v0

    goto :goto_0

    .line 9401
    :cond_2
    nop

    .line 9402
    move v2, v1

    .line 9403
    :goto_0
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr p2, v3

    if-eqz p2, :cond_3

    .line 9405
    move p2, v0

    goto :goto_1

    .line 9403
    :cond_3
    nop

    .line 9405
    move p2, v1

    :goto_1
    if-nez p2, :cond_5

    if-eqz v2, :cond_4

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    nop

    :cond_5
    :goto_2
    return v0
.end method

.method private enablePointerLocation()V
    .locals 3

    .line 3103
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_1

    .line 3104
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 3105
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 3106
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 3109
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3110
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3114
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3115
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3116
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3117
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3120
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3121
    const-string v1, "PointerLocation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3122
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3123
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 3124
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3125
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3127
    :cond_1
    return-void
.end method

.method private enableSwipeThreeFingerGesture(Z)V
    .locals 1

    .line 2797
    if-eqz p1, :cond_1

    .line 2798
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-eqz p1, :cond_0

    return-void

    .line 2799
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 2800
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    goto :goto_0

    .line 2802
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    if-nez p1, :cond_2

    return-void

    .line 2803
    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->haveEnableGesture:Z

    .line 2804
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2806
    :goto_0
    return-void
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .locals 2

    .line 9904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9905
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 9906
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9908
    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 9909
    const-string/jumbo p0, "sleep|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9912
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 9913
    if-nez p0, :cond_2

    .line 9914
    const-string p0, "<nothing>"

    return-object p0

    .line 9917
    :cond_2
    const/4 v1, 0x0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    .line 7739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7740
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7744
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7745
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    .line 7746
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7748
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7749
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7753
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 7755
    return-void

    .line 7741
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 7749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private finishPowerKeyPress()V
    .locals 1

    .line 1680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1681
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1682
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1685
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    .line 7856
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7859
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7860
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7863
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7871
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 7877
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7878
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7879
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7883
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_1

    .line 7884
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 7885
    nop

    .line 7886
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_2

    .line 7887
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 7888
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    .line 7891
    :cond_1
    nop

    .line 7893
    move v2, v4

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7895
    if-eqz v0, :cond_3

    .line 7896
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 7899
    :cond_3
    if-eqz v2, :cond_4

    .line 7901
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 7903
    goto :goto_1

    .line 7902
    :catch_0
    move-exception v0

    .line 7905
    :cond_4
    :goto_1
    return-void

    .line 7873
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v1

    return-void

    .line 7893
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 7860
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    .line 7844
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7845
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7849
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7850
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7852
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 7853
    return-void

    .line 7846
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 7850
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAccessibilityShortcutTimeout()J
    .locals 5

    .line 2013
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2015
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2014
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    .line 2016
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v0

    goto :goto_0

    .line 2017
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v0

    .line 2014
    :goto_0
    return-wide v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .line 4139
    const-string v0, "audio"

    .line 4140
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4139
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 4141
    if-nez v0, :cond_0

    .line 4142
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    :cond_0
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1

    .line 3830
    if-nez p2, :cond_0

    .line 3832
    return-object p1

    .line 3835
    :cond_0
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3836
    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 3837
    if-nez p2, :cond_1

    .line 3840
    const/4 p1, 0x0

    return-object p1

    .line 3843
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .line 4130
    const-string v0, "dreams"

    .line 4131
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4130
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 3

    .line 2183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    .line 2184
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2185
    return-object v1

    .line 2187
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 2189
    nop

    .line 2190
    if-eqz v0, :cond_1

    .line 2191
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    goto :goto_0

    .line 2193
    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 2195
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 5

    .line 3419
    nop

    .line 3420
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3421
    const/16 v0, 0x200

    goto :goto_0

    .line 3423
    :cond_0
    move v0, v2

    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    .line 3425
    :cond_1
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne p1, v2, :cond_3

    .line 3428
    :cond_2
    or-int/lit16 v0, v0, 0x400

    .line 3430
    :cond_3
    return v0
.end method

.method private getKeyguardDrawnTimeout()J
    .locals 2

    .line 7779
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 7780
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 7782
    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    return-wide v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 0

    .line 8524
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object p0

    return-object p0
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .line 1812
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1813
    const/4 v0, 0x3

    return v0

    .line 1815
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1816
    const/4 v0, 0x2

    return v0

    .line 1818
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 0

    .line 3557
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    aget p1, p2, p1

    return p1
.end method

.method private getNavigationBarWidth(II)I
    .locals 0

    .line 3531
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    aget p1, p2, p1

    return p1
.end method

.method private static getPrivateWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 0

    .line 9881
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 9882
    :goto_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p0, p1}, Landroid/view/WindowManagerPolicyControl;->getPrivateWindowFlags(ILandroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method private getRearFlashCameraId()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 9840
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    return-object v0

    .line 9841
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 9842
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 9843
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 9844
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9845
    if-eqz v5, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 9846
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    .line 9841
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9849
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRearFlashCameraId:Ljava/lang/String;

    return-object v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .line 1940
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    const/4 v0, 0x3

    return v0

    .line 1943
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchLongPressPowerEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1944
    :cond_1
    const/4 v0, 0x5

    return v0

    .line 1946
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    if-eqz v0, :cond_3

    .line 1947
    const/4 v0, 0x6

    return v0

    .line 1949
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .locals 2

    .line 2031
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScaledNavbarSize(II)I
    .locals 1

    .line 2919
    int-to-float p2, p2

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    .line 2021
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    const/high16 v0, 0x40200000    # 2.5f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2024
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 2023
    return-wide v0

    .line 2026
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .line 4971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 4972
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4974
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private static getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    .line 9869
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 9870
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result p0

    goto :goto_1

    .line 9871
    :cond_1
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr p0, v0

    .line 9872
    :goto_1
    invoke-static {p0, p1}, Landroid/view/WindowManagerPolicyControl;->getSystemUiVisibility(ILandroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 4

    .line 9033
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_1

    .line 9064
    return-object v2

    .line 9054
    :pswitch_0
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9043
    :pswitch_1
    invoke-static {v0, v3}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9057
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 9058
    goto :goto_0

    .line 9036
    :pswitch_3
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9049
    :pswitch_4
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9052
    :pswitch_5
    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9060
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 9061
    nop

    .line 9066
    :goto_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 9068
    return-object v2

    .line 9069
    :cond_1
    array-length v0, p1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 9071
    aget-wide v0, p1, v3

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    .line 9074
    :cond_2
    invoke-static {p1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 0

    .line 9876
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 9877
    :goto_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p0, p1}, Landroid/view/WindowManagerPolicyControl;->getWindowFlags(ILandroid/view/WindowManager$LayoutParams;)I

    move-result p0

    return p0
.end method

.method private goToSleep(JII)V
    .locals 1

    .line 1761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1762
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1763
    return-void
.end method

.method private handleDevicePocketStateChanged()V
    .locals 2

    .line 7915
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onDevicePocketStateChanged(Z)V

    .line 7916
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    if-eqz v0, :cond_0

    .line 7917
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPocketLock()V

    goto :goto_0

    .line 7919
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hidePocketLock()V

    .line 7921
    :goto_0
    return-void
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .line 2256
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2257
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 2258
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 2260
    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 2

    .line 7974
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7975
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    .line 7976
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 7977
    monitor-exit v0

    return-void

    .line 7979
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7981
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 7983
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7986
    :cond_1
    return-void

    .line 7979
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleLongPressOnHome(I)V
    .locals 2

    .line 2221
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v0, :cond_0

    .line 2222
    return-void

    .line 2224
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 2225
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 2226
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 2234
    const-string p1, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined home long press behavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2231
    :pswitch_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2232
    goto :goto_0

    .line 2228
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    .line 2229
    nop

    .line 2237
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRingerChordGesture()V
    .locals 3

    .line 1320
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    .line 1321
    return-void

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 1324
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 1327
    return-void
.end method

.method private handleShortPressOnHome()V
    .locals 2

    .line 2160
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 2161
    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 2167
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2169
    return-void

    .line 2173
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 2174
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .locals 4

    .line 4897
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4900
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 4901
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4902
    const/4 p1, 0x5

    return p1

    .line 4905
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 4909
    :cond_1
    return v1
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 1

    .line 1961
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 1

    .line 1953
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .locals 1

    .line 1957
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hidePocketLock()V
    .locals 2

    .line 7958
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 7967
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

    invoke-virtual {v0}, Lcom/android/server/policy/pocket/PocketLock;->hide()V

    .line 7968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    .line 7970
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    invoke-virtual {v1, v0}, Landroid/pocket/PocketManager;->setPocketLockVisible(Z)V

    .line 7971
    return-void

    .line 7960
    :cond_1
    :goto_0
    return-void
.end method

.method private hideRecentApps(ZZ)V
    .locals 1

    .line 5032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5033
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5034
    if-eqz v0, :cond_0

    .line 5035
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 5037
    :cond_0
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9930
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 9931
    const-string p0, "hangup"

    return-object p0

    .line 9933
    :cond_0
    const-string p0, "<nothing>"

    return-object p0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9922
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 9923
    const-string p0, "hangup"

    return-object p0

    .line 9925
    :cond_0
    const-string/jumbo p0, "sleep"

    return-object p0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .locals 2

    .line 4728
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 4729
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_0

    .line 4730
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 4731
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 4734
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 p2, 0x16

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz p1, :cond_2

    .line 4735
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez p1, :cond_3

    .line 4736
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 4737
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 4738
    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4739
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4740
    goto :goto_1

    .line 4741
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz p1, :cond_3

    .line 4742
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4743
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 4746
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return p1
.end method

.method private interceptAccessibilityShortcutChord()V
    .locals 6

    .line 1981
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_0

    .line 1984
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1985
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1989
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1991
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    .line 1990
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1994
    :cond_0
    return-void
.end method

.method private interceptBackKeyDown()V
    .locals 4

    .line 1453
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "key_back_down"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1457
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1460
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1461
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1460
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1463
    :cond_0
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1471
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1473
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_1

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1476
    if-eqz v1, :cond_1

    .line 1477
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1480
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1483
    const/4 p1, 0x0

    return p1

    .line 1484
    :cond_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1486
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1489
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p1

    return p1

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 1495
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    :cond_2
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .locals 2

    .line 4702
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 4703
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_0

    .line 4704
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 4705
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 4708
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 p2, 0x15

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz p1, :cond_2

    .line 4709
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez p1, :cond_3

    .line 4710
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 4711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 4712
    invoke-virtual {p2, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4713
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4714
    goto :goto_1

    .line 4715
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz p1, :cond_3

    .line 4716
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4717
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 4720
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return p1
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 4

    .line 4862
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 4863
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4864
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide p1

    .line 4866
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    .line 4867
    return v1

    .line 4870
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 11

    .line 1503
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1508
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    if-eqz v0, :cond_2

    .line 1511
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1508
    :cond_2
    nop

    .line 1511
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v3, :cond_3

    .line 1512
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1517
    :cond_3
    if-nez v0, :cond_5

    .line 1520
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v9

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 1522
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v10

    .line 1520
    move v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v3

    .line 1524
    if-eqz v3, :cond_4

    .line 1525
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    :cond_4
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v3, :cond_5

    .line 1530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_5

    .line 1531
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1532
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1533
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1534
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 1539
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v5, v4}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1543
    nop

    .line 1544
    if-eqz v3, :cond_7

    .line 1545
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1548
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_1

    .line 1549
    :cond_6
    if-nez v0, :cond_7

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 1551
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    .line 1554
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    goto :goto_2

    .line 1559
    :cond_7
    :goto_1
    move v3, v1

    .line 1560
    :goto_2
    if-nez v0, :cond_8

    .line 1561
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    .line 1563
    if-eqz v0, :cond_8

    .line 1564
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v0, p1, p2, v4}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v0

    .line 1566
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v4, v4, Landroid/util/MutableBoolean;->value:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v4, :cond_9

    .line 1567
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    goto :goto_3

    .line 1573
    :cond_8
    move v0, v1

    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1577
    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v3, :cond_b

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    goto :goto_5

    :cond_b
    :goto_4
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1579
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_14

    .line 1580
    const/16 v0, 0x1c

    const/16 v1, 0xe

    if-eqz p2, :cond_e

    .line 1583
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 1584
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_c

    .line 1585
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_7

    .line 1587
    :cond_c
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1588
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1589
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1590
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1591
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v3

    .line 1590
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1593
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1594
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1595
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1596
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1598
    :cond_d
    goto :goto_7

    .line 1601
    :cond_e
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz p2, :cond_12

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1602
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_f

    .line 1603
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_6

    .line 1605
    :cond_f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1606
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    const/4 v3, 0x5

    if-eq p2, v3, :cond_10

    .line 1607
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1609
    :cond_10
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1610
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1611
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1612
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v3

    .line 1611
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1614
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1615
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1616
    invoke-virtual {p1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1617
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1621
    :cond_11
    :goto_6
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_7

    .line 1623
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1625
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p1

    .line 1627
    if-gt p1, v2, :cond_13

    .line 1628
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_7

    .line 1630
    :cond_13
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1635
    :cond_14
    :goto_7
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 4

    .line 1650
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1651
    :cond_0
    move p3, v0

    goto :goto_1

    .line 1650
    :cond_1
    :goto_0
    nop

    .line 1651
    move p3, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1652
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1653
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1655
    if-nez p3, :cond_3

    .line 1657
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1659
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p3

    .line 1660
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 1661
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge p1, p3, :cond_2

    .line 1664
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 p3, 0xd

    .line 1665
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1664
    invoke-virtual {p1, p3, p2, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1666
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1667
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1668
    return-void

    .line 1672
    :cond_2
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v2, v3, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1676
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1677
    return-void
.end method

.method private interceptRingerToggleChord()V
    .locals 6

    .line 1997
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    .line 1999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2000
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 2004
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2007
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    .line 2006
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2010
    :cond_0
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .line 1965
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    .line 1968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1969
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1973
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1974
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1978
    :cond_0
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 2

    .line 7265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7266
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 7267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7268
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    .line 7269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 7273
    :cond_1
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1

    .line 8481
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static isDockSideAllowed(IIIZ)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8147
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 8148
    return v1

    .line 8151
    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 8153
    if-ne p0, v1, :cond_1

    if-eq p2, v0, :cond_2

    :cond_1
    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    if-ne p2, v1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    .line 8158
    :cond_4
    if-ne p0, p1, :cond_5

    .line 8159
    return v1

    .line 8163
    :cond_5
    if-ne p0, v1, :cond_6

    if-ne p1, v0, :cond_6

    .line 8164
    return v1

    .line 8166
    :cond_6
    return v2
.end method

.method private isDozeMode()Z
    .locals 2

    .line 1638
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 1640
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1641
    const/4 v0, 0x1

    return v0

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    return v1

    .line 1645
    :cond_0
    nop

    .line 1646
    return v1
.end method

.method private isHidden(I)Z
    .locals 2

    .line 3442
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3448
    return v1

    .line 3446
    :pswitch_0
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 3444
    :pswitch_1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isHwKeysDisabled()Z
    .locals 1

    .line 6718
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/HardkeyActionHandler;->isHwKeysDisabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImmersiveMode(I)Z
    .locals 1

    .line 9453
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0x1800

    if-eqz p1, :cond_0

    .line 9456
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9453
    :goto_0
    return p1
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 1

    .line 8477
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isNavBarEmpty(I)Z
    .locals 1

    .line 9464
    const/high16 v0, 0x1600000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRoundWindow()Z
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isStatusBarKeyguard()Z
    .locals 1

    .line 6590
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6591
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6590
    :goto_0
    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 3

    .line 8998
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isTopAppGame()Z
    .locals 4

    .line 2292
    nop

    .line 2294
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2, v0}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v1

    .line 2295
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2296
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2297
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2296
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2298
    if-eqz v1, :cond_2

    .line 2299
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v2, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 2305
    :cond_1
    :goto_0
    move v0, v3

    .line 2306
    :cond_2
    :goto_1
    return v0

    .line 2303
    :catch_0
    move-exception v1

    .line 2304
    return v0
.end method

.method private isTvUserSetupComplete()Z
    .locals 4

    .line 2154
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1

    .line 7318
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 7324
    const/4 p0, 0x1

    return p0

    .line 7322
    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xdf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isVolumeKey(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 7431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    .line 7432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 7431
    :goto_1
    return p1
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3

    .line 7336
    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xde

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 7362
    return v2

    .line 7340
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeRockerWake:Z

    if-eqz p1, :cond_0

    .line 7341
    return v2

    .line 7344
    :cond_0
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 7360
    :cond_2
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$beginLayoutLw$2(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    .line 5359
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 3

    .line 1298
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 1299
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "WindowSleepToken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 1303
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 1307
    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 1310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 1311
    return-void
.end method

.method private launchAllAppsAction()V
    .locals 5

    .line 2240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2241
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2243
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2244
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2248
    if-eqz v1, :cond_0

    .line 2249
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2252
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2253
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 2

    .line 4933
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4934
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4936
    return-void

    .line 4938
    :cond_0
    const/4 v0, 0x0

    .line 4939
    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1

    .line 4940
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4941
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4943
    :cond_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0xf

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 4946
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SearchManager;

    .line 4947
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, p1, v1, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 4949
    :cond_2
    if-eqz p1, :cond_4

    .line 4950
    if-nez v0, :cond_3

    .line 4951
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4953
    :cond_3
    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4955
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p1

    .line 4956
    if-eqz p1, :cond_5

    .line 4957
    invoke-interface {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 4960
    :cond_5
    :goto_0
    return-void
.end method

.method private launchAssistLongPressAction()V
    .locals 3

    .line 4913
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 4914
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4917
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4918
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4922
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 4923
    if-eqz v1, :cond_0

    .line 4924
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 4926
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4929
    goto :goto_0

    .line 4927
    :catch_0
    move-exception v0

    .line 4928
    const-string v1, "WindowManager"

    const-string v2, "No activity to handle assist long press action."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4930
    :goto_0
    return-void
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5537
    move/from16 v6, p7

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 5538
    return v8

    .line 5540
    :cond_0
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v7

    .line 5544
    iget v9, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 5545
    iget v10, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 5546
    iget v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 5547
    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 5548
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 5549
    invoke-direct {v0, v11, v10, v9}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v14

    iput v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 5551
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-eq v15, v14, :cond_1

    .line 5552
    invoke-direct {v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->notifyLeftInLandscapeChanged(Z)V

    goto :goto_0

    .line 5553
    :cond_1
    if-eq v13, v14, :cond_2

    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v13, v14, :cond_2

    .line 5555
    invoke-direct {v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->notifyLeftInLandscapeChanged(Z)V

    .line 5557
    :cond_2
    :goto_0
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    .line 5558
    iget-object v15, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5559
    iget-object v15, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5561
    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v14, 0x4

    if-ne v15, v14, :cond_6

    .line 5563
    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    .line 5564
    invoke-direct {v0, v9, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v10, v2

    .line 5565
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v8, v10, v11, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 5566
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 5567
    if-eqz v7, :cond_3

    .line 5568
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    .line 5569
    :cond_3
    const/4 v7, 0x1

    if-eqz p4, :cond_4

    .line 5570
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5571
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    iput v10, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 5575
    :cond_4
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5577
    :goto_1
    if-eqz p4, :cond_5

    if-nez p5, :cond_5

    if-nez p6, :cond_5

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5578
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5579
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5582
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 5584
    :cond_5
    goto/16 :goto_4

    :cond_6
    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_a

    .line 5586
    iget v11, v13, Landroid/graphics/Rect;->right:I

    .line 5587
    invoke-direct {v0, v9, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v11, v2

    .line 5588
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v11, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 5589
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v11, v8, Landroid/graphics/Rect;->right:I

    iput v11, v2, Landroid/graphics/Rect;->right:I

    .line 5590
    if-eqz v7, :cond_7

    .line 5591
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    .line 5592
    :cond_7
    const/4 v7, 0x1

    if-eqz p4, :cond_8

    .line 5593
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5594
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v11, v6, Landroid/graphics/Rect;->right:I

    iput v11, v2, Landroid/graphics/Rect;->right:I

    iput v11, v12, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 5598
    :cond_8
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5600
    :goto_2
    if-eqz p4, :cond_9

    if-nez p5, :cond_9

    if-nez p6, :cond_9

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5601
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5602
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_9

    .line 5605
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v11, v2, Landroid/graphics/Rect;->right:I

    .line 5607
    :cond_9
    goto :goto_4

    :cond_a
    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_d

    .line 5609
    iget v11, v13, Landroid/graphics/Rect;->left:I

    .line 5610
    invoke-direct {v0, v9, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v2

    add-int/2addr v11, v2

    .line 5611
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v9, v8, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 5612
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v11, v8, Landroid/graphics/Rect;->left:I

    iput v11, v2, Landroid/graphics/Rect;->left:I

    .line 5613
    if-eqz v7, :cond_b

    .line 5614
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    .line 5615
    :cond_b
    const/4 v7, 0x1

    if-eqz p4, :cond_c

    .line 5616
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5617
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v11, v6, Landroid/graphics/Rect;->left:I

    iput v11, v2, Landroid/graphics/Rect;->left:I

    iput v11, v12, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 5621
    :cond_c
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v6}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5623
    :goto_3
    if-eqz p4, :cond_d

    if-nez p5, :cond_d

    if-nez p6, :cond_d

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5624
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5625
    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_d

    .line 5628
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v11, v2, Landroid/graphics/Rect;->left:I

    .line 5634
    :cond_d
    :goto_4
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5635
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5636
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5637
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 5639
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v13, 0x0

    move-object/from16 v9, p3

    invoke-interface/range {v3 .. v13}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5643
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 5646
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v0

    return v0
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5394
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5395
    return-void

    .line 5398
    :cond_0
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 5399
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 5400
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 5401
    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 5403
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_9

    .line 5404
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5405
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_8

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_1

    .line 5407
    goto/16 :goto_1

    .line 5410
    :cond_1
    iget-object v15, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v18, 0x0

    move-object v8, v7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p3

    move-object/from16 v12, p3

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v17, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p3

    invoke-interface/range {v8 .. v18}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5414
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    .line 5416
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_4

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_4

    .line 5418
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_2

    .line 5420
    iget v7, v8, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 5421
    :cond_2
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_3

    .line 5423
    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    .line 5425
    :cond_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on left or top of display. frame="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " displayWidth="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayHeight="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5429
    :cond_4
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_7

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_7

    .line 5431
    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_5

    .line 5433
    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5434
    :cond_5
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_6

    .line 5436
    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 5438
    :cond_6
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on right or bottom of display. frame="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " displayWidth="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayHeight="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5444
    :cond_7
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not docked on one of the sides of the display. frame="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " displayWidth="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayHeight="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 5450
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5451
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5452
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5453
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5454
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5455
    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5456
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5461
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 5462
    return v4

    .line 5465
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v5, p4

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5466
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v7, p3

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5467
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v6, p2

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5468
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v13, p5

    invoke-virtual {v13, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5470
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 5473
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v14, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v15, 0x0

    move-object v8, v13

    move-object v9, v13

    move-object v10, v13

    move-object/from16 v11, p6

    move-object v12, v13

    invoke-interface/range {v5 .. v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5479
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v6, v6, v7

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 5482
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 5486
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5487
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 5488
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 5489
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 5490
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 5492
    const/high16 v3, 0x4000000

    and-int v3, p7, v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 5493
    move v3, v5

    goto :goto_0

    .line 5492
    :cond_1
    nop

    .line 5493
    move v3, v4

    :goto_0
    const v6, 0x40000008    # 2.000002f

    and-int v2, p7, v6

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5495
    :cond_2
    move v5, v4

    :goto_1
    if-nez p8, :cond_3

    .line 5496
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int/2addr v5, v2

    .line 5500
    :cond_3
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 5503
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 5504
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 5505
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5506
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5507
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5513
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v5, :cond_4

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 5514
    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5517
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 5520
    :cond_4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v0

    return v0
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 6249
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6250
    iget-object p3, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6251
    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6252
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6253
    return-void
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9938
    packed-switch p0, :pswitch_data_0

    .line 9944
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9942
    :pswitch_0
    const-string p0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object p0

    .line 9940
    :pswitch_1
    const-string p0, "LONG_PRESS_BACK_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9949
    packed-switch p0, :pswitch_data_0

    .line 9957
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9955
    :pswitch_0
    const-string p0, "LONG_PRESS_HOME_ASSIST"

    return-object p0

    .line 9953
    :pswitch_1
    const-string p0, "LONG_PRESS_HOME_ALL_APPS"

    return-object p0

    .line 9951
    :pswitch_2
    const-string p0, "LONG_PRESS_HOME_NOTHING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9992
    packed-switch p0, :pswitch_data_0

    .line 10002
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10000
    :pswitch_0
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object p0

    .line 9998
    :pswitch_1
    const-string p0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object p0

    .line 9996
    :pswitch_2
    const-string p0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 9994
    :pswitch_3
    const-string p0, "LONG_PRESS_POWER_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 10018
    packed-switch p0, :pswitch_data_0

    .line 10026
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10024
    :pswitch_0
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object p0

    .line 10022
    :pswitch_1
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object p0

    .line 10020
    :pswitch_2
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private navigationBarPosition(III)I
    .locals 1

    .line 5651
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    .line 5652
    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 5653
    const/4 p1, 0x1

    return p1

    .line 5655
    :cond_0
    const/4 p1, 0x2

    return p1

    .line 5658
    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method private notifyLeftInLandscapeChanged(Z)V
    .locals 1

    .line 5524
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 5525
    if-eqz v0, :cond_0

    .line 5527
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->leftInLandscapeChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5530
    goto :goto_0

    .line 5528
    :catch_0
    move-exception p1

    .line 5532
    :cond_0
    :goto_0
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3

    .line 6256
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6257
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 6258
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 6259
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 6260
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mForceImmersive:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 6261
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 6262
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    .line 6263
    iget-object p1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6267
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 2

    .line 6270
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6271
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    .line 6272
    iget-object p1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6273
    return-void
.end method

.method private powerLongPress()V
    .locals 6

    .line 1822
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResolvedLongPressOnPowerBehavior:I

    .line 1823
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1871
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1872
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1873
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hidePocketLock()V

    .line 1874
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    invoke-virtual {v0, v3}, Landroid/pocket/PocketManager;->setListeningExternal(Z)V

    goto/16 :goto_4

    .line 1862
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1866
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1867
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1868
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1869
    goto/16 :goto_4

    .line 1847
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1848
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1849
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    .line 1850
    goto :goto_0

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    .line 1852
    :goto_0
    if-nez v3, :cond_5

    .line 1853
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1854
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    if-eqz v1, :cond_1

    .line 1855
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1857
    :cond_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1859
    :goto_1
    goto :goto_4

    .line 1841
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1842
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1843
    const-string v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1844
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1845
    goto :goto_4

    .line 1827
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1829
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 1830
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1831
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powermenu_lockscreen"

    .line 1830
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_3

    .line 1832
    :cond_3
    move v2, v3

    :goto_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 1833
    goto :goto_4

    .line 1835
    :cond_4
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1838
    goto :goto_4

    .line 1825
    :pswitch_5
    nop

    .line 1877
    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .locals 3

    .line 1775
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 1802
    :pswitch_0
    const-string p4, "WindowManager"

    const-string v0, "Starting brightness boost."

    invoke-static {p4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    if-nez p3, :cond_0

    .line 1804
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1806
    :cond_0
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1779
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-nez p4, :cond_1

    .line 1780
    const-string p1, "WindowManager"

    const-string p2, "Ignoring toggling theater mode - device not setup."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    goto :goto_0

    .line 1784
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 1785
    const-string p4, "WindowManager"

    const-string v1, "Toggling theater mode off."

    invoke-static {p4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v1, "theater_mode_on"

    invoke-static {p4, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1788
    if-nez p3, :cond_3

    .line 1789
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1792
    :cond_2
    const-string p4, "WindowManager"

    const-string v1, "Toggling theater mode on."

    invoke-static {p4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x1

    invoke-static {p4, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1796
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    .line 1797
    const/4 p3, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    .line 1777
    :pswitch_2
    nop

    .line 1809
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 3

    .line 1710
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    .line 1711
    const-string p1, "WindowManager"

    const-string p2, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void

    .line 1715
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beganFromNonInteractive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShortPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 1720
    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1721
    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 1722
    iget p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1723
    :cond_2
    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez p3, :cond_5

    .line 1724
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 p4, 0x1

    const/4 v0, 0x4

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 1743
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz p1, :cond_4

    .line 1744
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez p1, :cond_3

    .line 1745
    const-class p1, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1746
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1748
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz p1, :cond_5

    .line 1749
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_0

    .line 1752
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    .line 1740
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1741
    goto :goto_0

    .line 1735
    :pswitch_2
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1738
    goto :goto_0

    .line 1731
    :pswitch_3
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1733
    goto :goto_0

    .line 1728
    :pswitch_4
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1729
    goto :goto_0

    .line 1726
    :pswitch_5
    nop

    .line 1758
    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerVeryLongPress()V
    .locals 2

    .line 1880
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1884
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1885
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1882
    :pswitch_1
    nop

    .line 1889
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .line 3438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 3439
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 4

    .line 2771
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2773
    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2775
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 2777
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2780
    :cond_1
    const v1, 0x10e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2782
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v1, v3, :cond_3

    .line 2784
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2787
    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2788
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2789
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2792
    :cond_4
    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    .line 2794
    return-void
.end method

.method private readRotation(I)I
    .locals 1

    .line 3140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    if-eqz p1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 3153
    goto :goto_0

    .line 3149
    :cond_0
    const/4 p1, 0x3

    return p1

    .line 3147
    :cond_1
    const/4 p1, 0x2

    return p1

    .line 3145
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 3143
    :cond_3
    const/4 p1, 0x0

    return p1

    .line 3151
    :catch_0
    move-exception p1

    .line 3154
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private reportScreenStateToVrManager(Z)V
    .locals 1

    .line 7837
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    .line 7838
    return-void

    .line 7840
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 7841
    return-void
.end method

.method private requestFullBugreport()V
    .locals 3

    .line 4750
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4751
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4754
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4755
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4758
    goto :goto_0

    .line 4756
    :catch_0
    move-exception v0

    .line 4757
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4760
    :cond_1
    :goto_0
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 4

    .line 7619
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7620
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7622
    monitor-exit v0

    return-void

    .line 7624
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 7625
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7626
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7627
    :goto_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 7629
    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_3

    .line 7631
    monitor-exit v0

    return-void

    .line 7633
    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {p1}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 7634
    :cond_4
    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {p1}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 7635
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 7636
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 7638
    :cond_6
    monitor-exit v0

    .line 7639
    return-void

    .line 7638
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private scheduleLongPressKeyEvent(I)V
    .locals 3

    .line 10067
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 10068
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 10069
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10070
    return-void
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 9

    .line 4002
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    move-result v0

    .line 4005
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 4006
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4008
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4010
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4012
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_3

    .line 4013
    :cond_2
    move v2, v5

    goto :goto_0

    .line 4012
    :cond_3
    nop

    .line 4013
    move v2, v4

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 4014
    move v6, v5

    goto :goto_1

    .line 4013
    :cond_4
    nop

    .line 4014
    move v6, v4

    :goto_1
    if-eqz v6, :cond_6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 4015
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6

    .line 4016
    :cond_5
    move v7, v5

    goto :goto_2

    .line 4015
    :cond_6
    nop

    .line 4016
    move v7, v4

    :goto_2
    if-nez v6, :cond_8

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v0

    if-lez v6, :cond_7

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    .line 4017
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p1, :cond_8

    .line 4018
    :cond_7
    move p1, v5

    goto :goto_3

    .line 4017
    :cond_8
    nop

    .line 4018
    move p1, v4

    :goto_3
    if-nez v7, :cond_a

    if-eqz p1, :cond_9

    goto :goto_4

    .line 4019
    :cond_9
    move p1, v4

    goto :goto_5

    .line 4018
    :cond_a
    :goto_4
    nop

    .line 4019
    move p1, v5

    :goto_5
    if-nez v2, :cond_f

    if-eqz p1, :cond_b

    goto :goto_7

    .line 4022
    :cond_b
    if-eq p2, v5, :cond_e

    const/4 p1, 0x3

    if-ne p2, p1, :cond_c

    goto :goto_6

    .line 4024
    :cond_c
    if-ne p2, v3, :cond_d

    .line 4025
    const p1, 0x10a0001

    return p1

    .line 4027
    :cond_d
    return v4

    .line 4023
    :cond_e
    :goto_6
    const/high16 p1, 0x10a0000

    return p1

    .line 4020
    :cond_f
    :goto_7
    return v4
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .locals 1

    .line 7306
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 7307
    if-eqz v0, :cond_0

    .line 7308
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 7310
    :cond_0
    return-void
.end method

.method private sendSkipTrackEventToStatusBar(I)V
    .locals 0

    .line 7299
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    .line 7300
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .locals 1

    .line 7279
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 7280
    if-eqz v0, :cond_0

    .line 7282
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7285
    goto :goto_0

    .line 7283
    :catch_0
    move-exception p1

    .line 7287
    :cond_0
    :goto_0
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .locals 3

    .line 7293
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 7294
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7295
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7296
    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    .line 5678
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5686
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p10, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5687
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5688
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5689
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 5696
    :cond_0
    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    .line 5701
    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 5702
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    .line 5701
    :goto_0
    invoke-virtual {p9, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 5709
    :cond_2
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p9, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5710
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 5711
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p9, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 5712
    :cond_3
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5713
    :cond_4
    iget-object p1, p11, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p9, p1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5716
    :cond_5
    :goto_1
    if-eqz p5, :cond_6

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, p9

    :goto_2
    invoke-virtual {p7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5717
    if-eqz p5, :cond_7

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    :cond_7
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5718
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p10, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5722
    :goto_3
    and-int/lit16 p1, p2, 0x100

    if-nez p1, :cond_8

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    :cond_8
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5723
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .locals 4

    .line 6559
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6560
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 6561
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6562
    :cond_0
    move p2, v3

    goto :goto_1

    .line 6561
    :cond_1
    :goto_0
    nop

    .line 6562
    move p2, v2

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 6563
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6564
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6565
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p1, :cond_2

    .line 6566
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p2, p2, 0x400

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6567
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6568
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x100000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6571
    :cond_2
    return v2

    .line 6572
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 6573
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6574
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6575
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p1, :cond_4

    .line 6576
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p2, p2, -0x401

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6577
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x100001

    and-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6579
    :cond_4
    return v2

    .line 6580
    :cond_5
    if-eqz p2, :cond_6

    .line 6581
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6582
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6583
    return v3

    .line 6585
    :cond_6
    return v3
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1

    .line 9435
    const v0, 0x7fff7fff

    and-int/2addr p1, v0

    return p1
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1

    .line 9439
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 9440
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    return p1
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 9973
    packed-switch p0, :pswitch_data_0

    .line 9987
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9985
    :pswitch_0
    const-string p0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object p0

    .line 9983
    :pswitch_1
    const-string p0, "SHORT_PRESS_POWER_GO_HOME"

    return-object p0

    .line 9981
    :pswitch_2
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 9979
    :pswitch_3
    const-string p0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object p0

    .line 9977
    :pswitch_4
    const-string p0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object p0

    .line 9975
    :pswitch_5
    const-string p0, "SHORT_PRESS_POWER_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 10031
    packed-switch p0, :pswitch_data_0

    .line 10037
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10035
    :pswitch_0
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object p0

    .line 10033
    :pswitch_1
    const-string p0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 10042
    packed-switch p0, :pswitch_data_0

    .line 10048
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10046
    :pswitch_0
    const-string p0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object p0

    .line 10044
    :pswitch_1
    const-string p0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shortPressPowerGoHome()V
    .locals 2

    .line 1766
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1772
    :cond_0
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 6

    .line 3630
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3631
    return v1

    .line 3634
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3635
    const/high16 v2, 0x80000

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3636
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_1

    .line 3637
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3640
    :cond_1
    move v4, v3

    goto :goto_0

    .line 3637
    :cond_2
    nop

    .line 3640
    move v4, v1

    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v5

    if-nez v5, :cond_3

    if-ne p2, p0, :cond_4

    :cond_3
    if-eqz v4, :cond_4

    .line 3643
    move p2, v3

    goto :goto_1

    .line 3640
    :cond_4
    nop

    .line 3643
    move p2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3645
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_6

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v3

    :goto_3
    or-int/2addr p2, v2

    .line 3650
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    .line 3651
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    .line 3652
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3658
    move v0, v3

    goto :goto_4

    .line 3652
    :cond_8
    nop

    .line 3658
    move v0, v1

    .line 3659
    :goto_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-nez v4, :cond_a

    .line 3660
    :cond_9
    move v4, v3

    goto :goto_5

    .line 3659
    :cond_a
    nop

    .line 3660
    move v4, v1

    :goto_5
    if-eqz v2, :cond_b

    if-nez p2, :cond_b

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result p1

    if-eqz p1, :cond_d

    :cond_b
    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    goto :goto_7

    :cond_d
    :goto_6
    move v1, v3

    :goto_7
    return v1
.end method

.method private shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 7392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7394
    :cond_0
    move v0, v2

    goto :goto_1

    .line 7392
    :cond_1
    :goto_0
    nop

    .line 7394
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v3, :cond_2

    .line 7395
    return v2

    .line 7398
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDozeMode()Z

    move-result v3

    .line 7400
    if-eqz v3, :cond_3

    .line 7401
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isVolumeKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7402
    return v2

    .line 7407
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    .line 7408
    return v1

    .line 7412
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 7414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    .line 7415
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x108

    if-ne p1, v0, :cond_6

    .line 7416
    :cond_5
    return v2

    .line 7421
    :cond_6
    if-eqz v3, :cond_7

    .line 7422
    return v1

    .line 7427
    :cond_7
    return v2
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 1

    .line 3097
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 3099
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3097
    :goto_0
    return v0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 1

    .line 5300
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7dd

    if-eq p1, v0, :cond_1

    const p1, 0x2000400

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 1

    .line 2264
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2265
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 2266
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2267
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2268
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .locals 1

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 2272
    if-eqz v0, :cond_0

    .line 2273
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 2275
    :cond_0
    return-void
.end method

.method private showPocketLock()V
    .locals 2

    .line 7931
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7936
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7937
    return-void

    .line 7944
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

    invoke-virtual {v0}, Lcom/android/server/policy/pocket/PocketLock;->show()V

    .line 7945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    .line 7947
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    invoke-virtual {v1, v0}, Landroid/pocket/PocketManager;->setPocketLockVisible(Z)V

    .line 7948
    return-void

    .line 7933
    :cond_2
    :goto_0
    return-void
.end method

.method private showRecentApps(Z)V
    .locals 1

    .line 5010
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 5011
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5012
    if-eqz v0, :cond_0

    .line 5013
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 5015
    :cond_0
    return-void
.end method

.method private sleepPress()V
    .locals 2

    .line 1924
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1925
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1927
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 2

    .line 1930
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1933
    :pswitch_0
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1937
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    .line 4963
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4964
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 4966
    :cond_0
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting activity because user setup is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    :goto_0
    return-void
.end method

.method private stopLongshot()V
    .locals 2

    .line 2114
    const-string v0, "longshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/custom/longshot/ILongScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/custom/longshot/ILongScreenshotManager;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_1

    .line 2117
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/custom/longshot/ILongScreenshotManager;->isLongshotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2118
    invoke-interface {v0}, Lcom/android/internal/custom/longshot/ILongScreenshotManager;->stopLongshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    :cond_0
    goto :goto_0

    .line 2120
    :catch_0
    move-exception v0

    .line 2121
    const-string v1, "WindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_1
    :goto_0
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1

    .line 5018
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 5019
    if-eqz v0, :cond_0

    .line 5020
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 5022
    :cond_0
    return-void
.end method

.method private toggleTorch()V
    .locals 6

    .line 9818
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelTorchOff()V

    .line 9819
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    .line 9821
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRearFlashCameraId()Ljava/lang/String;

    move-result-object v1

    .line 9822
    if-eqz v1, :cond_0

    .line 9823
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 9824
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9828
    :cond_0
    goto :goto_0

    .line 9826
    :catch_0
    move-exception v1

    .line 9830
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    if-lez v0, :cond_1

    .line 9831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9832
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9834
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 9835
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 9836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchOffPendingIntent:Landroid/app/PendingIntent;

    .line 9835
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 9838
    :cond_1
    return-void
.end method

.method private topAppHidesStatusBar()Z
    .locals 3

    .line 6539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6540
    return v1

    .line 6542
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 6548
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private unpinActivity()Z
    .locals 1

    .line 4780
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4782
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4783
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4784
    const/4 v0, 0x1

    return v0

    .line 4788
    :cond_0
    goto :goto_0

    .line 4786
    :catch_0
    move-exception v0

    .line 4790
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2

    .line 8762
    if-eqz p1, :cond_0

    .line 8763
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez p1, :cond_1

    .line 8764
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v0, "Dream"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    .line 8768
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz p1, :cond_1

    .line 8769
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 8770
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 8773
    :cond_1
    :goto_0
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 9250
    if-eqz p4, :cond_2

    .line 9251
    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 9256
    :cond_0
    if-ne p4, p2, :cond_2

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9258
    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    .line 9253
    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    .line 9254
    const/4 p1, 0x0

    invoke-static {p4, p1}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    .line 9261
    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 1

    .line 9189
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9190
    :goto_0
    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9191
    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, p2, :cond_2

    if-eqz v0, :cond_3

    .line 9194
    :cond_2
    and-int/lit16 p1, p1, -0x2001

    .line 9195
    const/4 p2, 0x0

    invoke-static {p3, p2}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    or-int/2addr p1, p2

    goto :goto_1

    .line 9197
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9199
    and-int/lit16 p1, p1, -0x2001

    .line 9201
    :cond_4
    :goto_1
    return p1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .line 8743
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 8744
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 8745
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8746
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_2

    .line 8747
    if-eqz v1, :cond_1

    .line 8749
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8750
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 8753
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8755
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 8757
    :cond_2
    monitor-exit v0

    .line 8758
    return-void

    .line 8757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNavigationBarSize()V
    .locals 9

    .line 2893
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2894
    nop

    .line 2895
    const v1, 0x105011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2896
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const/4 v4, -0x2

    const/16 v5, 0x64

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2898
    invoke-direct {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->getScaledNavbarSize(II)I

    move-result v1

    .line 2899
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v1, v6, v7

    aput v1, v2, v3

    .line 2901
    const v1, 0x1050121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2903
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_height_landscape"

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2905
    invoke-direct {p0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->getScaledNavbarSize(II)I

    move-result v1

    .line 2906
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v1, v6, v7

    aput v1, v2, v3

    .line 2910
    nop

    .line 2911
    const v1, 0x1050124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2912
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_width"

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2914
    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->getScaledNavbarSize(II)I

    move-result v0

    .line 2915
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v0, v7, v8

    aput v0, v5, v6

    aput v0, v3, v4

    aput v0, v1, v2

    .line 2916
    return-void
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2

    .line 8777
    if-eqz p1, :cond_0

    .line 8778
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez p1, :cond_1

    .line 8779
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v0, "ScreenOff"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    .line 8783
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz p1, :cond_1

    .line 8784
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 8785
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 8788
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .locals 12

    .line 9265
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 9266
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    .line 9267
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 9268
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v1

    .line 9269
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isDockedDividerResizing()Z

    move-result v2

    .line 9274
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    .line 9275
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_2

    .line 9278
    move v5, v3

    goto :goto_2

    .line 9275
    :cond_2
    nop

    .line 9278
    move v5, v4

    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v6, :cond_3

    .line 9279
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_3

    .line 9280
    :cond_3
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9281
    :goto_3
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7, v6, p3, p2}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 9282
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v6, p3, p2}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 9283
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v7, v8, v4, v4}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v7

    .line 9286
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9287
    invoke-direct {p0, p3, v8}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v8

    .line 9288
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9289
    invoke-direct {p0, v7, v9}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v7

    .line 9292
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 9293
    const/16 v10, 0x7d0

    if-ne v9, v10, :cond_4

    .line 9294
    move v9, v3

    goto :goto_4

    .line 9293
    :cond_4
    nop

    .line 9294
    move v9, v4

    :goto_4
    if-eqz v9, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v10

    if-nez v10, :cond_6

    .line 9295
    const/16 v10, 0x3806

    .line 9300
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v11, :cond_5

    .line 9301
    const v10, -0x3fffc7fa

    .line 9303
    :cond_5
    not-int v11, v10

    and-int/2addr p3, v11

    and-int/2addr v10, p2

    or-int/2addr p3, v10

    .line 9306
    :cond_6
    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    .line 9307
    or-int/lit8 p3, p3, 0x8

    .line 9308
    const v5, -0x40000001    # -1.9999999f

    and-int/2addr p3, v5

    goto :goto_5

    .line 9309
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v6, v7, :cond_9

    :cond_8
    if-eqz v5, :cond_a

    .line 9311
    :cond_9
    const v5, -0x40000009    # -1.9999989f

    and-int/2addr p3, v5

    .line 9314
    :cond_a
    :goto_5
    invoke-direct {p0, p3, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    move-result p3

    .line 9317
    and-int/lit16 v0, p3, 0x1000

    if-eqz v0, :cond_b

    .line 9319
    move v0, v3

    goto :goto_6

    .line 9317
    :cond_b
    nop

    .line 9319
    move v0, v4

    :goto_6
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x0

    .line 9321
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    .line 9323
    move v1, v3

    goto :goto_7

    .line 9321
    :cond_c
    nop

    .line 9323
    move v1, v4

    :goto_7
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_d

    .line 9325
    move v2, v3

    goto :goto_8

    .line 9323
    :cond_d
    nop

    .line 9325
    move v2, v4

    :goto_8
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_e

    .line 9328
    move v5, v3

    goto :goto_9

    .line 9325
    :cond_e
    nop

    .line 9328
    move v5, v4

    :goto_9
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_10

    if-nez v9, :cond_f

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v6, :cond_10

    if-nez v1, :cond_f

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    .line 9332
    :cond_f
    move v1, v3

    goto :goto_a

    .line 9328
    :cond_10
    nop

    .line 9332
    move v1, v4

    :goto_a
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v6, :cond_11

    if-eqz v5, :cond_11

    if-eqz v0, :cond_11

    .line 9335
    move v0, v3

    goto :goto_b

    .line 9332
    :cond_11
    nop

    .line 9335
    move v0, v4

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 9336
    iget-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_12

    iget-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-gtz v6, :cond_12

    .line 9338
    move v6, v3

    goto :goto_c

    .line 9336
    :cond_12
    nop

    .line 9338
    move v6, v4

    :goto_c
    if-eqz v6, :cond_13

    if-eqz v5, :cond_13

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v6

    if-nez v6, :cond_13

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v6, :cond_13

    .line 9341
    iput-wide v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .line 9342
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 9343
    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v6

    if-nez v6, :cond_13

    .line 9344
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v6}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 9348
    :cond_13
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v1, :cond_14

    if-eqz v2, :cond_14

    .line 9350
    move v2, v3

    goto :goto_d

    .line 9348
    :cond_14
    nop

    .line 9350
    move v2, v4

    :goto_d
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v6}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v6

    if-eqz v6, :cond_15

    if-nez v0, :cond_15

    .line 9352
    move v6, v3

    goto :goto_e

    .line 9350
    :cond_15
    nop

    .line 9352
    move v6, v4

    :goto_e
    if-nez v2, :cond_16

    if-nez v6, :cond_16

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v2, :cond_17

    .line 9354
    :cond_16
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 9355
    and-int/lit8 p3, p3, -0x8

    .line 9358
    :cond_17
    and-int/lit16 v2, p3, 0x800

    if-eqz v2, :cond_18

    .line 9359
    move v2, v3

    goto :goto_f

    .line 9358
    :cond_18
    nop

    .line 9359
    move v2, v4

    :goto_f
    and-int/lit16 v6, p3, 0x1000

    if-eqz v6, :cond_19

    .line 9360
    move v6, v3

    goto :goto_10

    .line 9359
    :cond_19
    nop

    .line 9360
    move v6, v4

    :goto_10
    if-nez v2, :cond_1b

    if-eqz v6, :cond_1a

    goto :goto_11

    .line 9362
    :cond_1a
    move v3, v4

    goto :goto_12

    .line 9360
    :cond_1b
    :goto_11
    nop

    .line 9362
    :goto_12
    if-eqz v5, :cond_1c

    if-nez v3, :cond_1c

    .line 9363
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    const/16 v3, 0x7e6

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v3

    if-le v2, v3, :cond_1c

    .line 9366
    and-int/lit8 p3, p3, -0x3

    .line 9369
    :cond_1c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2, v1, p2, p3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 9372
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v1

    .line 9373
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v2

    .line 9374
    if-eqz p1, :cond_1d

    if-eq v1, v2, :cond_1d

    .line 9375
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 9376
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 9377
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result p1

    .line 9376
    invoke-virtual {v3, v1, v2, v4, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    .line 9380
    :cond_1d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p1

    .line 9382
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 9384
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 9382
    invoke-static {p2, p3, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object p2

    .line 9385
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 9387
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 9385
    invoke-static {p1, p3, v0, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    .line 9389
    return p1
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 12

    .line 9092
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 9093
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9094
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9095
    return v1

    .line 9097
    :cond_1
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 9100
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9101
    :goto_1
    if-nez v0, :cond_3

    .line 9102
    return v1

    .line 9105
    :cond_3
    move-object v9, v0

    .line 9106
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v0, :cond_4

    .line 9113
    return v1

    .line 9116
    :cond_4
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    .line 9119
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    .line 9120
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v3, v5, :cond_5

    .line 9121
    const/4 v3, 0x7

    invoke-static {v9, v3}, Lcom/android/server/policy/PhoneWindowManager;->adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    .line 9122
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    goto :goto_2

    .line 9124
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    .line 9131
    :goto_2
    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearedBecauseOfForceShow:Z

    if-nez v2, :cond_6

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_6

    .line 9133
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 9134
    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    .line 9135
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->addSystemUIVisibilityFlag(I)V

    .line 9138
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    .line 9139
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    .line 9140
    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopWindowIsKeyguard:Z

    if-nez v2, :cond_8

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_8

    .line 9142
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 9143
    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    .line 9144
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->addSystemUIVisibilityFlag(I)V

    .line 9147
    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v5

    .line 9149
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v6

    .line 9151
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    const/4 v7, 0x2

    invoke-interface {v2, v1, v7, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 9153
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 9155
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v9, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v4

    .line 9156
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int/2addr v0, v4

    .line 9157
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    xor-int/2addr v2, v5

    .line 9158
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    xor-int/2addr v3, v6

    .line 9159
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v9, v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v10

    .line 9160
    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v2, v10, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 9161
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 9162
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 9163
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9164
    return v1

    .line 9166
    :cond_9
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 9167
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    .line 9168
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    .line 9169
    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 9170
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 9171
    new-instance v7, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9172
    new-instance v8, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v8, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9173
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/policy/PhoneWindowManager$23;

    move-object v2, v11

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9185
    return v0
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .line 3089
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3090
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_0

    .line 3092
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 3094
    :goto_0
    return-void
.end method

.method private updateWindowSleepToken()V
    .locals 2

    .line 6524
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_0

    .line 6525
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6526
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6527
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_1

    .line 6528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6529
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6531
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    .line 6532
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 0

    .line 10007
    packed-switch p0, :pswitch_data_0

    .line 10013
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10011
    :pswitch_0
    const-string p0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object p0

    .line 10009
    :pswitch_1
    const-string p0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 2

    .line 7724
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 7725
    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 7726
    return v1

    .line 7729
    :cond_0
    if-eqz v0, :cond_1

    .line 7730
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "theater_mode_on"

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7734
    :cond_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 7735
    const/4 p1, 0x1

    return p1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 2

    .line 7720
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 7721
    return-void
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p10

    .line 3672
    const/4 v7, 0x0

    if-nez v3, :cond_0

    .line 3673
    return-object v7

    .line 3676
    :cond_0
    nop

    .line 3677
    nop

    .line 3680
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3686
    move/from16 v8, p11

    invoke-direct {v1, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v8

    .line 3687
    if-nez v8, :cond_1

    .line 3689
    nop

    .line 3801
    nop

    .line 3689
    return-object v7

    .line 3691
    :cond_1
    nop

    .line 3693
    invoke-virtual {v8}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v4, v0, :cond_2

    if-eqz v5, :cond_3

    .line 3695
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {v8, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3696
    :try_start_2
    invoke-virtual {v9, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3699
    nop

    .line 3702
    move-object v8, v9

    goto :goto_0

    .line 3697
    :catch_0
    move-exception v0

    move-object v8, v9

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3702
    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_5

    :try_start_3
    sget-object v10, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v6, v10}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3705
    invoke-virtual {v8, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v6

    .line 3706
    invoke-virtual {v6, v4}, Landroid/content/Context;->setTheme(I)V

    .line 3707
    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v6, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3709
    invoke-virtual {v4, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 3710
    if-eqz v10, :cond_4

    invoke-virtual {v6, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3716
    nop

    .line 3718
    move-object v8, v6

    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3721
    :cond_5
    new-instance v4, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v4, v8}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 3722
    invoke-virtual {v4, v9}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 3724
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3726
    if-eqz v5, :cond_6

    .line 3727
    invoke-virtual {v4, v5, v9}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 3729
    :cond_6
    move-object/from16 v5, p5

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 3732
    :goto_1
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3735
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3739
    :try_start_4
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v6, :cond_7

    .line 3740
    const/high16 v6, 0x80000

    or-int v6, p9, v6

    goto :goto_2

    .line 3742
    :cond_7
    move/from16 v6, p9

    :goto_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3748
    or-int/lit8 v5, v6, 0x10

    const/16 v6, 0x8

    or-int/2addr v5, v6

    const/high16 v10, 0x20000

    or-int/2addr v5, v10

    :try_start_5
    invoke-virtual {v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3758
    move/from16 v5, p7

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 3759
    move/from16 v5, p8

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 3761
    const/4 v5, -0x1

    invoke-virtual {v4, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 3764
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 3765
    iput-object v2, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3766
    iput-object v3, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3767
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-virtual {v10, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3769
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v0, v9

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3771
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3773
    invoke-virtual {p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3774
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3777
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3778
    invoke-direct {v1, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 3780
    const-string/jumbo v0, "window"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager;
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3781
    :try_start_6
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3786
    :try_start_7
    invoke-interface {v1, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3790
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3801
    move-object v7, v0

    goto :goto_3

    .line 3790
    :cond_9
    nop

    .line 3801
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3802
    const-string v0, "WindowManager"

    const-string/jumbo v2, "view not successfully added to wm, removing view"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3790
    :cond_a
    return-object v7

    .line 3795
    :catch_2
    move-exception v0

    goto :goto_4

    .line 3791
    :catch_3
    move-exception v0

    goto :goto_6

    .line 3801
    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 3795
    :catch_4
    move-exception v0

    move-object v3, v7

    goto :goto_4

    .line 3791
    :catch_5
    move-exception v0

    move-object v3, v7

    goto :goto_6

    .line 3742
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3801
    :catchall_2
    move-exception v0

    move-object v1, v7

    goto :goto_8

    .line 3795
    :catch_6
    move-exception v0

    move-object v1, v7

    move-object v3, v1

    .line 3799
    :goto_4
    :try_start_a
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed creating starting window"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 3801
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    .line 3802
    :goto_5
    const-string v0, "WindowManager"

    const-string/jumbo v2, "view not successfully added to wm, removing view"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_7

    .line 3791
    :catch_7
    move-exception v0

    move-object v1, v7

    move-object v3, v1

    .line 3793
    :goto_6
    :try_start_b
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already running, starting window not displayed. "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3793
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 3801
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_5

    .line 3807
    :cond_b
    :goto_7
    return-object v7

    .line 3801
    :catchall_3
    move-exception v0

    move-object v7, v3

    :goto_8
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_c

    .line 3802
    const-string v2, "WindowManager"

    const-string/jumbo v3, "view not successfully added to wm, removing view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    invoke-interface {v1, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_c
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3

    .line 3456
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 3458
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 3459
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 3461
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 3463
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3464
    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3465
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez p2, :cond_2

    .line 3466
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3470
    :cond_2
    iget p2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq p2, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 3472
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3473
    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3475
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2

    .line 5177
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 5178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 5182
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 5185
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr p1, v0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v0, v0

    and-int/2addr p1, v0

    return p1
.end method

.method public adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 6

    .line 3310
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3311
    move v0, v1

    goto :goto_0

    .line 3310
    :cond_0
    const/4 v0, 0x0

    .line 3311
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3312
    if-nez v0, :cond_2

    .line 3314
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3316
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 3317
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3320
    :cond_2
    :goto_1
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p3, 0x7d0

    if-eq p1, p3, :cond_8

    const/16 v0, 0x7dd

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7df

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7e7

    if-eq p1, v0, :cond_7

    const/16 v0, 0x7f4

    if-eq p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3355
    :pswitch_0
    iget-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-wide/16 v2, 0xdac

    if-ltz p1, :cond_3

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_4

    .line 3357
    :cond_3
    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 3360
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "toast_animation"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    .line 3407
    :pswitch_1
    const p1, 0x103030b

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_2

    .line 3404
    :pswitch_2
    const p1, 0x1030309

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3405
    goto/16 :goto_2

    .line 3401
    :pswitch_3
    const p1, 0x103030e

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3402
    goto/16 :goto_2

    .line 3398
    :pswitch_4
    const p1, 0x1030305

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3399
    goto/16 :goto_2

    .line 3395
    :pswitch_5
    const p1, 0x1030306

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3396
    goto/16 :goto_2

    .line 3392
    :pswitch_6
    const p1, 0x1030304

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3393
    goto/16 :goto_2

    .line 3389
    :pswitch_7
    const p1, 0x1030303

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3390
    goto :goto_2

    .line 3386
    :pswitch_8
    const p1, 0x1030307

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3387
    goto :goto_2

    .line 3383
    :pswitch_9
    const p1, 0x103030c

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3384
    goto :goto_2

    .line 3380
    :pswitch_a
    const p1, 0x103030d

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3381
    goto :goto_2

    .line 3377
    :pswitch_b
    const p1, 0x103030f

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3378
    goto :goto_2

    .line 3374
    :pswitch_c
    const p1, 0x1030308

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3375
    goto :goto_2

    .line 3371
    :pswitch_d
    const p1, 0x103030a

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3372
    goto :goto_2

    .line 3368
    :pswitch_e
    const p1, 0x1030302

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3369
    goto :goto_2

    .line 3365
    :pswitch_f
    const p1, 0x1030004

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3366
    goto :goto_2

    .line 3362
    :pswitch_10
    const/4 p1, -0x1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3363
    goto :goto_2

    .line 3347
    :cond_5
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3348
    goto :goto_2

    .line 3324
    :cond_6
    :pswitch_11
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x18

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3326
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x40001

    and-int/2addr p1, v0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3327
    goto :goto_2

    .line 3332
    :cond_7
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3333
    goto :goto_2

    .line 3340
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz p1, :cond_9

    .line 3341
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, -0x100001

    and-int/2addr p1, v0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3342
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3412
    :cond_9
    :goto_2
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq p1, p3, :cond_a

    .line 3414
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3416
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d5
        :pswitch_0
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .line 6596
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 7

    .line 6297
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 6299
    invoke-direct {p0, p1, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 6300
    invoke-static {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result p4

    .line 6301
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v1, v3, :cond_0

    .line 6303
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 6304
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 6306
    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ne v1, v3, :cond_2

    .line 6307
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1

    .line 6308
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 6310
    :cond_1
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 6311
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 6315
    :cond_2
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    if-lt v1, v2, :cond_3

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v1, v3, :cond_3

    .line 6317
    move v1, v2

    goto :goto_0

    .line 6315
    :cond_3
    nop

    .line 6317
    move v1, v4

    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v3

    .line 6318
    if-eq v3, v2, :cond_5

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    .line 6321
    :cond_5
    :goto_1
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    .line 6322
    and-int/lit16 v5, p4, 0x800

    if-eqz v5, :cond_6

    .line 6323
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 6325
    :cond_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v5, v6, :cond_8

    .line 6328
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_7

    .line 6329
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6330
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 6331
    nop

    .line 6338
    move v1, v2

    :cond_8
    if-eqz v1, :cond_a

    if-nez p3, :cond_a

    .line 6339
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 6341
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6342
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_9

    .line 6343
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6345
    :cond_9
    and-int/2addr p4, v2

    if-eqz p4, :cond_a

    .line 6346
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 6353
    :cond_a
    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7ef

    if-ne p4, v5, :cond_c

    .line 6354
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p4, :cond_b

    .line 6355
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6356
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p4, :cond_b

    .line 6357
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6360
    :cond_b
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p4, :cond_c

    .line 6361
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6362
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p4, :cond_c

    .line 6363
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6369
    :cond_c
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p4, :cond_d

    if-eqz v0, :cond_d

    .line 6370
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result p4

    if-eqz p4, :cond_d

    if-eqz v4, :cond_d

    .line 6371
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6377
    :cond_d
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v4, 0x3

    if-nez p4, :cond_e

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    if-nez p3, :cond_e

    .line 6378
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p3

    if-eqz p3, :cond_e

    if-ne v3, v4, :cond_e

    .line 6379
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6380
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p3, :cond_e

    .line 6381
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6387
    :cond_e
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez p3, :cond_f

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result p3

    if-eqz p3, :cond_f

    if-ne v3, v4, :cond_f

    .line 6389
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6393
    :cond_f
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p3, 0x200000

    and-int/2addr p2, p3

    if-eqz p2, :cond_10

    .line 6394
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAcquireSleepToken()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 6395
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    .line 6397
    :cond_10
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 5307
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 5308
    iget v0, v10, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    .line 5310
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    .line 5311
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    .line 5312
    const/high16 v0, 0x10000000

    iput v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 5313
    const/4 v0, -0x1

    iput v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 5314
    iget v11, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 5315
    iget v12, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 5316
    iget v13, v10, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 5318
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5319
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5320
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 5321
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5322
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 5323
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5324
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5325
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5326
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5327
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 5329
    iget v0, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    if-nez v0, :cond_d

    .line 5332
    iget v5, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5333
    and-int/lit8 v0, v5, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5334
    move v0, v2

    goto :goto_0

    .line 5333
    :cond_0
    nop

    .line 5334
    const/4 v0, 0x0

    :goto_0
    const v3, -0x7fff8000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 5336
    move v3, v2

    goto :goto_1

    .line 5334
    :cond_1
    nop

    .line 5336
    const/4 v3, 0x0

    :goto_1
    and-int/lit16 v4, v5, 0x800

    if-eqz v4, :cond_2

    .line 5337
    move v4, v2

    goto :goto_2

    .line 5336
    :cond_2
    nop

    .line 5337
    const/4 v4, 0x0

    :goto_2
    and-int/lit16 v1, v5, 0x1000

    if-eqz v1, :cond_3

    .line 5338
    move v1, v2

    goto :goto_3

    .line 5337
    :cond_3
    nop

    .line 5338
    const/4 v1, 0x0

    :goto_3
    if-nez v4, :cond_5

    if-eqz v1, :cond_4

    goto :goto_4

    .line 5339
    :cond_4
    const/16 v17, 0x0

    goto :goto_5

    .line 5338
    :cond_5
    :goto_4
    nop

    .line 5339
    move/from16 v17, v2

    :goto_5
    xor-int/2addr v1, v2

    and-int/2addr v1, v3

    .line 5340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v3, :cond_6

    .line 5341
    move/from16 v18, v2

    goto :goto_6

    .line 5340
    :cond_6
    nop

    .line 5341
    const/16 v18, 0x0

    :goto_6
    if-nez v18, :cond_7

    .line 5342
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v3

    and-int/2addr v1, v3

    .line 5344
    :cond_7
    move/from16 v19, v1

    if-nez v18, :cond_8

    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_8

    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5345
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 5350
    move/from16 v20, v2

    goto :goto_7

    .line 5345
    :cond_8
    nop

    .line 5350
    const/16 v20, 0x0

    :goto_7
    if-nez v0, :cond_a

    if-eqz v17, :cond_9

    goto :goto_8

    .line 5356
    :cond_9
    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v1, :cond_b

    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5357
    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "nav_input_consumer"

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;

    invoke-direct {v2, v9}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-interface {v1, v3, v4, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    iput-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 5362
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_9

    .line 5351
    :cond_a
    :goto_8
    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v1, :cond_b

    .line 5352
    iget-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    iget-object v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 5353
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5352
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5354
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 5367
    :cond_b
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v4, v0, v1

    .line 5369
    move-object v0, v9

    move-object v1, v10

    move/from16 v2, p2

    move-object v3, v6

    move/from16 v16, v5

    move/from16 v5, v19

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z

    move-result v19

    .line 5372
    move-object v2, v14

    move-object v3, v15

    move-object v4, v8

    move-object/from16 v5, v17

    move-object/from16 v6, v21

    move/from16 v7, v16

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    move-result v0

    or-int v0, v19, v0

    .line 5374
    if-eqz v0, :cond_c

    .line 5375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 5378
    :cond_c
    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    if-nez v0, :cond_e

    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    if-eqz v0, :cond_e

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    if-eqz v0, :cond_e

    .line 5379
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    invoke-virtual {v0, v12, v11, v13}, Lcom/android/server/policy/GestureButton;->navigationBarPosition(III)V

    goto :goto_a

    .line 5382
    :cond_d
    move-object/from16 v21, v6

    :cond_e
    :goto_a
    move-object/from16 v0, v21

    invoke-direct {v9, v10, v14, v15, v0}, Lcom/android/server/policy/PhoneWindowManager;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5384
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_f

    .line 5388
    iget-object v0, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v10, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5391
    :cond_f
    return-void
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 0

    .line 6278
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6279
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6280
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6281
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6282
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 6283
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 6284
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 6285
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 6286
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 6288
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 6289
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 6290
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    .line 6291
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    .line 3614
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_1

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7e7

    if-eq v0, v3, :cond_1

    const/16 v3, 0xbb4

    if-eq v0, v3, :cond_1

    .line 3623
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 3620
    :cond_1
    return v1
.end method

.method public canDismissBootAnimation()Z
    .locals 2

    .line 8599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8600
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    monitor-exit v0

    return v1

    .line 8601
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected cancelPreloadRecentApps()V
    .locals 1

    .line 4986
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    .line 4987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4988
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4989
    if-eqz v0, :cond_0

    .line 4990
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 4993
    :cond_0
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 7

    .line 3160
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3161
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3164
    move v1, v2

    goto :goto_0

    .line 3161
    :cond_0
    nop

    .line 3164
    move v1, v3

    :goto_0
    const/4 v4, -0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3166
    return v4

    .line 3169
    :cond_1
    const/4 v1, -0x1

    aput v1, p2, v3

    .line 3171
    const/16 v1, 0xbb7

    const/16 v5, 0x7d0

    const/16 v6, 0x3e8

    if-lt v0, v2, :cond_2

    const/16 v2, 0x63

    if-le v0, v2, :cond_4

    :cond_2
    if-lt v0, v6, :cond_3

    const/16 v2, 0x7cf

    if-le v0, v2, :cond_4

    :cond_3
    if-lt v0, v5, :cond_11

    if-le v0, v1, :cond_4

    goto/16 :goto_7

    .line 3177
    :cond_4
    if-lt v0, v5, :cond_10

    if-le v0, v1, :cond_5

    goto/16 :goto_6

    .line 3182
    :cond_5
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3183
    const/16 p1, 0x7d5

    if-eq v0, p1, :cond_8

    const/16 p1, 0x7db

    if-eq v0, p1, :cond_7

    const/16 p1, 0x7dd

    if-eq v0, p1, :cond_7

    const/16 p1, 0x7e7

    if-eq v0, p1, :cond_7

    const/16 p1, 0x7f3

    if-eq v0, p1, :cond_7

    const/16 p1, 0x7f5

    if-eq v0, p1, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 3203
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 3202
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 3203
    goto :goto_1

    .line 3202
    :cond_6
    move v3, v4

    :goto_1
    return v3

    .line 3200
    :cond_7
    :pswitch_0
    return v3

    .line 3189
    :cond_8
    const/16 p1, 0x2d

    aput p1, p2, v3

    .line 3190
    return v3

    .line 3207
    :cond_9
    const/16 v1, 0x18

    aput v1, p2, v3

    .line 3209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3211
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 3212
    return v3

    .line 3217
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3220
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3217
    invoke-virtual {v2, v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3223
    goto :goto_2

    .line 3221
    :catch_0
    move-exception v2

    .line 3222
    const/4 v2, 0x0

    .line 3225
    :goto_2
    if-eqz v2, :cond_e

    const/16 v5, 0x7f6

    if-eq v0, v5, :cond_b

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_b

    goto :goto_4

    .line 3238
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget p2, p2, v3

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 3239
    packed-switch p1, :pswitch_data_1

    .line 3254
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d

    .line 3255
    goto :goto_3

    .line 3247
    :pswitch_1
    iget p1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_c

    .line 3248
    return v3

    .line 3250
    :cond_c
    return v4

    .line 3244
    :pswitch_2
    return v3

    .line 3255
    :cond_d
    nop

    .line 3254
    move v3, v4

    :goto_3
    return v3

    .line 3232
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_f

    .line 3233
    goto :goto_5

    .line 3232
    :cond_f
    move v3, v4

    :goto_5
    return v3

    .line 3179
    :cond_10
    :goto_6
    return v3

    .line 3174
    :cond_11
    :goto_7
    const/16 p1, -0xa

    return p1

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    .line 3264
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 3271
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    .line 3272
    return v1

    .line 3303
    :cond_0
    :sswitch_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7f2 -> :sswitch_0
        0x7f5 -> :sswitch_0
        0xbb4 -> :sswitch_0
    .end sparse-switch
.end method

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .locals 3

    .line 4091
    if-eqz p2, :cond_0

    .line 4092
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const p2, 0x10a0062

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 4095
    :cond_0
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 4096
    const p1, 0x10a0063

    goto :goto_0

    .line 4097
    :cond_1
    const p1, 0x10a0061

    .line 4095
    :goto_0
    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 4100
    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p2

    .line 4101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 4102
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4101
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4105
    :cond_2
    return-object p1
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 5

    .line 8854
    nop

    .line 8859
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 8860
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v0, :cond_4

    .line 8861
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_1

    .line 8863
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 8867
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_3

    .line 8872
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_1

    .line 8873
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 8875
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_1

    .line 8879
    :cond_4
    :goto_0
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 8880
    return-object v2

    .line 8883
    :cond_5
    nop

    .line 8884
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v3, 0x10080

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 8888
    if-eqz v1, :cond_6

    .line 8889
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    .line 8891
    :cond_6
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_7

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.dock_home"

    .line 8893
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8894
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8895
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8896
    return-object v2

    .line 8899
    :cond_7
    return-object v2
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 1

    .line 4111
    if-eqz p1, :cond_0

    .line 4112
    const/4 p1, 0x0

    return-object p1

    .line 4114
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v0, 0x10a0066

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 8057
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8061
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8062
    :cond_0
    if-eqz p1, :cond_1

    .line 8064
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8067
    goto :goto_0

    .line 8065
    :catch_0
    move-exception p1

    .line 8066
    const-string p2, "WindowManager"

    const-string v0, "Failed to call callback"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8069
    :cond_1
    :goto_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4

    .line 7505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7507
    nop

    .line 7508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 7507
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object p1

    .line 7513
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7514
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7515
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 3

    .line 7479
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 7484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7486
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7491
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 7492
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 7493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7495
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7497
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7498
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7499
    goto :goto_0

    .line 7500
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7502
    :goto_0
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2

    .line 7518
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7519
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 7521
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 20

    move-object/from16 v0, p0

    .line 4807
    nop

    .line 4808
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 4809
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 4810
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4811
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 4812
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 4813
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 4817
    move v5, v6

    goto :goto_0

    .line 4813
    :cond_0
    const/4 v5, 0x0

    .line 4817
    :goto_0
    if-eqz v5, :cond_1

    .line 4818
    invoke-virtual {v1, v3, v4}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v1

    goto :goto_1

    .line 4820
    :cond_1
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 4823
    :goto_1
    if-eqz v1, :cond_4

    .line 4829
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x400

    .line 4830
    nop

    .line 4831
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    .line 4832
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    iget v12, v1, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 4833
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    iget v14, v1, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 4834
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v16

    .line 4835
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v18

    const/16 v19, 0x0

    .line 4830
    move/from16 v17, v4

    invoke-static/range {v7 .. v19}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v4

    .line 4837
    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-direct {v0, v7, v4, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4838
    invoke-virtual {v4}, Landroid/view/KeyEvent;->recycle()V

    .line 4839
    goto :goto_2

    .line 4842
    :cond_2
    move-object v2, v4

    :goto_2
    if-eqz v5, :cond_3

    .line 4843
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 4844
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 4845
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 4846
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .line 4858
    :cond_4
    :goto_3
    return-object v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 9610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSafeMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9611
    const-string p3, " mSystemReady="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9612
    const-string p3, " mSystemBooted="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9613
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9614
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9615
    const-string p3, " mLidOpenRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9616
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCameraLensCoverState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9618
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9619
    const-string p3, " mHdmiPlugged="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9620
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez p3, :cond_0

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez p3, :cond_0

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz p3, :cond_1

    .line 9622
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9623
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9624
    const-string p3, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9625
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9626
    const-string p3, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9627
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9629
    :cond_1
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz p3, :cond_2

    .line 9630
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLastFocusNeedsMenu="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9631
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9633
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9634
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9637
    const-string p3, "mSupportAutoRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9638
    const-string p3, " mOrientationSensorEnabled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mUiMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {p3}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9640
    const-string p3, " mDockMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-static {p3}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9641
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9642
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9643
    const-string p3, " mCarDockRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9644
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9645
    const-string p3, " mDeskDockRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9646
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mUserRotationMode="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9648
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-static {p3}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9649
    const-string p3, " mUserRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9650
    const-string p3, " mAllowAllRotations="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9651
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCurrentAppOrientation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9653
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9655
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9656
    const-string p3, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9657
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidKeyboardAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9659
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9660
    const-string p3, " mLidNavigationAccessibility="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9661
    const-string p3, " mLidControlsScreenLock="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLidControlsSleep="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9663
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9664
    const-string p3, "mLongPressOnBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9665
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9667
    const-string p3, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9668
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9670
    const-string p3, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9671
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9672
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9673
    const-string p3, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9674
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9675
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9676
    const-string p3, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9677
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9678
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9679
    const-string p3, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9680
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9681
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9682
    const-string p3, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9683
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9684
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9685
    const-string p3, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9686
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9687
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9688
    const-string p3, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9689
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9690
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9691
    const-string p3, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9692
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9693
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9694
    const-string p3, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9695
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9696
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9697
    const-string p3, "mHasSoftInput="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9698
    const-string p3, " mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9699
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9700
    const-string p3, "mIncallPowerBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9701
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9702
    const-string p3, " mIncallBackBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9703
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9704
    const-string p3, " mEndcallBehavior="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9705
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {p3}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9706
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mHomePressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9707
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9708
    const-string p3, "mAwake="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9709
    const-string p3, "mScreenOnEarly="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9710
    const-string p3, " mScreenOnFully="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9711
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mKeyguardDrawComplete="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9712
    const-string p3, " mWindowManagerDrawComplete="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9713
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mDockLayer="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9714
    const-string p3, " mStatusBarLayer="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 9715
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mShowingDream="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9716
    const-string p3, " mDreamingLockscreen="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9717
    const-string p3, " mDreamingSleepToken="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9718
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_3

    .line 9719
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLastInputMethodWindow="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9720
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9722
    :cond_3
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_4

    .line 9723
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9724
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9726
    :cond_4
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_5

    .line 9727
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mStatusBar="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9728
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p3, " isStatusBarKeyguard="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9729
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9731
    :cond_5
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_6

    .line 9732
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mNavigationBar="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9733
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9735
    :cond_6
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_7

    .line 9736
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mFocusedWindow="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9737
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9739
    :cond_7
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz p3, :cond_8

    .line 9740
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mFocusedApp="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9741
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9743
    :cond_8
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_9

    .line 9744
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9745
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9747
    :cond_9
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p3, :cond_a

    .line 9748
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9749
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9751
    :cond_a
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz p3, :cond_b

    .line 9752
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mForcingShowNavBar="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9753
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    const-string p3, "mForcingShowNavBarLayer="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9754
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 9756
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mTopIsFullscreen="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9757
    const-string p3, " mKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9758
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9759
    const-string p3, "mKeyguardOccludedChanged="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9760
    const-string p3, " mPendingKeyguardOccluded="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9761
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mForceStatusBar="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9762
    const-string p3, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9763
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 9765
    const-string p3, " mLockScreenTimeout="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 9766
    const-string p3, " mLockScreenTimerActive="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9767
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mLandscapeRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9768
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9769
    const-string p3, " mSeascapeRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9770
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9771
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mPortraitRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9772
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9773
    const-string p3, " mUpsideDownRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9774
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9775
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mDemoHdmiRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9776
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9777
    const-string p3, " mDemoHdmiRotationLock="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9778
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mUndockedHdmiRotation="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9779
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-static {p3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9780
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz p3, :cond_c

    .line 9781
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9782
    const-string p3, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9783
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9784
    const-string p3, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9785
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9786
    const-string p3, "mAccessibilityTvScheduled="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 9789
    :cond_c
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9790
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9791
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9792
    invoke-static {p1, p2}, Landroid/view/WindowManagerPolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9794
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz p3, :cond_d

    .line 9795
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9797
    :cond_d
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz p3, :cond_e

    .line 9798
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9800
    :cond_e
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz p3, :cond_f

    .line 9801
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9803
    :cond_f
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p3, :cond_10

    .line 9804
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9807
    :cond_10
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Looper state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9808
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 9809
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1

    .line 8003
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 8004
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 8006
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .line 8793
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 8794
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 8795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 8796
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1

    .line 8011
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 8012
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 8014
    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 8

    .line 6412
    nop

    .line 6413
    nop

    .line 6415
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 6416
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 6417
    :cond_0
    nop

    .line 6423
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 6424
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 6425
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v0, :cond_2

    .line 6426
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 6427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 6430
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v0, :cond_2

    .line 6431
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 6432
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6436
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_12

    .line 6440
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v0, :cond_3

    .line 6443
    move v0, v3

    goto :goto_2

    .line 6440
    :cond_3
    nop

    .line 6443
    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    .line 6444
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto :goto_3

    .line 6445
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6446
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    .line 6449
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6450
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 6451
    move v0, v3

    goto :goto_4

    .line 6450
    :cond_6
    nop

    .line 6451
    move v0, v2

    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->topAppHidesStatusBar()Z

    move-result v1

    .line 6452
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-nez v4, :cond_d

    if-eqz v0, :cond_7

    goto :goto_8

    .line 6466
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 6467
    nop

    .line 6472
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6473
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6474
    nop

    .line 6494
    :goto_5
    move v2, v3

    goto :goto_6

    .line 6476
    :cond_8
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x5

    .line 6477
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x3

    .line 6478
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6481
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6482
    goto :goto_5

    .line 6494
    :cond_9
    :goto_6
    move v3, v1

    goto :goto_b

    .line 6488
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6489
    goto :goto_7

    .line 6491
    :cond_b
    move v3, v2

    .line 6494
    :goto_7
    move v7, v3

    move v3, v1

    move v1, v2

    move v2, v7

    goto :goto_b

    :cond_c
    move v3, v2

    goto :goto_b

    .line 6455
    :cond_d
    :goto_8
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 6456
    nop

    .line 6459
    move v4, v3

    goto :goto_9

    :cond_e
    move v4, v2

    :goto_9
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_a

    .line 6461
    :cond_f
    move v3, v2

    :goto_a
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 6462
    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6463
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    .line 6494
    :cond_11
    move v2, v4

    :goto_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 6497
    move v0, v2

    move v2, v3

    goto :goto_c

    :cond_12
    move v0, v2

    :goto_c
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v1, v2, :cond_14

    .line 6498
    if-nez v2, :cond_13

    .line 6500
    or-int/lit8 v0, v0, 0x1

    .line 6502
    :cond_13
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 6505
    :cond_14
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v1

    const v2, -0x3fff7ff2

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    .line 6508
    or-int/lit8 v0, v0, 0x1

    .line 6511
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    if-eq v1, v2, :cond_16

    .line 6512
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    .line 6513
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyShowingDreamChanged()V

    .line 6516
    :cond_16
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWindowSleepToken()V

    .line 6519
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6520
    return v0
.end method

.method public finishedGoingToSleep(I)V
    .locals 4

    .line 7660
    const/4 v0, 0x0

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7662
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7664
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 7665
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 7669
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7670
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 7671
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 7672
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7673
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7674
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7675
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 7676
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 7679
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 7680
    return-void

    .line 7674
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public finishedWakingUp()V
    .locals 1

    .line 7714
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7715
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 7717
    :cond_0
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 0

    .line 6601
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6602
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result p1

    const p2, -0x3fff7ff2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 6605
    const/4 p1, 0x1

    return p1

    .line 6607
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    .line 1352
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 3

    .line 3594
    if-nez p5, :cond_1

    .line 3595
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3596
    if-eqz p6, :cond_0

    .line 3599
    const/4 v1, 0x0

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3601
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    .line 3604
    :cond_1
    return p2
.end method

.method public getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    .line 3582
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result p1

    return p1
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 5194
    move-object/from16 v8, p8

    const/4 v9, 0x0

    invoke-static {v9, v1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 5195
    invoke-static {v9, v1}, Lcom/android/server/policy/PhoneWindowManager;->getPrivateWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v11

    .line 5196
    invoke-static {v9, v1}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 5197
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    or-int/2addr v9, v12

    .line 5198
    iget v12, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 5199
    iget v13, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 5200
    iget v14, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 5202
    const/4 v15, 0x1

    if-eqz v7, :cond_0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5203
    move v1, v15

    goto :goto_0

    .line 5202
    :cond_0
    nop

    .line 5203
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 5204
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v1

    .line 5205
    if-lez v1, :cond_4

    .line 5206
    if-nez v12, :cond_1

    .line 5207
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 5208
    :cond_1
    if-ne v12, v15, :cond_2

    .line 5209
    iget v12, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 5210
    :cond_2
    const/4 v15, 0x2

    if-ne v12, v15, :cond_3

    .line 5211
    iget v12, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 5212
    :cond_3
    const/4 v15, 0x3

    if-ne v12, v15, :cond_4

    .line 5213
    iget v12, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v1

    iput v12, v7, Landroid/graphics/Rect;->left:I

    .line 5218
    :cond_4
    :goto_1
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_5

    .line 5219
    const/4 v1, 0x1

    goto :goto_2

    .line 5218
    :cond_5
    nop

    .line 5219
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    const/high16 v7, 0x10000

    and-int/2addr v7, v10

    if-eqz v7, :cond_6

    .line 5221
    const/4 v7, 0x1

    goto :goto_3

    .line 5219
    :cond_6
    nop

    .line 5221
    const/4 v7, 0x0

    :goto_3
    const/high16 v12, 0x400000

    and-int/2addr v11, v12

    if-eqz v11, :cond_7

    .line 5223
    const/16 v16, 0x1

    goto :goto_4

    .line 5221
    :cond_7
    nop

    .line 5223
    const/16 v16, 0x0

    :goto_4
    if-eqz v7, :cond_e

    if-nez v16, :cond_e

    .line 5225
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_8

    and-int/lit16 v1, v9, 0x200

    if-eqz v1, :cond_8

    .line 5227
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5228
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 5229
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 5231
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5232
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 5233
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 5235
    :goto_5
    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v15, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v1, v15

    iget-object v8, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v7, v8

    invoke-virtual {v6, v11, v12, v15, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5239
    and-int/lit16 v8, v9, 0x100

    if-eqz v8, :cond_a

    .line 5240
    and-int/lit16 v8, v10, 0x400

    if-eqz v8, :cond_9

    .line 5241
    iget-object v8, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v10

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v10

    invoke-virtual {v5, v8, v9, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 5246
    :cond_9
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 5248
    :cond_a
    and-int/lit16 v8, v10, 0x400

    if-nez v8, :cond_c

    const/high16 v8, 0x2000000

    and-int/2addr v8, v10

    if-eqz v8, :cond_b

    goto :goto_6

    .line 5251
    :cond_b
    iget-object v8, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v10

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v10

    invoke-virtual {v5, v8, v9, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 5249
    :cond_c
    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 5256
    :goto_7
    if-eqz v2, :cond_d

    .line 5257
    invoke-direct {v0, v2, v5, v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 5259
    invoke-direct {v0, v2, v6, v13, v14}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 5261
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 5263
    :cond_d
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 5264
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 5263
    move-object/from16 v7, p8

    invoke-virtual {v7, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 5265
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0

    .line 5267
    :cond_e
    move-object v7, v8

    if-eqz v1, :cond_f

    .line 5268
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 5270
    :cond_f
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5272
    :goto_8
    if-eqz v2, :cond_10

    .line 5273
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 5276
    :cond_10
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 5277
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 5278
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v7, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 5279
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .line 3524
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    .line 8134
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    .line 3564
    nop

    .line 3566
    if-nez p5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 3569
    iget-boolean p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz p5, :cond_0

    if-ge p1, p2, :cond_1

    .line 3570
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result p1

    sub-int/2addr p2, p1

    .line 3573
    :cond_1
    if-eqz p6, :cond_2

    .line 3574
    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p2, p1

    .line 3576
    :cond_2
    return p2
.end method

.method public getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 0

    .line 3538
    nop

    .line 3540
    if-nez p5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3543
    iget-boolean p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz p5, :cond_0

    if-le p1, p2, :cond_0

    .line 3544
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result p2

    sub-int/2addr p1, p2

    .line 3547
    :cond_0
    if-eqz p6, :cond_1

    .line 3548
    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p3

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 3550
    :cond_1
    return p1
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 1

    .line 8104
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 8107
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8108
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result p2

    .line 8109
    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 8110
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 8111
    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 8112
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 8113
    :cond_1
    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 8114
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 8118
    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 8119
    iget p1, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->left:I

    .line 8120
    iget p1, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->top:I

    .line 8121
    iget p1, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->right:I

    .line 8122
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Rect;->bottom:I

    .line 8124
    :cond_3
    return-void
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 0

    .line 8094
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 8097
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 8098
    iget p2, p5, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget p1, p3, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Rect;->top:I

    .line 8099
    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    .line 1342
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1343
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1345
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    .line 1332
    const-string/jumbo v1, "statusbar"

    .line 1333
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1332
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 1336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .line 5664
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5665
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 5668
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 5672
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3519
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .line 4135
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    .line 8487
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8486
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 8488
    goto :goto_0

    .line 8489
    :cond_0
    const/4 v2, 0x1

    .line 8486
    :goto_0
    return v2
.end method

.method goHome()Z
    .locals 15

    .line 8941
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8942
    const-string v0, "WindowManager"

    const-string v2, "Not going home because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8943
    return v1

    .line 8952
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v2, "persist.sys.uts-test-mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 8954
    const-string v2, "WindowManager"

    const-string v3, "UTS-TEST-MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8956
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 8957
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 8958
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v6

    .line 8959
    if-eqz v6, :cond_2

    .line 8960
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8962
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 8961
    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 8966
    if-ne v2, v0, :cond_2

    .line 8967
    return v1

    .line 8971
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8973
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    .line 8972
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8977
    if-ne v2, v0, :cond_3

    .line 8978
    return v1

    .line 8982
    :cond_3
    goto :goto_1

    .line 8980
    :catch_0
    move-exception v1

    .line 8984
    :goto_1
    return v0
.end method

.method public hasNavigationBar()Z
    .locals 1

    .line 9481
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .line 8669
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8670
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .line 8051
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8052
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 12

    .line 2313
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2314
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2315
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2316
    const-class p3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2317
    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2318
    const-class p3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/input/InputManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2319
    const-class p3, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/dreams/DreamManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2320
    const-class p3, Landroid/os/PowerManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManagerInternal;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2321
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AppOpsManager;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2322
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2323
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2324
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.software.leanback"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2325
    new-instance p3, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p3, v0, v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2327
    new-instance p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x1120064

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    .line 2332
    const-string/jumbo v0, "persist.debug.force_burn_in"

    .line 2333
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2334
    if-nez p3, :cond_0

    if-eqz v0, :cond_3

    .line 2340
    :cond_0
    const/4 p3, -0x8

    if-eqz v0, :cond_2

    .line 2341
    nop

    .line 2342
    const/16 v0, 0x8

    .line 2343
    nop

    .line 2344
    const/4 v2, -0x4

    .line 2345
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 2359
    :goto_0
    move v7, p3

    move v9, v7

    move v8, v0

    move v10, v2

    move v11, v3

    goto :goto_1

    .line 2347
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 2348
    const v0, 0x10e001e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2350
    const v2, 0x10e001b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2352
    const v3, 0x10e001f

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2354
    const v4, 0x10e001d

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2356
    const v5, 0x10e001c

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    .line 2359
    move v11, p3

    move v7, v0

    move v8, v2

    move v9, v3

    move v10, v4

    :goto_1
    new-instance p3, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2363
    :cond_3
    new-instance p3, Lcom/android/server/policy/SwipeToScreenshotListener;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {p3, p1, v0}, Lcom/android/server/policy/SwipeToScreenshotListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSwipeToScreenshot:Lcom/android/server/policy/SwipeToScreenshotListener;

    .line 2377
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2378
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2379
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$TorchModeCallback;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 2380
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2381
    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    .line 2383
    :try_start_0
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2384
    goto :goto_2

    :catch_0
    move-exception p2

    .line 2387
    :goto_2
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11200bf

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2389
    new-instance p2, Lcom/android/server/policy/HardkeyActionHandler;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p3, v2}, Lcom/android/server/policy/HardkeyActionHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

    .line 2392
    :cond_4
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2393
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2394
    new-instance p2, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0037

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2397
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2398
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string p3, "android.intent.category.HOME"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 p3, 0x10200000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1120065

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2403
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p2, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2404
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.CAR_DOCK"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2405
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2407
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p2, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2408
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2409
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2411
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p2, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2412
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v0, "android.intent.category.VR_HOME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2413
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2416
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2417
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string p3, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2419
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string p3, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {p2, v0, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2421
    const-string p2, "1"

    const-string/jumbo p3, "ro.debuggable"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2422
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11200ce

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    .line 2424
    const p2, 0x10e0051

    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 2426
    const p2, 0x10e0024

    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .line 2428
    const p2, 0x10e003a

    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 2430
    const p2, 0x10e00a3

    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 2432
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120035

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 2434
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120047

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 2436
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e004f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2438
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0050

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2440
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120092

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    .line 2442
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120093

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    .line 2444
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120076

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 2447
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120014

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 2449
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2450
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120018

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move p2, v1

    goto :goto_4

    :cond_6
    :goto_3
    move p2, v0

    :goto_4
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2452
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120016

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2454
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120017

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2456
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120011

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2458
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120015

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2460
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120013

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2463
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120083

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2466
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11200d1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2469
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0054

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2472
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0096

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2474
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0056

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2476
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00a5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2478
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e003d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2480
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00a2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2482
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0097

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2484
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00a6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 2486
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1120010

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2489
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    move p2, v0

    goto :goto_5

    :cond_7
    move p2, v1

    :goto_5
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2491
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1120085

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2494
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2496
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2500
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2501
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2502
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2503
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2504
    sget-object v2, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2505
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2506
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    .line 2507
    if-eqz p2, :cond_8

    .line 2509
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 2514
    :cond_8
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 2515
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2516
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2517
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2520
    new-instance p2, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {p2, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2521
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2525
    new-instance p2, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {p2, p1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 2643
    new-instance p2, Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 2644
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {p2, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2646
    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2647
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1070038

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2649
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x107001a

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2651
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1070047

    invoke-static {p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2654
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1120074

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2657
    new-instance p2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2663
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_9

    .line 2664
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2665
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2668
    :cond_9
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 2669
    invoke-virtual {p3}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object p3

    .line 2668
    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2670
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance p3, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {p3, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2683
    new-instance p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {p2, p3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2695
    new-instance p2, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 2697
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2698
    const p3, 0x1070027

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 2700
    const v2, 0x1070026

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2703
    nop

    .line 2704
    nop

    .line 2705
    move v3, v1

    move v4, v3

    :goto_6
    array-length v5, p3

    if-ge v3, v5, :cond_a

    array-length v5, v2

    if-ge v3, v5, :cond_a

    .line 2707
    :try_start_1
    new-instance v5, Ldalvik/system/PathClassLoader;

    aget-object v6, p3, v3

    .line 2708
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2709
    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2710
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 2711
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceKeyHandlers:Ljava/util/List;

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    aput-object v8, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/DeviceKeyHandler;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2712
    nop

    .line 2717
    nop

    .line 2705
    move v4, v0

    goto :goto_7

    .line 2713
    :catch_1
    move-exception v5

    .line 2714
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not instantiate device key handler "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p3, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2721
    :cond_a
    if-nez v4, :cond_b

    .line 2722
    const p3, 0x1040177

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2725
    const v2, 0x1040176

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2728
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2730
    :try_start_2
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 2731
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2733
    invoke-virtual {v2, p2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2734
    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2735
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2742
    goto :goto_8

    .line 2738
    :catch_2
    move-exception v0

    .line 2739
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate alternative device key handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from class "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2748
    :cond_b
    :goto_8
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {p2, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2760
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 2761
    const-string v0, "com.android.server.policy.PhoneWindowManager.ACTION_TORCH_OFF"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2763
    return-void
.end method

.method initializeHdmiState()V
    .locals 2

    .line 6667
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 6669
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6671
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6672
    nop

    .line 6673
    return-void

    .line 6671
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .locals 8

    .line 6676
    nop

    .line 6677
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string v1, "mdss_mdp/drm/card"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6679
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6680
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v3, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v0, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6683
    const/4 v0, 0x0

    .line 6685
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/hdmi/state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6686
    const/16 v0, 0xf

    :try_start_1
    new-array v0, v0, [C

    .line 6687
    invoke-virtual {v3, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 6688
    if-le v4, v2, :cond_1

    .line 6689
    new-instance v5, Ljava/lang/String;

    sub-int/2addr v4, v2

    invoke-direct {v5, v0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 6696
    move v1, v2

    goto :goto_0

    .line 6689
    :cond_0
    nop

    .line 6696
    :cond_1
    :goto_0
    nop

    .line 6698
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6700
    :goto_1
    goto :goto_6

    .line 6699
    :catch_0
    move-exception v0

    goto :goto_1

    .line 6693
    :catch_1
    move-exception v0

    goto :goto_2

    .line 6691
    :catch_2
    move-exception v0

    goto :goto_3

    .line 6696
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    .line 6693
    :catch_3
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 6694
    :goto_2
    :try_start_3
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6696
    if-eqz v3, :cond_3

    .line 6698
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 6691
    :catch_4
    move-exception v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 6692
    :goto_3
    :try_start_5
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6696
    if-eqz v3, :cond_3

    .line 6698
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 6696
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_2

    .line 6698
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 6700
    goto :goto_5

    .line 6699
    :catch_5
    move-exception v1

    .line 6700
    :cond_2
    :goto_5
    throw v0

    .line 6706
    :cond_3
    :goto_6
    xor-int/lit8 v0, v1, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6707
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 6708
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 4159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v11

    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 4161
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 4162
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v14

    .line 4163
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    .line 4164
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v10, 0x0

    if-nez v3, :cond_0

    .line 4165
    const/4 v9, 0x1

    goto :goto_0

    .line 4164
    :cond_0
    nop

    .line 4165
    move v9, v10

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 4166
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    .line 4167
    const/16 v17, 0x1

    goto :goto_1

    .line 4166
    :cond_1
    nop

    .line 4167
    move/from16 v17, v10

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_2

    .line 4183
    const/4 v3, 0x1

    goto :goto_2

    .line 4167
    :cond_2
    nop

    .line 4183
    move v3, v10

    :goto_2
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

    const-wide/16 v18, -0x1

    if-eqz v4, :cond_3

    if-nez v11, :cond_3

    if-nez v3, :cond_3

    .line 4184
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyHandler:Lcom/android/server/policy/HardkeyActionHandler;

    move-object/from16 v4, p1

    move v5, v12

    move v6, v13

    move v7, v9

    move/from16 v20, v8

    move/from16 v8, v16

    move v15, v9

    move/from16 v9, v17

    move/from16 v21, v14

    move v14, v10

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/policy/HardkeyActionHandler;->handleKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IIZZZZ)Z

    move-result v3

    .line 4186
    if-eqz v3, :cond_4

    .line 4187
    return-wide v18

    .line 4193
    :cond_3
    move/from16 v20, v8

    move v15, v9

    move/from16 v21, v14

    move v14, v10

    :cond_4
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v4, 0x96

    const/16 v6, 0x19

    if-eqz v3, :cond_7

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_7

    .line 4194
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v3, :cond_5

    .line 4195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4196
    iget-wide v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v9, v4

    .line 4198
    cmp-long v3, v7, v9

    if-gez v3, :cond_5

    .line 4199
    sub-long/2addr v9, v7

    return-wide v9

    .line 4202
    :cond_5
    if-ne v12, v6, :cond_7

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v3, :cond_7

    .line 4204
    if-nez v15, :cond_6

    .line 4205
    iput-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4207
    :cond_6
    return-wide v18

    .line 4213
    :cond_7
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v3, v14}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v3

    const/16 v7, 0x18

    if-eqz v3, :cond_e

    and-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_e

    .line 4215
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v3, v8

    if-eqz v3, :cond_9

    .line 4216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4217
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v3, :cond_8

    .line 4218
    move/from16 v22, v15

    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_3

    :cond_8
    move/from16 v22, v15

    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_3
    add-long/2addr v14, v4

    .line 4220
    cmp-long v3, v8, v14

    if-gez v3, :cond_a

    .line 4221
    sub-long/2addr v14, v8

    return-wide v14

    .line 4224
    :cond_9
    move/from16 v22, v15

    :cond_a
    if-ne v12, v6, :cond_c

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v3, :cond_c

    .line 4225
    if-nez v22, :cond_b

    .line 4226
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4228
    :cond_b
    return-wide v18

    .line 4230
    :cond_c
    if-ne v12, v7, :cond_f

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v3, :cond_f

    .line 4231
    if-nez v22, :cond_d

    .line 4232
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 4234
    :cond_d
    return-wide v18

    .line 4240
    :cond_e
    move/from16 v22, v15

    :cond_f
    iget v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v3, :cond_12

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_12

    .line 4241
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_10

    .line 4242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4243
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v14, v4

    .line 4245
    cmp-long v0, v8, v14

    if-gez v0, :cond_10

    .line 4246
    sub-long/2addr v14, v8

    return-wide v14

    .line 4249
    :cond_10
    if-ne v12, v7, :cond_12

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_12

    .line 4250
    if-nez v22, :cond_11

    .line 4251
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 4253
    :cond_11
    return-wide v18

    .line 4259
    :cond_12
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_13

    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4260
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 4263
    :cond_13
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_14

    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v12}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4264
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 4271
    :cond_14
    const/4 v0, 0x3

    const-wide/16 v3, 0x0

    if-ne v12, v0, :cond_21

    .line 4275
    if-nez v22, :cond_18

    .line 4276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 4278
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 4279
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v0, :cond_15

    .line 4280
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 4281
    return-wide v18

    .line 4284
    :cond_15
    if-eqz v16, :cond_16

    .line 4285
    const-string v0, "WindowManager"

    const-string v1, "Ignoring HOME; event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    return-wide v18

    .line 4290
    :cond_16
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_17

    .line 4291
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4292
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 4293
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 4294
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 4293
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4295
    return-wide v18

    .line 4298
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    .line 4299
    return-wide v18

    .line 4304
    :cond_18
    if-eqz p1, :cond_19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    .line 4305
    :goto_4
    if-eqz v0, :cond_1d

    .line 4306
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4307
    const/16 v6, 0x7d9

    if-eq v5, v6, :cond_1c

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1a

    goto :goto_6

    .line 4312
    :cond_1a
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v0

    .line 4313
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_1d

    .line 4314
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v3

    if-ne v5, v4, :cond_1b

    .line 4316
    return-wide v18

    .line 4313
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4310
    :cond_1c
    :goto_6
    return-wide v3

    .line 4322
    :cond_1d
    if-nez v13, :cond_1f

    .line 4323
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 4324
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_1e

    .line 4325
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 4326
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4327
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    goto :goto_7

    .line 4328
    :cond_1e
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    .line 4329
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_7

    .line 4331
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_20

    .line 4332
    if-nez v11, :cond_20

    .line 4333
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    .line 4336
    :cond_20
    :goto_7
    return-wide v18

    .line 4337
    :cond_21
    const/16 v0, 0x52

    const/4 v15, 0x2

    if-ne v12, v0, :cond_23

    .line 4341
    if-eqz v22, :cond_22

    if-nez v13, :cond_22

    .line 4342
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v0, :cond_22

    and-int/lit8 v0, v21, 0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_22

    .line 4343
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4344
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v31}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4346
    return-wide v18

    .line 4482
    :cond_22
    :goto_8
    move/from16 v10, v22

    goto/16 :goto_e

    .line 4349
    :cond_23
    const/16 v0, 0x54

    if-ne v12, v0, :cond_26

    .line 4350
    if-eqz v22, :cond_24

    .line 4351
    if-nez v13, :cond_25

    .line 4352
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4353
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_9

    .line 4356
    :cond_24
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4357
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_25

    .line 4358
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4359
    return-wide v18

    .line 4362
    :cond_25
    :goto_9
    return-wide v3

    .line 4363
    :cond_26
    const/16 v0, 0xbb

    if-ne v12, v0, :cond_29

    .line 4364
    if-nez v11, :cond_28

    .line 4365
    if-eqz v22, :cond_27

    if-nez v13, :cond_27

    .line 4366
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_a

    .line 4367
    :cond_27
    if-nez v22, :cond_28

    .line 4368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 4371
    :cond_28
    :goto_a
    return-wide v18

    .line 4372
    :cond_29
    const/16 v0, 0x2a

    if-ne v12, v0, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4373
    if-eqz v22, :cond_22

    .line 4374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 4375
    if-eqz v0, :cond_2a

    .line 4377
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4380
    goto :goto_b

    .line 4378
    :catch_0
    move-exception v0

    .line 4382
    :cond_2a
    :goto_b
    goto :goto_8

    .line 4383
    :cond_2b
    const/16 v0, 0x2f

    if-ne v12, v0, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4384
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4385
    if-eqz v22, :cond_22

    if-nez v13, :cond_22

    .line 4386
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_c

    .line 4387
    :cond_2c
    nop

    .line 4388
    const/4 v15, 0x1

    :goto_c
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v15}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 4389
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4390
    return-wide v18

    .line 4392
    :cond_2d
    const/16 v0, 0x4c

    if-ne v12, v0, :cond_2e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4393
    if-eqz v22, :cond_22

    if-nez v13, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4394
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_8

    .line 4396
    :cond_2e
    const/16 v0, 0xdb

    if-ne v12, v0, :cond_2f

    .line 4397
    const-string v0, "WindowManager"

    const-string v1, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    return-wide v18

    .line 4399
    :cond_2f
    const/16 v0, 0xe7

    if-ne v12, v0, :cond_30

    .line 4400
    const-string v0, "WindowManager"

    const-string v1, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    return-wide v18

    .line 4402
    :cond_30
    const/16 v0, 0x78

    if-ne v12, v0, :cond_32

    .line 4403
    if-eqz v22, :cond_31

    if-nez v13, :cond_31

    .line 4404
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 4405
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4407
    :cond_31
    return-wide v18

    .line 4408
    :cond_32
    const/16 v0, 0xdd

    if-eq v12, v0, :cond_60

    const/16 v5, 0xdc

    if-ne v12, v5, :cond_33

    goto/16 :goto_1d

    .line 4445
    :cond_33
    if-eq v12, v7, :cond_3a

    if-eq v12, v6, :cond_3a

    const/16 v0, 0xa4

    if-ne v12, v0, :cond_34

    goto :goto_d

    .line 4464
    :cond_34
    const/16 v0, 0x3d

    if-ne v12, v0, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4466
    return-wide v3

    .line 4467
    :cond_35
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_36

    move/from16 v10, v22

    invoke-direct {v1, v12, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4468
    return-wide v18

    .line 4469
    :cond_36
    move/from16 v10, v22

    :cond_37
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_38

    invoke-direct {v1, v12, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4470
    return-wide v18

    .line 4471
    :cond_38
    const/16 v0, 0x11c

    if-ne v12, v0, :cond_3d

    .line 4472
    if-nez v10, :cond_39

    .line 4473
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4474
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4475
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4478
    :cond_39
    return-wide v18

    .line 4448
    :cond_3a
    :goto_d
    move/from16 v10, v22

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_5f

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3b

    goto/16 :goto_1c

    .line 4458
    :cond_3b
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_3d

    .line 4459
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 4460
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 4461
    return-wide v18

    .line 4463
    :cond_3c
    nop

    .line 4482
    :cond_3d
    :goto_e
    nop

    .line 4483
    invoke-static {v12}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4484
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v0, :cond_3e

    .line 4486
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 4487
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_10

    .line 4488
    :cond_3e
    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_40

    .line 4489
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v0, v0, 0x32

    .line 4490
    iget v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    .line 4493
    if-eqz v5, :cond_3f

    if-eqz v0, :cond_3f

    .line 4495
    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    or-int/2addr v0, v5

    xor-int/2addr v0, v7

    if-ne v6, v0, :cond_3f

    .line 4497
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 4498
    nop

    .line 4503
    const/4 v0, 0x1

    goto :goto_f

    :cond_3f
    const/4 v0, 0x0

    :goto_f
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_11

    .line 4507
    :cond_40
    :goto_10
    const/4 v0, 0x0

    :goto_11
    move/from16 v5, v21

    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 4509
    if-eqz v0, :cond_41

    .line 4510
    return-wide v18

    .line 4513
    :cond_41
    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4514
    if-eqz v10, :cond_42

    .line 4515
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_12

    .line 4516
    :cond_42
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_43

    .line 4517
    const-string v0, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 4519
    :cond_43
    :goto_12
    return-wide v18

    .line 4527
    :cond_44
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v6, 0x10000000

    if-eqz v0, :cond_47

    .line 4528
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 4529
    invoke-virtual {v0, v12}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 4530
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4531
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4532
    if-eqz v10, :cond_46

    if-nez v13, :cond_46

    if-nez v11, :cond_46

    .line 4533
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v2, v0, v12, v5}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 4534
    if-eqz v0, :cond_45

    .line 4535
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4537
    :try_start_1
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4538
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    .line 4539
    :catch_1
    move-exception v0

    .line 4540
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4542
    invoke-static {v12}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4540
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4543
    :goto_13
    goto :goto_14

    .line 4545
    :cond_45
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4546
    invoke-static {v12}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4545
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    :cond_46
    :goto_14
    return-wide v18

    .line 4554
    :cond_47
    if-eqz v10, :cond_48

    if-nez v13, :cond_48

    if-nez v11, :cond_48

    const/high16 v0, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_48

    .line 4556
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 4557
    invoke-virtual {v0, v12}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 4558
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v8, -0x70001

    and-int/2addr v8, v5

    invoke-virtual {v7, v0, v12, v8}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v0

    .line 4561
    if-eqz v0, :cond_48

    .line 4562
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4564
    :try_start_2
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4565
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4570
    goto :goto_15

    .line 4566
    :catch_2
    move-exception v0

    .line 4567
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    invoke-static {v12}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4567
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4571
    :goto_15
    return-wide v18

    .line 4577
    :cond_48
    if-eqz v10, :cond_49

    if-nez v13, :cond_49

    if-nez v11, :cond_49

    .line 4578
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 4579
    if-eqz v7, :cond_49

    .line 4580
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4581
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4583
    :try_start_3
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4584
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4589
    goto :goto_16

    .line 4585
    :catch_3
    move-exception v0

    .line 4586
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4590
    :goto_16
    return-wide v18

    .line 4595
    :cond_49
    if-eqz v10, :cond_4b

    if-nez v13, :cond_4b

    const/16 v0, 0x3d

    if-ne v12, v0, :cond_4b

    .line 4596
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_4c

    if-nez v11, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4597
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 4598
    invoke-static {v0, v15}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 4599
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 4600
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 4601
    return-wide v18

    .line 4603
    :cond_4a
    goto :goto_17

    .line 4604
    :cond_4b
    if-nez v10, :cond_4c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_4c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int/2addr v0, v5

    if-nez v0, :cond_4c

    .line 4606
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 4607
    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 4612
    :cond_4c
    :goto_17
    const/16 v0, 0x3e

    if-eqz v10, :cond_4e

    if-nez v13, :cond_4e

    if-ne v12, v0, :cond_4e

    and-int/lit16 v6, v5, 0x7000

    if-eqz v6, :cond_4e

    .line 4614
    and-int/lit16 v0, v5, 0xc1

    if-eqz v0, :cond_4d

    .line 4615
    move/from16 v0, v20

    goto :goto_18

    .line 4614
    :cond_4d
    nop

    .line 4615
    const/4 v0, 0x1

    :goto_18
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 4616
    return-wide v18

    .line 4620
    :cond_4e
    if-eqz v10, :cond_51

    if-nez v13, :cond_51

    const/16 v6, 0xcc

    if-eq v12, v6, :cond_4f

    if-ne v12, v0, :cond_51

    const/high16 v6, 0x70000

    and-int/2addr v6, v5

    if-eqz v6, :cond_51

    .line 4624
    :cond_4f
    and-int/lit16 v0, v5, 0xc1

    if-nez v0, :cond_50

    .line 4625
    const/4 v0, 0x1

    goto :goto_19

    .line 4624
    :cond_50
    nop

    .line 4625
    const/4 v0, 0x0

    :goto_19
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    .line 4626
    return-wide v18

    .line 4628
    :cond_51
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v6, :cond_53

    if-nez v10, :cond_53

    const/16 v6, 0xcc

    if-eq v12, v6, :cond_52

    if-ne v12, v0, :cond_53

    .line 4631
    :cond_52
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 4632
    return-wide v18

    .line 4635
    :cond_53
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4636
    invoke-virtual {v0, v6, v12, v2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4637
    return-wide v18

    .line 4641
    :cond_54
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4642
    return-wide v18

    .line 4646
    :cond_55
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    if-eqz v0, :cond_57

    .line 4649
    :try_start_4
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->canHandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_56

    .line 4650
    return-wide v18

    .line 4654
    :cond_56
    goto :goto_1a

    .line 4652
    :catch_4
    move-exception v0

    .line 4653
    const-string v6, "WindowManager"

    const-string v7, "Could not dispatch event to alternative device key handler"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4657
    :cond_57
    :goto_1a
    if-eqz v10, :cond_5d

    .line 4658
    int-to-long v6, v12

    .line 4659
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4660
    const-wide v8, 0x100000000000L

    or-long/2addr v6, v8

    .line 4663
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4664
    const-wide v8, 0x200000000L

    or-long/2addr v6, v8

    .line 4667
    :cond_59
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4668
    const-wide v8, 0x100000000L

    or-long/2addr v6, v8

    .line 4671
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4672
    const-wide/high16 v8, 0x1000000000000L

    or-long/2addr v6, v8

    .line 4675
    :cond_5b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IShortcutService;

    .line 4676
    if-eqz v0, :cond_5d

    .line 4678
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4679
    invoke-interface {v0, v6, v7}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4683
    :cond_5c
    goto :goto_1b

    .line 4681
    :catch_5
    move-exception v0

    .line 4682
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 4684
    :goto_1b
    return-wide v18

    .line 4689
    :cond_5d
    const/high16 v0, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_5e

    .line 4690
    return-wide v18

    .line 4694
    :cond_5e
    return-wide v3

    .line 4451
    :cond_5f
    :goto_1c
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 4452
    return-wide v18

    .line 4410
    :cond_60
    :goto_1d
    move/from16 v10, v22

    if-eqz v10, :cond_63

    .line 4411
    if-ne v12, v0, :cond_61

    .line 4414
    const/16 v20, 0x1

    goto :goto_1e

    .line 4411
    :cond_61
    nop

    .line 4414
    :goto_1e
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4415
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness_mode"

    .line 4414
    const/4 v3, -0x3

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4419
    if-eqz v0, :cond_62

    .line 4420
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4426
    :cond_62
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 4427
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    .line 4428
    sub-int v4, v2, v0

    add-int/lit8 v4, v4, 0xa

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0xa

    mul-int v4, v4, v20

    .line 4429
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness"

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 4431
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    .line 4429
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 4433
    add-int/2addr v5, v4

    .line 4435
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4436
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4438
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4441
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4444
    :cond_63
    return-wide v18
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6724
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 6726
    return v4

    .line 6729
    :cond_0
    const/high16 v3, 0x20000000

    and-int v5, p2, v3

    if-eqz v5, :cond_1

    .line 6730
    const/4 v5, 0x1

    goto :goto_0

    .line 6729
    :cond_1
    nop

    .line 6730
    move v5, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 6731
    const/4 v7, 0x1

    goto :goto_1

    .line 6730
    :cond_2
    nop

    .line 6731
    move v7, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    .line 6732
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 6734
    const/high16 v10, 0x1000000

    and-int v10, p2, v10

    if-eqz v10, :cond_3

    .line 6736
    const/4 v10, 0x1

    goto :goto_2

    .line 6734
    :cond_3
    nop

    .line 6736
    move v10, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 6742
    const/4 v11, 0x1

    goto :goto_3

    .line 6736
    :cond_4
    nop

    .line 6742
    move v11, v4

    :goto_3
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v13, :cond_5

    goto :goto_4

    .line 6743
    :cond_5
    if-eqz v5, :cond_6

    .line 6744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    goto :goto_4

    .line 6745
    :cond_6
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v13}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 6754
    :goto_4
    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsDeviceInPocket:Z

    const/16 v14, 0x58

    const/16 v15, 0x57

    const/16 v3, 0x1a

    const/16 v6, 0x19

    const/16 v12, 0x18

    if-eqz v13, :cond_8

    if-eqz v5, :cond_7

    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPocketLockShowing:Z

    if-eqz v13, :cond_8

    .line 6755
    :cond_7
    if-eq v9, v3, :cond_8

    if-eq v9, v12, :cond_8

    if-eq v9, v6, :cond_8

    const/16 v13, 0x7e

    if-eq v9, v13, :cond_8

    const/16 v13, 0x7f

    if-eq v9, v13, :cond_8

    const/16 v13, 0x55

    if-eq v9, v13, :cond_8

    const/16 v13, 0x4f

    if-eq v9, v13, :cond_8

    const/16 v13, 0x56

    if-eq v9, v13, :cond_8

    if-eq v9, v15, :cond_8

    if-eq v9, v14, :cond_8

    const/16 v13, 0xa4

    if-eq v9, v13, :cond_8

    .line 6766
    return v4

    .line 6771
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v13

    if-nez v13, :cond_a

    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeRockerWake:Z

    if-eqz v13, :cond_a

    if-eq v9, v12, :cond_9

    if-ne v9, v6, :cond_a

    .line 6775
    :cond_9
    const/4 v13, 0x1

    goto :goto_5

    .line 6771
    :cond_a
    nop

    .line 6775
    move v13, v4

    :goto_5
    and-int/lit8 v17, p2, 0x1

    if-nez v17, :cond_c

    .line 6776
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v17

    if-nez v17, :cond_c

    if-eqz v13, :cond_b

    goto :goto_6

    .line 6777
    :cond_b
    move v13, v4

    goto :goto_7

    .line 6776
    :cond_c
    :goto_6
    nop

    .line 6777
    const/4 v13, 0x1

    :goto_7
    if-nez v5, :cond_12

    if-eqz v10, :cond_d

    if-nez v13, :cond_d

    goto :goto_8

    .line 6792
    :cond_d
    if-nez v5, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 6797
    nop

    .line 6799
    const/4 v10, -0x1

    iput v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_a

    .line 6803
    :cond_e
    nop

    .line 6804
    if-eqz v13, :cond_10

    if-eqz v7, :cond_f

    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v10

    if-nez v10, :cond_10

    .line 6805
    :cond_f
    nop

    .line 6808
    move v13, v4

    :cond_10
    if-eqz v13, :cond_11

    if-eqz v7, :cond_11

    .line 6809
    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 6815
    :cond_11
    move v10, v4

    goto :goto_b

    .line 6780
    :cond_12
    :goto_8
    nop

    .line 6781
    nop

    .line 6783
    if-eqz v5, :cond_14

    .line 6786
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v9, v10, :cond_13

    if-nez v7, :cond_13

    .line 6787
    nop

    .line 6790
    move v10, v4

    goto :goto_9

    :cond_13
    const/4 v10, 0x1

    :goto_9
    const/4 v13, -0x1

    iput v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 6815
    move v13, v4

    goto :goto_b

    :cond_14
    move v13, v4

    :goto_a
    const/4 v10, 0x1

    :goto_b
    invoke-static {v9}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v16

    if-eqz v16, :cond_16

    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 6816
    invoke-virtual {v15, v9, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 6817
    if-eqz v13, :cond_15

    .line 6818
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v4, "android.policy:KEY"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6820
    :cond_15
    return v10

    .line 6825
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v15

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_17

    .line 6826
    const/4 v15, 0x1

    goto :goto_c

    .line 6825
    :cond_17
    nop

    .line 6826
    move v15, v4

    :goto_c
    if-eqz v7, :cond_19

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_19

    if-eqz v15, :cond_18

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_19

    .line 6829
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_19

    .line 6831
    const/4 v0, 0x1

    goto :goto_d

    .line 6829
    :cond_19
    nop

    .line 6831
    move v0, v4

    :goto_d
    if-nez v11, :cond_1b

    .line 6832
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isHwKeysDisabled()Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 6833
    :cond_1a
    nop

    .line 6838
    move v11, v4

    goto :goto_e

    :cond_1b
    move v11, v0

    :goto_e
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchKeyToKeyHandlers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6839
    return v4

    .line 6843
    :cond_1c
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    if-eqz v0, :cond_23

    .line 6846
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->isDisabledKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6847
    and-int/lit8 v0, v10, -0x2

    .line 6848
    return v0

    .line 6850
    :cond_1d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->isCameraLaunchEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6854
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    .line 6856
    if-eqz v0, :cond_1e

    .line 6857
    invoke-virtual {v0}, Lcom/android/server/GestureLauncherService;->doCameraLaunchGesture()Z

    .line 6859
    :cond_1e
    and-int/lit8 v0, v10, -0x2

    .line 6860
    return v0

    .line 6862
    :cond_1f
    if-nez v5, :cond_20

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->isWakeEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6866
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v12, "android.policy:KEY"

    invoke-direct {v1, v14, v15, v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6867
    and-int/lit8 v0, v10, -0x2

    .line 6868
    return v0

    .line 6870
    :cond_20
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->isActivityLaunchEvent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v0

    .line 6871
    if-nez v5, :cond_21

    if-eqz v0, :cond_21

    .line 6875
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v14

    iget-boolean v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v6, "android.policy:KEY"

    invoke-direct {v1, v14, v15, v12, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6876
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v12, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchKeyguardDismissIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 6877
    and-int/lit8 v0, v10, -0x2

    .line 6878
    return v0

    .line 6880
    :cond_21
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAlternativeDeviceKeyHandler:Lcom/android/internal/os/AlternativeDeviceKeyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/os/AlternativeDeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_22

    .line 6881
    and-int/lit8 v0, v10, -0x2

    .line 6882
    return v0

    .line 6886
    :cond_22
    goto :goto_f

    .line 6884
    :catch_0
    move-exception v0

    .line 6885
    const-string v6, "WindowManager"

    const-string v12, "Could not dispatch event to device key handler"

    invoke-static {v6, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6890
    :cond_23
    :goto_f
    const/4 v6, 0x0

    packed-switch v9, :pswitch_data_0

    const/4 v12, 0x3

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    packed-switch v9, :pswitch_data_4

    packed-switch v9, :pswitch_data_5

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1c

    .line 7144
    :sswitch_0
    and-int/lit8 v10, v10, -0x2

    .line 7145
    nop

    .line 7146
    if-nez v7, :cond_24

    .line 7147
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 7249
    :cond_24
    :goto_10
    move v13, v4

    goto/16 :goto_1c

    .line 7224
    :sswitch_1
    if-nez v7, :cond_25

    .line 7225
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7226
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7227
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7228
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7230
    :cond_25
    and-int/lit8 v10, v10, -0x2

    .line 7231
    goto/16 :goto_1c

    .line 7208
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 7209
    const/4 v0, 0x1

    goto :goto_11

    .line 7208
    :cond_26
    nop

    .line 7209
    move v0, v4

    :goto_11
    if-eqz v7, :cond_27

    if-eqz v0, :cond_27

    .line 7210
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x1b

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 7211
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7212
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 7214
    :cond_27
    if-nez v7, :cond_28

    if-nez v0, :cond_28

    .line 7215
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7217
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7220
    :cond_28
    and-int/lit8 v10, v10, -0x2

    .line 7221
    goto/16 :goto_1c

    .line 7234
    :sswitch_3
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4c

    .line 7235
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_4c

    .line 7239
    if-nez v7, :cond_29

    .line 7240
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 7242
    :cond_29
    and-int/lit8 v10, v10, -0x2

    goto/16 :goto_1c

    .line 7124
    :pswitch_0
    and-int/lit8 v10, v10, -0x2

    .line 7125
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 7126
    goto/16 :goto_1c

    .line 7153
    :pswitch_1
    and-int/lit8 v10, v10, -0x2

    .line 7154
    nop

    .line 7155
    nop

    .line 7249
    :goto_12
    const/4 v13, 0x1

    goto/16 :goto_1c

    .line 7130
    :pswitch_2
    and-int/lit8 v10, v10, -0x2

    .line 7131
    nop

    .line 7132
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 7133
    nop

    .line 7135
    move v11, v4

    :cond_2a
    if-eqz v7, :cond_2b

    .line 7136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto/16 :goto_10

    .line 7138
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 7140
    goto/16 :goto_10

    .line 7170
    :pswitch_3
    :sswitch_4
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7173
    and-int/lit8 v10, v10, -0x2

    .line 7175
    :cond_2c
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_4c

    .line 7181
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7182
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7184
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7185
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7186
    goto/16 :goto_1c

    .line 7099
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 7100
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2d

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2d

    .line 7103
    return v10

    .line 7106
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 7107
    and-int/lit8 v10, v10, -0x2

    .line 7108
    nop

    .line 7109
    if-eqz v7, :cond_2e

    .line 7110
    invoke-direct {v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_10

    .line 7112
    :cond_2e
    invoke-direct {v1, v2, v5, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 7114
    goto/16 :goto_10

    .line 6908
    :pswitch_5
    :sswitch_5
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-eqz v0, :cond_2f

    .line 6910
    and-int/lit8 v10, v10, -0x2

    .line 6912
    :cond_2f
    if-nez v5, :cond_30

    if-eqz v13, :cond_30

    if-eqz v7, :cond_30

    .line 6913
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeActive:Z

    .line 6914
    goto/16 :goto_1c

    .line 6916
    :cond_30
    if-nez v7, :cond_31

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeActive:Z

    if-eqz v0, :cond_31

    .line 6917
    nop

    .line 6918
    and-int/lit8 v10, v10, -0x2

    .line 6919
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeWakeActive:Z

    .line 6920
    goto/16 :goto_10

    .line 6923
    :cond_31
    if-nez v5, :cond_32

    if-nez v7, :cond_32

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMusicControlActive:Z

    if-eqz v0, :cond_32

    .line 6924
    nop

    .line 6925
    and-int/lit8 v10, v10, -0x2

    .line 6926
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMusicControlActive:Z

    .line 6927
    goto/16 :goto_10

    .line 6930
    :cond_32
    const/16 v3, 0x19

    if-ne v9, v3, :cond_34

    .line 6931
    if-eqz v7, :cond_33

    .line 6933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6935
    if-eqz v5, :cond_36

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_36

    .line 6936
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_36

    .line 6937
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 6938
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 6939
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 6940
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6941
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6942
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_13

    .line 6945
    :cond_33
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 6946
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6947
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_13

    .line 6949
    :cond_34
    const/16 v3, 0x18

    if-ne v9, v3, :cond_36

    .line 6950
    if-eqz v7, :cond_35

    .line 6951
    if-eqz v5, :cond_36

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_36

    .line 6952
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_36

    .line 6953
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 6954
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 6955
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 6956
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6957
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6958
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6960
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 6961
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_13

    .line 6964
    :cond_35
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 6965
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6966
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 6967
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6970
    :cond_36
    :goto_13
    const/high16 v3, -0x80000000

    if-eqz v7, :cond_3c

    .line 6971
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 6973
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v8

    .line 6974
    if-eqz v8, :cond_38

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_38

    .line 6977
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6979
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswer:Z

    if-eqz v0, :cond_37

    .line 6980
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 6988
    :cond_37
    const-string v0, "WindowManager"

    const-string v3, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 6997
    and-int/lit8 v10, v10, -0x2

    .line 6998
    goto/16 :goto_1c

    .line 7001
    :cond_38
    nop

    .line 7003
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7006
    goto :goto_14

    .line 7004
    :catch_1
    move-exception v0

    .line 7005
    const-string v14, "WindowManager"

    const-string v15, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7007
    move v0, v4

    :goto_14
    if-eqz v8, :cond_39

    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    if-nez v8, :cond_3a

    :cond_39
    if-ne v0, v12, :cond_3b

    .line 7009
    :cond_3a
    const/4 v0, 0x1

    goto :goto_15

    .line 7007
    :cond_3b
    nop

    .line 7009
    move v0, v4

    :goto_15
    if-eqz v0, :cond_3c

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_3c

    .line 7012
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 7014
    goto/16 :goto_1c

    .line 7017
    :cond_3c
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_44

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3d

    goto :goto_19

    .line 7021
    :cond_3d
    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_4c

    .line 7022
    if-nez v5, :cond_43

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMusicControl:Z

    if-eqz v0, :cond_43

    .line 7023
    nop

    .line 7024
    if-eqz v7, :cond_40

    .line 7025
    const/16 v5, 0x19

    if-ne v9, v5, :cond_3e

    .line 7026
    const/16 v3, 0x58

    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->scheduleLongPressKeyEvent(I)V

    .line 7027
    goto/16 :goto_1c

    .line 7028
    :cond_3e
    const/16 v5, 0x18

    if-ne v9, v5, :cond_3f

    .line 7029
    const/16 v3, 0x57

    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->scheduleLongPressKeyEvent(I)V

    .line 7030
    goto/16 :goto_1c

    .line 7037
    :cond_3f
    move v0, v4

    goto :goto_16

    .line 7033
    :cond_40
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 7034
    nop

    .line 7037
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_42

    .line 7038
    nop

    .line 7039
    if-nez v7, :cond_41

    .line 7042
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v4, v9}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_17

    .line 7044
    :cond_41
    move-object v0, v2

    :goto_17
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto :goto_18

    .line 7047
    :cond_42
    const/4 v7, 0x1

    :goto_18
    goto/16 :goto_1c

    .line 7048
    :cond_43
    const/4 v7, 0x1

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_1c

    .line 7020
    :cond_44
    :goto_19
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_1c

    .line 7062
    :pswitch_6
    and-int/lit8 v10, v10, -0x2

    .line 7063
    if-eqz v7, :cond_47

    .line 7064
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 7065
    nop

    .line 7066
    if-eqz v0, :cond_45

    .line 7067
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    goto :goto_1a

    .line 7069
    :cond_45
    move v0, v4

    :goto_1a
    if-eqz v5, :cond_46

    if-nez v0, :cond_46

    .line 7070
    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 7071
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7072
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v7

    .line 7071
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 7074
    :cond_46
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 7076
    :goto_1b
    goto :goto_1c

    .line 7077
    :cond_47
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_4c

    .line 7078
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7079
    if-nez v8, :cond_4c

    .line 7080
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_48

    .line 7082
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7083
    goto :goto_1c

    .line 7086
    :cond_48
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4c

    .line 7088
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    const/4 v0, 0x4

    invoke-direct {v1, v7, v8, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 7090
    goto/16 :goto_10

    .line 7191
    :pswitch_7
    if-eqz v7, :cond_4c

    .line 7192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 7193
    if-eqz v0, :cond_49

    .line 7194
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 7195
    const-string v3, "WindowManager"

    const-string v5, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7197
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 7201
    and-int/lit8 v0, v10, -0x2

    .line 7204
    move v10, v0

    :cond_49
    goto :goto_1c

    .line 6892
    :pswitch_8
    if-eqz v7, :cond_4a

    .line 6893
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_1c

    .line 6895
    :cond_4a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 6898
    if-eqz v0, :cond_4b

    .line 6899
    and-int/lit8 v0, v10, -0x2

    .line 6902
    move v10, v0

    :cond_4b
    goto :goto_1c

    .line 7056
    :pswitch_9
    if-eqz v7, :cond_4c

    if-nez v5, :cond_4c

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeButton:Z

    if-eqz v0, :cond_4c

    .line 7057
    goto/16 :goto_12

    .line 7249
    :cond_4c
    :goto_1c
    if-eqz v11, :cond_4d

    .line 7250
    const/4 v3, 0x1

    invoke-virtual {v1, v6, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 7253
    :cond_4d
    if-eqz v13, :cond_4e

    .line 7254
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v4, "android.policy:KEY"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 7257
    :cond_4e
    return v10

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7e
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xde
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x118
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_5
        0xab -> :sswitch_3
        0xdb -> :sswitch_2
        0xe7 -> :sswitch_1
        0x114 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 8

    .line 7369
    const/4 v0, 0x1

    and-int/2addr p3, v0

    const/4 v1, 0x0

    const-wide/32 v2, 0xf4240

    if-eqz p3, :cond_0

    .line 7370
    div-long v4, p1, v2

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const-string v7, "android.policy:MOTION"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7372
    return v1

    .line 7376
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7377
    return v0

    .line 7383
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 7384
    div-long/2addr p1, v2

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const-string v0, "android.policy:MOTION"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 7388
    :cond_2
    return v1
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .line 2933
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .line 2140
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2141
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 2140
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isDockSideAllowed(IIIII)Z
    .locals 0

    .line 8140
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result p3

    .line 8141
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->isDockSideAllowed(IIIZ)Z

    move-result p1

    return p1
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    .line 10106
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    return v0
.end method

.method public isGestureButtonRegion(II)Z
    .locals 1

    .line 10098
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 10101
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GestureButton;->isGestureButtonRegion(II)Z

    move-result p1

    return p1

    .line 10099
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .line 8073
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8074
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 8075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    .line 3609
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .line 8031
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    .line 8044
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8045
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1

    .line 8037
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8038
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result p1

    return p1
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 8018
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8019
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .locals 1

    .line 8024
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 8025
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 0

    .line 8128
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return p1
.end method

.method public isRotationChoicePossible(I)Z
    .locals 5

    .line 8397
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 8403
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_1

    .line 8404
    return v2

    .line 8406
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v0, :cond_2

    .line 8407
    return v2

    .line 8409
    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v0, :cond_3

    .line 8410
    return v2

    .line 8412
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v0, :cond_5

    .line 8416
    return v2

    .line 8418
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v0, :cond_6

    .line 8419
    return v2

    .line 8421
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v0, :cond_7

    .line 8423
    return v2

    .line 8425
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v0, :cond_8

    .line 8426
    return v2

    .line 8428
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_9

    .line 8429
    return v2

    .line 8431
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v0, :cond_a

    .line 8432
    return v2

    .line 8436
    :cond_a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    if-eq p1, v3, :cond_b

    packed-switch p1, :pswitch_data_0

    .line 8447
    return v2

    .line 8443
    :cond_b
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isScreenOn()Z
    .locals 2

    .line 7990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7991
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    monitor-exit v0

    return v1

    .line 7992
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isShowingDreamLw()Z
    .locals 1

    .line 8080
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2

    .line 9518
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 9520
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 9522
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .line 2145
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    .line 2147
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1

    .line 2148
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v0

    and-int/2addr v2, v0

    .line 2150
    :cond_1
    return v2
.end method

.method public isValidRotationChoice(II)Z
    .locals 3

    .line 8452
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 8473
    return v2

    .line 8455
    :pswitch_0
    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 8461
    :pswitch_1
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 8465
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    return p1

    .line 8470
    :cond_2
    if-ltz p2, :cond_3

    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-eq p2, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .line 9080
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .line 9084
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9085
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 9087
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .line 4148
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .line 5040
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 5041
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 3

    .line 5049
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5051
    if-eqz p2, :cond_1

    .line 5052
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5054
    return-void

    .line 5057
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5060
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5068
    return-void

    .line 5073
    :cond_1
    iget-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 5075
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5076
    goto :goto_0

    :catch_0
    move-exception p2

    .line 5079
    :goto_0
    if-eqz p1, :cond_2

    .line 5080
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 5082
    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_1

    .line 5085
    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 5087
    :goto_1
    return-void
.end method

.method launchKeyguardDismissIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .locals 2

    .line 6711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.ACTION_DISMISS_KEYGUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6712
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6713
    const-string v1, "launch"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6714
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6715
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .locals 3

    .line 7524
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 7527
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7530
    :cond_0
    const-string v0, "deviceidle"

    .line 7531
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7530
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 7532
    if-eqz v0, :cond_1

    .line 7534
    :try_start_0
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7536
    goto :goto_0

    .line 7535
    :catch_0
    move-exception v0

    .line 7538
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7539
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7541
    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7542
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7543
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 47

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 5766
    move-object/from16 v15, p3

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_0
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v13, v0, :cond_54

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 5767
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_30

    .line 5770
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 5771
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v16

    .line 5772
    const/16 v17, 0x0

    if-eqz v16, :cond_2

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_2

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    .line 5774
    const/4 v0, 0x1

    goto :goto_0

    .line 5772
    :cond_2
    nop

    .line 5774
    move/from16 v0, v17

    :goto_0
    if-eqz v0, :cond_3

    .line 5776
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v0, v15}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 5779
    :cond_3
    iget v9, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5780
    invoke-static {v13, v11}, Lcom/android/server/policy/PhoneWindowManager;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 5781
    invoke-static {v13, v11}, Lcom/android/server/policy/PhoneWindowManager;->getPrivateWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 5782
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5783
    const/4 v7, 0x0

    invoke-static {v7, v11}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v18

    .line 5784
    invoke-direct {v12, v11}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    or-int v2, v18, v2

    .line 5786
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5787
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5788
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 5789
    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 5790
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5791
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 5792
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 5793
    nop

    .line 5794
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 5796
    if-eqz v16, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v21

    if-eqz v21, :cond_4

    move/from16 v22, v0

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5797
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5799
    const/4 v0, 0x1

    goto :goto_1

    .line 5797
    :cond_4
    move/from16 v22, v0

    .line 5799
    :cond_5
    move/from16 v0, v17

    :goto_1
    and-int/lit16 v1, v1, 0xf0

    .line 5801
    move/from16 v23, v0

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_7

    and-int/lit8 v21, v18, 0x4

    if-eqz v21, :cond_6

    goto :goto_2

    .line 5804
    :cond_6
    move/from16 v21, v17

    goto :goto_3

    .line 5801
    :cond_7
    :goto_2
    nop

    .line 5804
    const/16 v21, 0x1

    :goto_3
    move/from16 v24, v0

    and-int/lit16 v0, v8, 0x100

    move/from16 v25, v2

    const/16 v2, 0x100

    if-ne v0, v2, :cond_8

    .line 5805
    const/16 v26, 0x1

    goto :goto_4

    .line 5804
    :cond_8
    nop

    .line 5805
    move/from16 v26, v17

    :goto_4
    const/high16 v0, 0x10000

    and-int/2addr v0, v8

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_9

    .line 5807
    const/16 v27, 0x1

    goto :goto_5

    .line 5805
    :cond_9
    nop

    .line 5807
    move/from16 v27, v17

    :goto_5
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5809
    const/16 v2, 0x7db

    move-object/from16 v28, v14

    const/4 v14, 0x2

    if-ne v9, v2, :cond_c

    .line 5810
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5811
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5812
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5813
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5814
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5816
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 5818
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v10, Landroid/graphics/Rect;->bottom:I

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 5819
    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_b

    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v1, v0, :cond_b

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v0}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5822
    iget v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v14, :cond_a

    .line 5823
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 5825
    :cond_a
    iget v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 5826
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 5830
    :cond_b
    :goto_6
    const/16 v0, 0x50

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5831
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iput v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 6123
    :goto_7
    move-object v14, v5

    :goto_8
    move-object/from16 v19, v7

    move v2, v8

    move-object/from16 v38, v11

    move-object v11, v12

    move-object/from16 v20, v28

    const/4 v0, 0x1

    move-object v7, v4

    move-object v8, v6

    move v12, v9

    move-object v9, v10

    move-object v6, v3

    goto/16 :goto_26

    .line 5832
    :cond_c
    const/16 v0, 0x7ef

    const/16 v2, 0x30

    const/16 v14, 0x10

    if-ne v9, v0, :cond_f

    .line 5833
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5834
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5835
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5836
    if-eq v1, v14, :cond_d

    .line 5837
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    .line 5839
    :cond_d
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5841
    :goto_9
    if-eq v1, v2, :cond_e

    .line 5842
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 5844
    :cond_e
    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    .line 5846
    :cond_f
    const/16 v0, 0x7dd

    if-ne v9, v0, :cond_10

    .line 5847
    const/high16 v14, -0x80000000

    move-object v0, v12

    move-object v1, v15

    move-object v2, v6

    move-object/from16 v29, v3

    move-object v3, v5

    move-object/from16 v30, v4

    move-object v14, v5

    move-object/from16 v5, v29

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6123
    move-object/from16 v19, v7

    move v2, v8

    move-object/from16 v38, v11

    move-object v11, v12

    move-object/from16 v20, v28

    move-object/from16 v7, v30

    const/4 v0, 0x1

    move-object v8, v6

    move v12, v9

    move-object v9, v10

    move-object/from16 v6, v29

    goto/16 :goto_26

    .line 5848
    :cond_10
    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move v0, v14

    move-object v14, v5

    const/high16 v5, -0x80000000

    iget-object v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v3, :cond_12

    .line 5849
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v4, v30

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5850
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5851
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5852
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v3, v29

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5853
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5855
    if-ne v1, v0, :cond_11

    .line 5856
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 5858
    :cond_11
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 5859
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_8

    .line 5862
    :cond_12
    move-object/from16 v3, v29

    move-object/from16 v4, v30

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5863
    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_13

    .line 5865
    const/4 v2, 0x1

    goto :goto_a

    .line 5863
    :cond_13
    nop

    .line 5865
    move/from16 v2, v17

    :goto_a
    const/4 v5, 0x1

    if-lt v9, v5, :cond_14

    const/16 v5, 0x63

    if-gt v9, v5, :cond_14

    .line 5867
    const/4 v5, 0x1

    goto :goto_b

    .line 5865
    :cond_14
    nop

    .line 5867
    move/from16 v5, v17

    :goto_b
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_15

    .line 5868
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_15

    .line 5869
    const/4 v0, 0x1

    goto :goto_c

    .line 5868
    :cond_15
    nop

    .line 5869
    move/from16 v0, v17

    :goto_c
    if-eqz v5, :cond_17

    if-nez v2, :cond_17

    if-nez v0, :cond_17

    .line 5870
    and-int/lit8 v0, v25, 0x4

    if-nez v0, :cond_16

    if-nez v24, :cond_16

    const/high16 v0, 0x4000000

    and-int/2addr v0, v8

    if-nez v0, :cond_16

    const/high16 v0, -0x80000000

    and-int v2, v8, v0

    if-nez v2, :cond_16

    const/high16 v0, 0x20000

    and-int v0, v22, v0

    if-nez v0, :cond_16

    .line 5876
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 5878
    :cond_16
    const/high16 v0, 0x8000000

    and-int/2addr v0, v8

    if-nez v0, :cond_17

    and-int/lit8 v0, v25, 0x2

    if-nez v0, :cond_17

    const/high16 v5, -0x80000000

    and-int v0, v8, v5

    if-nez v0, :cond_18

    .line 5882
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 5883
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    goto :goto_d

    .line 5887
    :cond_17
    const/high16 v5, -0x80000000

    :cond_18
    :goto_d
    const/high16 v0, 0x2000000

    const/16 v2, 0x7de

    const/16 v5, 0x7cf

    if-eqz v26, :cond_2a

    if-eqz v27, :cond_2a

    .line 5893
    move-object/from16 v20, v28

    if-eqz p2, :cond_19

    .line 5896
    const/4 v5, 0x1

    move-object v0, v12

    move v2, v1

    move-object v1, v13

    move/from16 v31, v2

    move v2, v8

    move-object/from16 v32, v3

    move/from16 v3, v31

    move-object/from16 v33, v4

    move-object/from16 v4, p2

    const/16 v22, 0x1

    move-object/from16 v34, v6

    move-object/from16 v19, v7

    move-object v7, v14

    move/from16 v35, v8

    move-object/from16 v8, v33

    move/from16 v36, v9

    move-object/from16 v9, v32

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 6123
    move-object v11, v12

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v34

    move/from16 v2, v35

    move/from16 v12, v36

    move-object/from16 v9, v37

    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_26

    .line 5899
    :cond_19
    move/from16 v31, v1

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v6

    move-object/from16 v19, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move/from16 v11, v36

    if-eq v11, v2, :cond_21

    const/16 v1, 0x7e1

    if-ne v11, v1, :cond_1a

    goto :goto_10

    .line 5919
    :cond_1a
    move/from16 v10, v35

    and-int v1, v10, v0

    if-eqz v1, :cond_1c

    const/4 v9, 0x1

    if-lt v11, v9, :cond_1b

    if-gt v11, v5, :cond_1b

    .line 5923
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v8, v33

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5924
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5925
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v7, v34

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5949
    move/from16 v1, v25

    goto/16 :goto_15

    .line 5926
    :cond_1b
    move-object/from16 v8, v33

    move-object/from16 v7, v34

    goto :goto_f

    :cond_1c
    move-object/from16 v8, v33

    move-object/from16 v7, v34

    const/4 v9, 0x1

    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1f

    move/from16 v1, v25

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_20

    if-lt v11, v9, :cond_1d

    if-le v11, v5, :cond_1e

    :cond_1d
    const/16 v2, 0x7e4

    if-ne v11, v2, :cond_20

    .line 5934
    :cond_1e
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5935
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5939
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 5941
    :cond_1f
    move/from16 v1, v25

    :cond_20
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5942
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5946
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 5906
    :cond_21
    :goto_10
    move/from16 v1, v25

    move-object/from16 v8, v33

    move-object/from16 v7, v34

    move/from16 v10, v35

    const/4 v9, 0x1

    if-eqz v23, :cond_22

    .line 5907
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    :goto_11
    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_12

    :cond_22
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    goto :goto_11

    :goto_12
    iput v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v14, Landroid/graphics/Rect;->left:I

    iput v2, v7, Landroid/graphics/Rect;->left:I

    .line 5908
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    iput v2, v14, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 5909
    if-eqz v23, :cond_23

    .line 5910
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_13

    .line 5911
    :cond_23
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    :goto_13
    iput v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v14, Landroid/graphics/Rect;->right:I

    iput v2, v7, Landroid/graphics/Rect;->right:I

    .line 5912
    if-eqz v23, :cond_24

    .line 5913
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    .line 5914
    :cond_24
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    :goto_14
    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 5949
    :goto_15
    if-eqz v24, :cond_26

    and-int v0, v22, v0

    if-eqz v0, :cond_25

    goto :goto_17

    .line 5966
    :cond_25
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5968
    :goto_16
    move/from16 v4, v22

    move/from16 v3, v31

    goto :goto_19

    .line 5951
    :cond_26
    :goto_17
    move-object/from16 v6, v32

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5952
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_16

    .line 5954
    :cond_27
    move/from16 v3, v31

    const/16 v0, 0x10

    if-eq v3, v0, :cond_28

    .line 5955
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    .line 5957
    :cond_28
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5960
    :goto_18
    move/from16 v4, v22

    invoke-direct {v12, v4, v6, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5968
    :goto_19
    invoke-direct {v12, v1, v10, v6, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5969
    const/16 v0, 0x30

    if-eq v3, v0, :cond_29

    .line 5970
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v1, v37

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1a

    .line 5972
    :cond_29
    move-object/from16 v1, v37

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5975
    :goto_1a
    invoke-direct {v12, v4, v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 6123
    move v0, v9

    move v2, v10

    move-object v9, v1

    move-object/from16 v45, v8

    move-object v8, v7

    move-object/from16 v7, v45

    move-object/from16 v46, v12

    move v12, v11

    move-object/from16 v11, v46

    goto/16 :goto_26

    .line 5977
    :cond_2a
    move-object/from16 v19, v7

    move-object/from16 v39, v10

    move-object/from16 v38, v11

    move-object/from16 v20, v28

    move-object v7, v6

    move v10, v8

    move v11, v9

    const/4 v9, 0x1

    move-object v6, v3

    move-object v8, v4

    move/from16 v4, v22

    move v3, v1

    move/from16 v1, v25

    if-nez v26, :cond_33

    and-int/lit16 v9, v1, 0x600

    if-eqz v9, :cond_2b

    goto/16 :goto_20

    .line 6071
    :cond_2b
    if-eqz p2, :cond_2c

    .line 6076
    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, v13

    move v2, v10

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v6, v7

    move-object/from16 v40, v7

    move-object v7, v14

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v10, v39

    move v12, v11

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 6123
    move-object/from16 v9, v39

    move-object/from16 v8, v40

    move-object/from16 v7, v41

    move-object/from16 v6, v42

    :goto_1b
    move/from16 v2, v43

    const/4 v0, 0x1

    move-object/from16 v11, p0

    goto/16 :goto_26

    .line 6083
    :cond_2c
    move-object/from16 v42, v6

    move-object/from16 v40, v7

    move-object/from16 v41, v8

    move/from16 v43, v10

    move v12, v11

    if-ne v12, v2, :cond_2d

    .line 6087
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v42

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6088
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v7, v41

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6089
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6090
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v40

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6123
    move-object/from16 v9, v39

    goto :goto_1b

    .line 6091
    :cond_2d
    move-object/from16 v8, v40

    move-object/from16 v7, v41

    move-object/from16 v6, v42

    const/16 v0, 0x7d5

    if-eq v12, v0, :cond_32

    const/16 v0, 0x7d3

    if-ne v12, v0, :cond_2e

    goto :goto_1e

    .line 6098
    :cond_2e
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6099
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6100
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6101
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6102
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    .line 6103
    :cond_2f
    const/16 v0, 0x10

    if-eq v3, v0, :cond_30

    .line 6104
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6105
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6106
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    .line 6108
    :cond_30
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6109
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6110
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6112
    :goto_1c
    const/16 v0, 0x30

    if-eq v3, v0, :cond_31

    .line 6113
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v9, v39

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 6115
    :cond_31
    move-object/from16 v9, v39

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6118
    :goto_1d
    move-object/from16 v11, p0

    invoke-direct {v11, v4, v9, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_1f

    .line 6093
    :cond_32
    :goto_1e
    move-object/from16 v9, v39

    move-object/from16 v11, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6094
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6095
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6096
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6123
    :goto_1f
    move/from16 v2, v43

    goto/16 :goto_e

    .line 5984
    :cond_33
    :goto_20
    move/from16 v43, v10

    move-object/from16 v9, v39

    move-object/from16 v45, v8

    move-object v8, v7

    move-object/from16 v7, v45

    move-object/from16 v46, v12

    move v12, v11

    move-object/from16 v11, v46

    if-eq v12, v2, :cond_40

    const/16 v2, 0x7e1

    if-ne v12, v2, :cond_34

    goto/16 :goto_23

    .line 5998
    :cond_34
    const/16 v2, 0x7e3

    if-eq v12, v2, :cond_3f

    const/16 v2, 0x7e8

    if-ne v12, v2, :cond_35

    goto/16 :goto_22

    .line 6006
    :cond_35
    const/16 v2, 0x7df

    if-eq v12, v2, :cond_36

    const/16 v2, 0x7f4

    if-ne v12, v2, :cond_37

    :cond_36
    if-eqz v24, :cond_37

    .line 6010
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6011
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6012
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6013
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6062
    :goto_21
    move/from16 v2, v43

    const/4 v0, 0x1

    goto/16 :goto_24

    .line 6014
    :cond_37
    const/16 v2, 0x7e5

    if-ne v12, v2, :cond_38

    .line 6016
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6017
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6018
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6019
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_21

    .line 6020
    :cond_38
    move/from16 v2, v43

    and-int/2addr v0, v2

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    if-lt v12, v0, :cond_3a

    if-gt v12, v5, :cond_3a

    .line 6024
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6025
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6026
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6027
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_24

    .line 6028
    :cond_39
    const/4 v0, 0x1

    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v10

    if-eqz v10, :cond_3c

    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_3c

    const/16 v10, 0x7d0

    if-eq v12, v10, :cond_3b

    const/16 v10, 0x7d5

    if-eq v12, v10, :cond_3b

    const/16 v10, 0x7f2

    if-eq v12, v10, :cond_3b

    const/16 v10, 0x7f1

    if-eq v12, v10, :cond_3b

    if-lt v12, v0, :cond_3c

    if-gt v12, v5, :cond_3c

    .line 6042
    :cond_3b
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6043
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6044
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6045
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_24

    .line 6046
    :cond_3c
    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_3e

    .line 6047
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6048
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6049
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6050
    const/16 v5, 0x10

    if-eq v3, v5, :cond_3d

    .line 6051
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 6053
    :cond_3d
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 6056
    :cond_3e
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6057
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6058
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6059
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 6000
    :cond_3f
    :goto_22
    move/from16 v2, v43

    const/4 v0, 0x1

    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6001
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6002
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 5985
    :cond_40
    :goto_23
    move/from16 v2, v43

    const/4 v0, 0x1

    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5986
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5987
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v14, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5988
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5989
    if-eqz v23, :cond_41

    .line 5990
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v6, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v14, Landroid/graphics/Rect;->left:I

    iput v5, v8, Landroid/graphics/Rect;->left:I

    .line 5991
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v6, Landroid/graphics/Rect;->right:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    iput v5, v14, Landroid/graphics/Rect;->right:I

    iput v5, v8, Landroid/graphics/Rect;->right:I

    .line 5992
    iget-object v5, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    .line 6062
    :cond_41
    :goto_24
    invoke-direct {v11, v1, v2, v6, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 6064
    const/16 v1, 0x30

    if-eq v3, v1, :cond_42

    .line 6065
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_25

    .line 6067
    :cond_42
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6070
    :goto_25
    invoke-direct {v11, v4, v9, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyForceImmersiveMode(ILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 6123
    :goto_26
    nop

    .line 6124
    move-object/from16 v1, v38

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6125
    if-eqz p2, :cond_43

    if-nez v26, :cond_43

    .line 6126
    move v4, v0

    goto :goto_27

    .line 6125
    :cond_43
    nop

    .line 6126
    move/from16 v4, v17

    :goto_27
    const/4 v5, 0x2

    and-int/lit8 v10, v18, 0x2

    if-eqz v10, :cond_44

    .line 6131
    move v5, v0

    goto :goto_28

    .line 6126
    :cond_44
    nop

    .line 6131
    move/from16 v5, v17

    :goto_28
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v10

    if-nez v10, :cond_45

    if-eqz v26, :cond_45

    if-eq v12, v0, :cond_45

    .line 6136
    move v10, v0

    goto :goto_29

    .line 6131
    :cond_45
    nop

    .line 6136
    move/from16 v10, v17

    :goto_29
    if-eq v3, v0, :cond_4b

    .line 6137
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 6138
    move-object/from16 v44, v1

    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6139
    if-eqz v26, :cond_46

    if-eqz v27, :cond_46

    if-nez v21, :cond_46

    if-nez v3, :cond_46

    .line 6145
    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2a

    .line 6147
    :cond_46
    const/high16 v1, -0x80000000

    :goto_2a
    const/4 v1, 0x4

    if-eqz v26, :cond_48

    if-eqz v27, :cond_48

    if-nez v5, :cond_48

    if-nez v3, :cond_48

    .line 6150
    iget v3, v11, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-eq v3, v1, :cond_47

    packed-switch v3, :pswitch_data_0

    goto :goto_2b

    .line 6155
    :pswitch_0
    const v3, 0x7fffffff

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 6156
    goto :goto_2b

    .line 6158
    :pswitch_1
    const v3, 0x7fffffff

    const/high16 v5, -0x80000000

    iput v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2b

    .line 6152
    :cond_47
    const v3, 0x7fffffff

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 6153
    nop

    .line 6162
    :cond_48
    :goto_2b
    const/16 v5, 0x7db

    if-ne v12, v5, :cond_49

    iget v3, v11, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v3, v1, :cond_49

    .line 6164
    const v1, 0x7fffffff

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6171
    :cond_49
    if-nez v4, :cond_4a

    if-nez v10, :cond_4a

    .line 6172
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6173
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 6174
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    or-int v17, v17, v1

    .line 6178
    :cond_4a
    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_2c

    .line 6182
    :cond_4b
    move-object/from16 v44, v1

    const/16 v5, 0x7db

    :goto_2c
    move/from16 v10, v17

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 6186
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_4c

    const/16 v0, 0x7da

    if-eq v12, v0, :cond_4c

    .line 6187
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 6188
    const/16 v0, -0x2710

    iput v0, v14, Landroid/graphics/Rect;->top:I

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 6189
    const/16 v0, 0x2710

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 6190
    const/16 v0, 0x7dd

    if-eq v12, v0, :cond_4c

    .line 6191
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 6192
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 6200
    :cond_4c
    move-object/from16 v0, v44

    invoke-direct {v11, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v0

    .line 6201
    if-eqz v16, :cond_51

    if-eqz v0, :cond_51

    .line 6202
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 6203
    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6204
    iget-object v1, v11, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v1

    .line 6205
    if-lez v1, :cond_50

    .line 6206
    iget v2, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 6207
    if-nez v2, :cond_4d

    .line 6208
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2d

    .line 6209
    :cond_4d
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4e

    .line 6210
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2d

    .line 6211
    :cond_4e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    .line 6212
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2d

    .line 6213
    :cond_4f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_50

    .line 6214
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 6232
    :cond_50
    :goto_2d
    move-object/from16 v16, v0

    goto :goto_2e

    :cond_51
    const/16 v16, 0x0

    :goto_2e
    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    move-object v0, v13

    move-object v1, v8

    move-object v2, v14

    move-object v3, v7

    move-object v14, v4

    move-object v4, v6

    move v8, v5

    move-object v5, v9

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move v9, v8

    move-object/from16 v8, v16

    move v15, v9

    move-object v9, v14

    invoke-interface/range {v0 .. v10}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 6236
    if-ne v12, v15, :cond_52

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 6237
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_52

    .line 6238
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 6239
    move-object/from16 v0, p3

    invoke-direct {v11, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_2f

    .line 6241
    :cond_52
    move-object/from16 v0, p3

    :goto_2f
    const/16 v1, 0x7ef

    if-ne v12, v1, :cond_53

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 6242
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v1

    if-nez v1, :cond_53

    .line 6243
    invoke-direct {v11, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 6245
    :cond_53
    return-void

    .line 5768
    :cond_54
    :goto_30
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3

    .line 8732
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8734
    if-eqz p1, :cond_0

    .line 8737
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 8739
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8740
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .line 1364
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1365
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 1371
    :cond_0
    return v2

    .line 1374
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_4

    .line 1380
    :cond_3
    return v2

    .line 1382
    :cond_4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v2, :cond_6

    .line 1394
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1397
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 3

    .line 6633
    nop

    .line 6634
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v0, p3, :cond_0

    .line 6635
    return-void

    .line 6637
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p3, :cond_3

    .line 6640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6641
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 6642
    :goto_0
    if-eqz v0, :cond_2

    .line 6643
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6645
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6647
    :goto_1
    const-wide/32 v1, 0xf4240

    div-long/2addr p1, v1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const-string v2, "android.policy:CAMERA_COVER"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6649
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6651
    :cond_3
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 6652
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1

    .line 6614
    nop

    .line 6615
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne p3, p1, :cond_0

    .line 6616
    return-void

    .line 6619
    :cond_0
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 6620
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 6621
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 6623
    if-eqz p3, :cond_1

    .line 6624
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const-string v0, "android.policy:LID"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    goto :goto_0

    .line 6626
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez p1, :cond_2

    .line 6627
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6629
    :cond_2
    :goto_0
    return-void
.end method

.method public okToAnimate()Z
    .locals 1

    .line 7997
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged()V
    .locals 6

    .line 3485
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 3486
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3488
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 3489
    const v5, 0x10501a6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v3, v4

    aput v5, v1, v2

    .line 3491
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 3492
    const v5, 0x10501a5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, v3, v4

    aput v0, v1, v2

    .line 3495
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBarSize()V

    .line 3515
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1

    .line 4888
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4889
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 4890
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_0

    .line 4892
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 4894
    :goto_0
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1

    .line 10054
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 10055
    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 0

    .line 3479
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    .line 3480
    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    .line 8539
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 8540
    return-void
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .locals 4

    .line 9004
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9005
    return v1

    .line 9007
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 9009
    move v0, v2

    goto :goto_0

    .line 9007
    :cond_1
    nop

    .line 9009
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 9010
    return v1

    .line 9013
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 9014
    if-nez p2, :cond_3

    .line 9015
    return v1

    .line 9020
    :cond_3
    if-eqz p1, :cond_4

    .line 9021
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result p3

    .line 9022
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9024
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    .line 9025
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 9027
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p3, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 9028
    return v2
.end method

.method protected preloadRecentApps()V
    .locals 1

    .line 4978
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4979
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4980
    if-eqz v0, :cond_0

    .line 4981
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 4983
    :cond_0
    return-void
.end method

.method public prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4

    .line 3864
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3871
    :cond_0
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    const/4 v2, -0x7

    if-eq p2, v0, :cond_4

    const/16 v0, 0x7de

    if-eq p2, v0, :cond_3

    const/16 v0, 0x7e1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x7e3

    if-eq p2, v0, :cond_1

    const/16 p1, 0x7e8

    if-eq p2, p1, :cond_3

    const/16 p1, 0x7f1

    if-eq p2, p1, :cond_3

    goto :goto_0

    .line 3886
    :cond_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p2, :cond_2

    .line 3890
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3891
    return v2

    .line 3894
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3895
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3896
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/policy/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V

    .line 3899
    goto :goto_0

    .line 3904
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.STATUS_BAR_SERVICE"

    const-string v0, "PhoneWindowManager"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3873
    :cond_4
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz p2, :cond_5

    .line 3877
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3878
    return v2

    .line 3881
    :cond_5
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3882
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3883
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    .line 3884
    nop

    .line 3909
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method readLidState()V
    .locals 1

    .line 3434
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 3435
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4876
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4877
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 4878
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4879
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Key already exists."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4882
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4883
    monitor-exit v0

    .line 4884
    return-void

    .line 4883
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    .line 3915
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 3916
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 3918
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 3919
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3920
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3922
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3923
    return-void
.end method

.method public requestUserActivityNotification()V
    .locals 2

    .line 8674
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 8677
    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 8

    .line 8188
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8189
    return v1

    .line 8192
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v2

    .line 8194
    if-gez v2, :cond_1

    .line 8195
    nop

    .line 8199
    move v2, p2

    :cond_1
    const/4 v3, -0x1

    if-nez p3, :cond_2

    .line 8202
    nop

    .line 8310
    move p3, v1

    goto/16 :goto_8

    .line 8203
    :cond_2
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v4, 0x1

    if-ne p3, v4, :cond_3

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz p3, :cond_3

    .line 8205
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    goto/16 :goto_8

    .line 8206
    :cond_3
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x2

    if-ne p3, v5, :cond_6

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez p3, :cond_4

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz p3, :cond_6

    .line 8211
    :cond_4
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz p3, :cond_5

    .line 8212
    goto/16 :goto_6

    :cond_5
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    goto/16 :goto_8

    .line 8213
    :cond_6
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x4

    if-eq p3, v4, :cond_7

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x3

    if-eq p3, v7, :cond_7

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne p3, v6, :cond_8

    :cond_7
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez p3, :cond_1c

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz p3, :cond_8

    goto/16 :goto_7

    .line 8222
    :cond_8
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz p3, :cond_9

    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz p3, :cond_9

    .line 8225
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_8

    .line 8226
    :cond_9
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz p3, :cond_a

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez p3, :cond_a

    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz p3, :cond_a

    .line 8232
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    goto/16 :goto_8

    .line 8233
    :cond_a
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz p3, :cond_b

    .line 8236
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto/16 :goto_8

    .line 8237
    :cond_b
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz p3, :cond_c

    .line 8242
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    goto/16 :goto_8

    .line 8243
    :cond_c
    const/16 p3, 0xe

    if-ne p1, p3, :cond_d

    .line 8245
    nop

    .line 8310
    move p3, p2

    goto/16 :goto_8

    .line 8246
    :cond_d
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez p3, :cond_e

    .line 8249
    nop

    .line 8310
    :goto_0
    move p3, v3

    goto/16 :goto_8

    .line 8250
    :cond_e
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/16 v7, 0xb

    if-nez p3, :cond_f

    if-eq p1, v5, :cond_12

    if-eq p1, v3, :cond_12

    if-eq p1, v7, :cond_12

    const/16 p3, 0xc

    if-eq p1, p3, :cond_12

    const/16 p3, 0xd

    if-eq p1, p3, :cond_12

    :cond_f
    if-eq p1, v6, :cond_12

    const/16 p3, 0xa

    if-eq p1, p3, :cond_12

    const/4 p3, 0x6

    if-eq p1, p3, :cond_12

    const/4 p3, 0x7

    if-ne p1, p3, :cond_10

    goto :goto_1

    .line 8297
    :cond_10
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne p3, v4, :cond_11

    const/4 p3, 0x5

    if-eq p1, p3, :cond_11

    .line 8303
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto/16 :goto_8

    .line 8307
    :cond_11
    goto :goto_0

    .line 8262
    :cond_12
    :goto_1
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez p3, :cond_14

    .line 8266
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v3, 0x1120007

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 8267
    move p3, v4

    goto :goto_2

    :cond_13
    move p3, v1

    :goto_2
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 8271
    :cond_14
    nop

    .line 8272
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    if-gez p3, :cond_16

    .line 8274
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-ne p3, v4, :cond_15

    .line 8275
    const/16 v7, 0xf

    nop

    .line 8276
    :cond_15
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 8278
    :cond_16
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 8289
    :pswitch_0
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_17

    goto :goto_5

    .line 8292
    :cond_17
    move v4, v1

    goto :goto_5

    .line 8286
    :pswitch_1
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    and-int/2addr p3, v6

    if-eqz p3, :cond_18

    goto :goto_3

    .line 8287
    :cond_18
    move v4, v1

    :goto_3
    goto :goto_5

    .line 8283
    :pswitch_2
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    and-int/2addr p3, v5

    if-eqz p3, :cond_19

    goto :goto_4

    .line 8284
    :cond_19
    move v4, v1

    :goto_4
    goto :goto_5

    .line 8280
    :pswitch_3
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    and-int/2addr p3, v4

    if-eqz p3, :cond_1a

    goto :goto_5

    .line 8281
    :cond_1a
    move v4, v1

    .line 8292
    :goto_5
    if-eqz v4, :cond_1b

    .line 8293
    goto :goto_6

    .line 8295
    :cond_1b
    nop

    .line 8297
    move v2, p2

    .line 8310
    :goto_6
    move p3, v2

    goto :goto_8

    .line 8220
    :cond_1c
    :goto_7
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz p3, :cond_1d

    .line 8221
    goto :goto_6

    :cond_1d
    iget p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 8310
    :goto_8
    packed-switch p1, :pswitch_data_1

    .line 8364
    :pswitch_4
    if-ltz p3, :cond_26

    .line 8365
    monitor-exit v0

    goto :goto_9

    .line 8327
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 8328
    monitor-exit v0

    return p3

    .line 8330
    :cond_1e
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v0

    return p1

    .line 8334
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 8335
    monitor-exit v0

    return p3

    .line 8337
    :cond_1f
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v0

    return p1

    .line 8353
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 8354
    monitor-exit v0

    return p3

    .line 8356
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 8357
    monitor-exit v0

    return p2

    .line 8359
    :cond_21
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return p1

    .line 8342
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 8343
    monitor-exit v0

    return p3

    .line 8345
    :cond_22
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 8346
    monitor-exit v0

    return p2

    .line 8348
    :cond_23
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return p1

    .line 8313
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 8314
    monitor-exit v0

    return p3

    .line 8316
    :cond_24
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return p1

    .line 8320
    :pswitch_a
    invoke-direct {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 8321
    monitor-exit v0

    return p3

    .line 8323
    :cond_25
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return p1

    .line 8365
    :goto_9
    return p3

    .line 8367
    :cond_26
    monitor-exit v0

    return v1

    .line 8369
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 0

    .line 8374
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 8386
    const/4 p1, 0x1

    return p1

    .line 8378
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result p1

    return p1

    .line 8383
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 3

    .line 7762
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 7763
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7764
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7765
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7766
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7767
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7768
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7769
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7771
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 7772
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 7774
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7775
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 7776
    return-void

    .line 7774
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    .line 7818
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7819
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 7820
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 7822
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7823
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 7824
    return-void

    .line 7822
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    .line 7828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 7829
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7831
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 7833
    :cond_0
    monitor-exit p1

    .line 7834
    return-void

    .line 7833
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 4

    .line 7790
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 7791
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7792
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7793
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7794
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7795
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7796
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7798
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p1, :cond_1

    .line 7799
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7800
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7801
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 7802
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v2

    .line 7801
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 7804
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7806
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_1

    .line 7810
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    .line 7812
    :goto_1
    monitor-exit v1

    .line 7813
    return-void

    .line 7812
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 8

    .line 3932
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p1, v0, :cond_8

    .line 3933
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 3934
    move v0, v6

    goto :goto_0

    .line 3933
    :cond_0
    nop

    .line 3934
    move v0, v3

    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v2, :cond_1

    .line 3935
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v2, :cond_1

    .line 3936
    move v7, v6

    goto :goto_1

    .line 3935
    :cond_1
    nop

    .line 3936
    move v7, v3

    :goto_1
    if-nez v0, :cond_7

    if-eqz v7, :cond_2

    goto :goto_4

    .line 3939
    :cond_2
    if-eq p2, v5, :cond_6

    if-ne p2, v4, :cond_3

    goto :goto_3

    .line 3942
    :cond_3
    if-eq p2, v6, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 3946
    :cond_4
    goto/16 :goto_8

    .line 3944
    :cond_5
    :goto_2
    const p1, 0x10a002d

    return p1

    .line 3941
    :cond_6
    :goto_3
    const p1, 0x10a002e

    return p1

    .line 3937
    :cond_7
    :goto_4
    return v2

    .line 3946
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_16

    .line 3947
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_9

    .line 3948
    return v3

    .line 3951
    :cond_9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v4, :cond_e

    .line 3952
    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 3959
    :cond_a
    if-eq p2, v6, :cond_b

    if-ne p2, v1, :cond_17

    .line 3961
    :cond_b
    const p1, 0x10a0026

    return p1

    .line 3954
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3955
    const p1, 0x10a0028

    return p1

    .line 3957
    :cond_d
    const p1, 0x10a0027

    return p1

    .line 3963
    :cond_e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v5, :cond_12

    .line 3964
    if-eq p2, v5, :cond_11

    if-ne p2, v4, :cond_f

    goto :goto_6

    .line 3967
    :cond_f
    if-eq p2, v6, :cond_10

    if-ne p2, v1, :cond_17

    .line 3969
    :cond_10
    const p1, 0x10a002b

    return p1

    .line 3966
    :cond_11
    :goto_6
    const p1, 0x10a002c

    return p1

    .line 3971
    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v6, :cond_17

    .line 3972
    if-eq p2, v5, :cond_15

    if-ne p2, v4, :cond_13

    goto :goto_7

    .line 3975
    :cond_13
    if-eq p2, v6, :cond_14

    if-ne p2, v1, :cond_17

    .line 3977
    :cond_14
    const p1, 0x10a0029

    return p1

    .line 3974
    :cond_15
    :goto_7
    const p1, 0x10a002a

    return p1

    .line 3980
    :cond_16
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_17

    .line 3981
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result p1

    return p1

    .line 3984
    :cond_17
    :goto_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_18

    .line 3985
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3987
    const p1, 0x10a0013

    return p1

    .line 3989
    :cond_18
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7e7

    if-ne p1, v0, :cond_19

    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz p1, :cond_19

    if-ne p2, v6, :cond_19

    .line 3995
    return v2

    .line 3998
    :cond_19
    return v3
.end method

.method public selectRotationAnimationLw([I)V
    .locals 6

    .line 4034
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4040
    :cond_0
    move v0, v2

    goto :goto_1

    .line 4034
    :cond_1
    :goto_0
    nop

    .line 4040
    move v0, v1

    :goto_1
    const v3, 0x10a007a

    const v4, 0x10a0079

    if-eqz v0, :cond_2

    .line 4041
    aput v3, p1, v2

    .line 4042
    aput v4, p1, v1

    .line 4043
    return-void

    .line 4045
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    .line 4046
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getRotationAnimationHint()I

    move-result v0

    .line 4047
    if-gez v0, :cond_3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_3

    .line 4048
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 4050
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 4062
    aput v2, p1, v1

    aput v2, p1, v2

    goto :goto_2

    .line 4057
    :pswitch_0
    aput v3, p1, v2

    .line 4058
    aput v4, p1, v1

    .line 4059
    goto :goto_2

    .line 4053
    :pswitch_1
    const v0, 0x10a007b

    aput v0, p1, v2

    .line 4054
    aput v4, p1, v1

    .line 4055
    nop

    .line 4065
    :goto_2
    goto :goto_3

    .line 4066
    :cond_4
    aput v2, p1, v1

    aput v2, p1, v2

    .line 4068
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .line 8170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 8171
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1

    .line 8174
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 8175
    return-void
.end method

.method public sendCustomAction(Landroid/content/Intent;)V
    .locals 2

    .line 10074
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 10075
    if-eqz p1, :cond_2

    .line 10076
    const-string v0, "action_handler_show_power_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10077
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    goto :goto_0

    .line 10078
    :cond_0
    const-string v0, "action_handler_screenshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10079
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_SURFACE_FLINGER"

    const-string v1, "WindowManagersendCustomAction permission denied"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10080
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10081
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 10082
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10083
    :cond_1
    const-string v0, "action_handler_region_screenshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10084
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_SURFACE_FLINGER"

    const-string v1, "WindowManagersendCustomAction permission denied"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10085
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10086
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 10087
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10094
    :cond_2
    :goto_0
    return-void
.end method

.method public setAodShowing(Z)Z
    .locals 1

    .line 10059
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_0

    .line 10060
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 10061
    const/4 p1, 0x1

    return p1

    .line 10063
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2

    .line 8989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8990
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_0

    .line 8991
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 8992
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8994
    :cond_0
    monitor-exit v0

    .line 8995
    return-void

    .line 8994
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCurrentUserLw(I)V
    .locals 1

    .line 9497
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 9498
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 9499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 9501
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    .line 9502
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 9504
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 9505
    if-eqz v0, :cond_2

    .line 9506
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 9508
    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 9509
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    .line 9492
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 9493
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3

    .line 6655
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_0

    .line 6656
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting Intent for HDMI HPD :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6657
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6658
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    .line 6659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6660
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6661
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6662
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6664
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 5

    .line 2813
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2816
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 2818
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2820
    const v0, 0x11200b4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le p2, p3, :cond_2

    .line 2821
    nop

    .line 2822
    nop

    .line 2823
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2824
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 2825
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2826
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2827
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_0

    .line 2829
    :cond_1
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2830
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2846
    :goto_0
    move v1, p2

    move v0, p3

    goto :goto_2

    .line 2833
    :cond_2
    nop

    .line 2834
    nop

    .line 2835
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2836
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2837
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2838
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2839
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_1

    .line 2841
    :cond_3
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2842
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 2846
    :goto_1
    move v0, p2

    move v1, p3

    :goto_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBarSize()V

    .line 2849
    mul-int/lit16 v0, v0, 0xa0

    div-int/2addr v0, p4

    .line 2850
    mul-int/lit16 v1, v1, 0xa0

    div-int/2addr v1, p4

    .line 2853
    if-eq p2, p3, :cond_4

    const/16 p2, 0x258

    if-ge v0, p2, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v4

    :goto_3
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 2857
    const-string/jumbo p2, "portrait"

    const-string/jumbo p3, "persist.demo.hdmirotation"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2858
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_4

    .line 2860
    :cond_5
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 2862
    :goto_4
    const-string/jumbo p2, "persist.demo.hdmirotationlock"

    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 2866
    const-string/jumbo p2, "portrait"

    const-string/jumbo p3, "persist.demo.remoterotation"

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2867
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_5

    .line 2869
    :cond_6
    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .line 2871
    :goto_5
    const-string/jumbo p2, "persist.demo.rotationlock"

    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    .line 2878
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.type.automotive"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    .line 2882
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string p4, "android.software.leanback"

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    .line 2884
    const/16 p4, 0x3c0

    if-lt v1, p4, :cond_7

    const/16 p4, 0x2d0

    if-ge v0, p4, :cond_8

    :cond_7
    if-nez p2, :cond_8

    if-eqz p3, :cond_9

    :cond_8
    const p2, 0x1120080

    .line 2885
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "true"

    const-string p2, "config.override_forced_orient"

    .line 2889
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 2890
    return-void

    .line 2814
    :cond_a
    :goto_7
    return-void
.end method

.method public setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    .line 9486
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9487
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9488
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0

    .line 5172
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 5173
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0

    .line 5167
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 5168
    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0

    .line 5162
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 5163
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1

    .line 8392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 8393
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 2

    .line 8517
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 8518
    if-eqz p1, :cond_0

    .line 8519
    const/4 p1, 0x0

    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 8521
    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 9513
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 9514
    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 3

    .line 8495
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8498
    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne p1, v1, :cond_0

    .line 8499
    const-string/jumbo p1, "user_rotation"

    invoke-static {v0, p1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8503
    const-string p1, "accelerometer_rotation"

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 8508
    :cond_0
    const-string p1, "accelerometer_rotation"

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8513
    :goto_0
    return-void
.end method

.method public shouldRotateSeamlessly(II)Z
    .locals 2

    .line 9532
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 9538
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v0, :cond_1

    .line 9539
    return v1

    .line 9541
    :cond_1
    sub-int/2addr p2, p1

    .line 9542
    if-gez p2, :cond_2

    add-int/lit8 p2, p2, 0x4

    .line 9547
    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 9548
    return v1

    .line 9551
    :cond_3
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9552
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq p2, v0, :cond_4

    .line 9553
    return v1

    .line 9560
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9561
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v0, p1, :cond_5

    .line 9562
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 9563
    :cond_5
    const/4 p1, 0x1

    return p1

    .line 9565
    :cond_6
    return v1

    .line 9533
    :cond_7
    :goto_0
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 8609
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8664
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .line 2095
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2097
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 4

    .line 2100
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_0

    .line 2101
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 2104
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 2105
    if-eqz v0, :cond_1

    .line 2106
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->stopLongshot()V

    .line 2109
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 2111
    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .line 5005
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5006
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5007
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 1

    .line 8904
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8905
    goto :goto_0

    :catch_0
    move-exception v0

    .line 8906
    :goto_0
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 8908
    if-eqz p2, :cond_0

    .line 8909
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 8912
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object p2

    .line 8913
    if-eqz p2, :cond_2

    .line 8915
    if-eqz p1, :cond_1

    .line 8916
    :try_start_1
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 8920
    :catch_1
    move-exception p2

    goto :goto_2

    .line 8918
    :cond_1
    :goto_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8919
    return-void

    .line 8920
    :goto_2
    nop

    .line 8926
    :cond_2
    if-eqz p1, :cond_3

    .line 8927
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8928
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 8930
    :cond_3
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 8933
    :goto_3
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8934
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1

    .line 8085
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 8087
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 8089
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1

    .line 7646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 7647
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 7649
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 7650
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 7652
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    if-eqz p1, :cond_1

    .line 7653
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/pocket/PocketManager;->onInteractiveChanged(Z)V

    .line 7655
    :cond_1
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    .line 7685
    const/4 v0, 0x1

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7692
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7693
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 7695
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 7696
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7697
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7698
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7700
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 7701
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 7704
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    if-eqz v1, :cond_1

    .line 7705
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    invoke-virtual {v1, v0}, Landroid/pocket/PocketManager;->onInteractiveChanged(Z)V

    .line 7707
    :cond_1
    return-void

    .line 7698
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopLongshotConnection()V
    .locals 1

    .line 2128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper;->stopLongshotConnection()V

    .line 2131
    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .line 8585
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 8586
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8587
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 8588
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 8589
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 8591
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8592
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 8593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 8594
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 8595
    return-void

    .line 8591
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    .line 8547
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 8549
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pocket"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pocket/PocketManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    .line 8550
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketManager:Landroid/pocket/PocketManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketCallback:Landroid/pocket/IPocketCallback;

    invoke-virtual {v0, v1}, Landroid/pocket/PocketManager;->addCallback(Landroid/pocket/IPocketCallback;)V

    .line 8551
    new-instance v0, Lcom/android/server/policy/pocket/PocketLock;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/pocket/PocketLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPocketLock:Lcom/android/server/policy/pocket/PocketLock;

    .line 8553
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 8554
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    .line 8555
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 8558
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 8559
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 8560
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8561
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 8563
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8571
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_1

    .line 8572
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 8574
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8576
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    .line 8577
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    .line 8579
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 8580
    return-void

    .line 8574
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public takeOPScreenshot(II)V
    .locals 0

    .line 2135
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2136
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2137
    return-void
.end method

.method protected toggleRecentApps()V
    .locals 1

    .line 4996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4997
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4998
    if-eqz v0, :cond_0

    .line 4999
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 5001
    :cond_0
    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 3

    .line 1411
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    return-void

    .line 1423
    :cond_0
    nop

    .line 1427
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v0, :cond_2

    .line 1428
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    nop

    .line 1431
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable(Z)V

    .line 1440
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1445
    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1446
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1448
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1450
    :cond_3
    return-void
.end method

.method updateRotation(Z)V
    .locals 2

    .line 8825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8828
    goto :goto_0

    .line 8826
    :catch_0
    move-exception p1

    .line 8829
    :goto_0
    return-void
.end method

.method updateRotation(ZZ)V
    .locals 1

    .line 8834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8837
    goto :goto_0

    .line 8835
    :catch_0
    move-exception p1

    .line 8838
    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 9

    .line 2937
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2938
    nop

    .line 2939
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2940
    :try_start_0
    const-string v2, "end_button_behavior"

    const/4 v3, 0x2

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2944
    const-string v2, "incall_power_button_behavior"

    const/4 v5, 0x1

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2948
    const-string v2, "incall_back_button_behavior"

    const/4 v6, 0x0

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2952
    const-string/jumbo v2, "system_navigation_keys_enabled"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 2955
    const-string/jumbo v2, "volume_hush_gesture"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2958
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x11200f7

    .line 2959
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2960
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2963
    :cond_1
    const-string/jumbo v2, "show_rotation_suggestions"

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2967
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-eq v7, v2, :cond_2

    .line 2968
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    .line 2969
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2974
    :cond_2
    const-string/jumbo v2, "volume_rocker_wake"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v6

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeRockerWake:Z

    .line 2977
    const-string/jumbo v2, "torch_long_press_power_gesture"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchLongPressPowerEnabled:Z

    .line 2980
    const-string/jumbo v2, "torch_long_press_power_timeout"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTorchTimeout:I

    .line 2985
    const-string v2, "home_wake_button"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeWakeButton:Z

    .line 2989
    const-string/jumbo v2, "wake_gesture_enabled"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 2992
    move v2, v5

    goto :goto_4

    .line 2989
    :cond_6
    nop

    .line 2992
    move v2, v6

    :goto_4
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v7, v2, :cond_7

    .line 2993
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2994
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2998
    :cond_7
    const-string/jumbo v2, "three_finger_gesture"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 3000
    move v2, v5

    goto :goto_5

    .line 2998
    :cond_8
    nop

    .line 3000
    move v2, v6

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->enableSwipeThreeFingerGesture(Z)V

    .line 3003
    const-string/jumbo v2, "user_rotation"

    invoke-static {v0, v2, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 3006
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v7, v2, :cond_9

    .line 3007
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 3008
    nop

    .line 3011
    move v2, v5

    goto :goto_6

    :cond_9
    move v2, v6

    :goto_6
    const-string v7, "accelerometer_rotation"

    .line 3010
    invoke-static {v0, v7, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_a

    .line 3012
    nop

    .line 3014
    move v7, v6

    goto :goto_7

    .line 3013
    :cond_a
    nop

    .line 3014
    move v7, v5

    :goto_7
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v8, v7, :cond_b

    .line 3015
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 3016
    nop

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 3020
    move v2, v5

    :cond_b
    const-string v7, "accelerometer_rotation_angles"

    const/4 v8, -0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationAngles:I

    .line 3023
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v7, :cond_d

    .line 3024
    const-string/jumbo v7, "pointer_location"

    invoke-static {v0, v7, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 3026
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v8, v7, :cond_d

    .line 3027
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 3028
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_c

    .line 3029
    nop

    .line 3028
    move v3, v5

    goto :goto_8

    .line 3029
    :cond_c
    nop

    .line 3028
    :goto_8
    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3033
    :cond_d
    const-string/jumbo v3, "screen_off_timeout"

    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 3035
    const-string v3, "default_input_method"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3037
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 3038
    move v3, v5

    goto :goto_9

    .line 3037
    :cond_e
    nop

    .line 3038
    move v3, v6

    :goto_9
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v7, v3, :cond_f

    .line 3039
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 3040
    nop

    .line 3042
    move v2, v5

    :cond_f
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v3, :cond_10

    .line 3043
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v7}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V

    .line 3046
    :cond_10
    const-string/jumbo v3, "volume_button_music_control"

    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_11

    move v3, v5

    goto :goto_a

    :cond_11
    move v3, v6

    :goto_a
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeMusicControl:Z

    .line 3050
    const-string v3, "call_volume_answer"

    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v5, :cond_12

    move v3, v5

    goto :goto_b

    :cond_12
    move v3, v6

    :goto_b
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeAnswer:Z

    .line 3053
    const-string/jumbo v3, "use_bottom_gesture_navigation"

    invoke-static {v0, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_13

    move v3, v5

    goto :goto_c

    :cond_13
    move v3, v6

    :goto_c
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    .line 3056
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3058
    const-string v1, "navigation_bar_visible"

    .line 3060
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/utils/ActionUtils;->hasNavbarByDefault(Landroid/content/Context;)Z

    move-result v3

    .line 3058
    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_14

    .line 3062
    move v0, v5

    goto :goto_d

    .line 3058
    :cond_14
    nop

    .line 3062
    move v0, v6

    :goto_d
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    if-eq v0, v1, :cond_15

    .line 3063
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavbarVisible:Z

    .line 3065
    :cond_15
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBarSize()V

    .line 3067
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3068
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/WindowManagerPolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 3069
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3070
    if-eqz v2, :cond_16

    .line 3071
    invoke-virtual {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 3074
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButtonRegistered:Z

    if-nez v0, :cond_17

    .line 3075
    new-instance v0, Lcom/android/server/policy/GestureButton;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/GestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    .line 3076
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3077
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButtonRegistered:Z

    .line 3079
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButtonRegistered:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    if-nez v0, :cond_18

    .line 3080
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3081
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButtonRegistered:Z

    .line 3083
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseGestureButton:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    if-eqz v0, :cond_19

    .line 3084
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureButton:Lcom/android/server/policy/GestureButton;

    invoke-virtual {v0}, Lcom/android/server/policy/GestureButton;->updateSettings()V

    .line 3086
    :cond_19
    return-void

    .line 3069
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3056
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method updateUiMode()V
    .locals 1

    .line 8812
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    .line 8813
    const-string/jumbo v0, "uimode"

    .line 8814
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8813
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 8817
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8819
    goto :goto_0

    .line 8818
    :catch_0
    move-exception v0

    .line 8820
    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 5

    .line 8693
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 8694
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    .line 8696
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8697
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8699
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8701
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_1

    .line 8702
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 8706
    :cond_1
    return-void

    .line 8699
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 3

    .line 4073
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4084
    return v0

    .line 4077
    :pswitch_0
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 4078
    return v1

    .line 4080
    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 4081
    invoke-virtual {p0, p3}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 4082
    aget v2, p3, v1

    if-ne p1, v2, :cond_1

    aget p1, p3, v0

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10a007a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 9570
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 9571
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9572
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9573
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    const-wide v1, 0x10e00000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9574
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const-wide v1, 0x10e00000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9575
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const-wide v1, 0x10800000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9576
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    const-wide v1, 0x10800000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9577
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    const-wide v1, 0x10800000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9578
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    .line 9579
    const-wide v0, 0x10900000008L

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 9581
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 9582
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v1, 0x10b00000009L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9584
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    .line 9585
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v1, 0x10b0000000aL

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9588
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 9589
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v1, 0x10b0000000bL

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9592
    :cond_3
    const-wide v0, 0x1080000000cL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9593
    const-wide v0, 0x1080000000dL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9594
    const-wide v0, 0x1080000000eL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9595
    const-wide v0, 0x1080000000fL

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9596
    const-wide v0, 0x10800000010L

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9597
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const-wide v1, 0x10b00000011L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/StatusBarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9598
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const-wide v1, 0x10b00000012L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/BarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_4

    .line 9600
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    const-wide v1, 0x10b00000013L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9602
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_5

    .line 9603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-wide v1, 0x10b00000014L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 9605
    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 9606
    return-void
.end method
