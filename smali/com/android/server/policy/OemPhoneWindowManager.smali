.class public Lcom/android/server/policy/OemPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;,
        Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_ENABLE_LIDCONTROLSSLEEP:Ljava/lang/String; = "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field public static DEBUG:Z = false

.field public static DEBUG_INPUT:Z = false

.field public static DEBUG_KEYLOCK:Z = false

.field public static DEBUG_KEYSWAP:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final ENG_RESULT_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/ENG_RESULT"

.field private static final HAS_HW_KEYS:Z

.field static final IS_QUICK_PAY_ENABLED:Z

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xd

.field private static final KEY_ACTION_END:I = 0xc

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xc

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field private static final KEY_ACTION_QUICK_PAY:I = 0xb

.field private static final KEY_ACTION_SPLIT_SCREEN:I = 0xa

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field public static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final KEY_DISABLE_NODE:Ljava/lang/String; = "/proc/touchpanel/key_disable"

.field private static final KEY_DISABLE_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_disable"

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final KEY_SWITCH_NODE:Ljava/lang/String; = "/proc/touchpanel/key_switch"

.field private static final KEY_SWITCH_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_rep"

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field static final MSG_CONTROL_MISSTOUCH:I = 0x1

.field static final MSG_RECORD_POWER_KEY:I = 0x2

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

.field static final RECORD_POWER_KEY_DELAY:I = 0x1388

.field static final SOURCE_OEM:I = 0x10000000

.field public static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final TAG:Ljava/lang/String; = "OemPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field private static final VOLUME_UP_DOUBLE_TAP_INTERVAL:J = 0x12cL

.field private static mBackKeyPressedTime:J

.field private static final mBlockingKeySet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field private static mKeyBlocked:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field private static mLockTaskModeEnabled:Z

.field private static mLockforKeySet:Ljava/lang/Object;

.field private static mSpecialParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnpingCombineKeyPressedTime:J

.field private static sEnableSoftwareKeys:Z


# instance fields
.field private INCALL_ACTIVITY:Ljava/lang/String;

.field private PKG_H2_LAUNCHER:Ljava/lang/String;

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field final mBgHandler:Landroid/os/Handler;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEnableThreePointersScreenShot:Z

.field mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

.field mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

.field mFloatingButton:Landroid/widget/ImageButton;

.field mFloatingButtonBG:Landroid/widget/ImageView;

.field private mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

.field protected mKeysBehavior:I

.field mLock:Ljava/lang/Object;

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

.field private mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

.field private mOemGestureRegistered:Z

.field mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field volatile mPowerKeyLongPressHandled:Z

.field mPowerOffReceiver:Landroid/content/BroadcastReceiver;

.field mQuickPayAlertDialog:Landroid/app/AlertDialog;

.field mQuickPayBtnLaunched:Z

.field mQuickPayBtnView:Landroid/view/View;

.field mQuickPayBtnX:I

.field mQuickPayBtnY:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mQuickPayDefault:I

.field mQuickPayEnabled:Z

.field mQuickPayFocusWin:Ljava/lang/String;

.field mQuickPayFocusWinPid:I

.field mQuickPayMaxWaitTime:J

.field mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

.field mShuttingDown:Z

.field private mThreePointerGestureRegisterd:Z

.field private mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

.field private mTraceVolumeUpKeyTime:J

.field private mUnpinRunnable:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 156
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    .line 157
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    .line 158
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYLOCK:Z

    .line 159
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_KEYSWAP:Z

    .line 235
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 236
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    .line 237
    sput-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    .line 251
    const-string v0, "1"

    const-string/jumbo v2, "qemu.hw.mainkeys"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    .line 284
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    .line 321
    const-string v0, "QuickPay_APPS_Config"

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    .line 763
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    .line 764
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 234
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    .line 252
    const-string v2, "com.android.incallui.InCallActivity"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    .line 253
    const-string/jumbo v2, "net.oneplus.h2launcher"

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 276
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEnableThreePointersScreenShot:Z

    .line 277
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 299
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    .line 300
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 302
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    .line 306
    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    .line 319
    new-instance v2, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 344
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    .line 362
    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 489
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$1;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$3;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    .line 2185
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$6;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    .line 2199
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$7;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2208
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$8;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2217
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$9;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3287
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemPhoneWindowManager$12;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .registers 1

    .line 154
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemPhoneWindowManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemPhoneWindowManager;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getProductLineTestFlag()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/OemPhoneWindowManager;IB)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # B

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlagExtraByte(IB)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 154
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 154
    sput-boolean p0, Lcom/android/server/policy/OemPhoneWindowManager;->sEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/OemPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 4
    .param p0, "bArray"    # [B

    .line 747
    if-eqz p0, :cond_21

    array-length v0, p0

    if-gtz v0, :cond_6

    goto :goto_21

    .line 750
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 752
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    .line 753
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "sTemp":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 756
    .end local v1    # "i":I
    .end local v2    # "sTemp":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 748
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_21
    :goto_21
    const-string v0, ""

    return-object v0
.end method

.method private collapsePanels()V
    .registers 5

    .line 2382
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2383
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ collapsePanels() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_12

    .line 2387
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2391
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 2394
    goto :goto_2f

    .line 2392
    :catch_18
    move-exception v0

    .line 2393
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collapse notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private collectAssistantEvent(II)V
    .registers 4
    .param p1, "behavior"    # I
    .param p2, "method"    # I

    .line 1478
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 1481
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    invoke-virtual {v0, p2}, Lnet/oneplus/odm/insight/AssistantEventCollector;->collectOpenAssistantEvent(I)V

    .line 1484
    :cond_8
    return-void
.end method

.method private disableQuickPayButton()V
    .registers 3

    .line 3034
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 3035
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 3036
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3037
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3039
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 3041
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    .line 3042
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3044
    :cond_26
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "QuickPay: Ball disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    return-void
.end method

.method private enableQuickPayButton()V
    .registers 9

    .line 2860
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 2861
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    return-void

    .line 2862
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-nez v0, :cond_f4

    .line 2863
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2864
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x5090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    .line 2866
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    .line 2868
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    const v2, 0x5070059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButtonBG:Landroid/widget/ImageView;

    .line 2871
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 2872
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x128

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2876
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2878
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "QuickPayBall"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2879
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2880
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030004

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2881
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2882
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2884
    .local v1, "margin":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5060087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2886
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2887
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2889
    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    if-nez v3, :cond_cc

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    if-eqz v3, :cond_af

    goto :goto_cc

    .line 2893
    :cond_af
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2894
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v4, v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_d8

    .line 2890
    :cond_cc
    :goto_cc
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2891
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2897
    :goto_d8
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFloatingButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$10;

    invoke-direct {v4, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$10;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3029
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3030
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Ball enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "margin":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f4
    return-void
.end method

.method private expandNotificationsPanel()V
    .registers 5

    .line 2366
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2367
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ expandNotificationPanel() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_12

    .line 2371
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2375
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 2378
    goto :goto_2f

    .line 2376
    :catch_18
    move-exception v0

    .line 2377
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to expand notification panel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2840
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2841
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 2840
    return-object v0

    .line 2842
    :catch_b
    move-exception v0

    .line 2843
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: getApplicationIcon failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2845
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAvailablePayApps()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;",
            ">;"
        }
    .end annotation

    .line 2816
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 2818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2819
    .local v0, "dialoglist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1f
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 2820
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2821
    .local v3, "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2822
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 2825
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_62

    .line 2826
    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2827
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_62

    .line 2828
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2830
    .local v5, "iconSize":I
    invoke-virtual {v4, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2831
    iput-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2819
    .end local v3    # "app":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconSize":I
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2836
    .end local v2    # "i":I
    :cond_65
    return-object v0
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2558
    const-string v0, "com.android.systemui"

    .line 2559
    .local v0, "SYSTEMUI_PACKAGE":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2560
    .local v1, "defaultHomePackage":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2561
    .local v2, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x2

    .line 2562
    .local v3, "flags":I
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 2565
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x1

    .line 2566
    .local v5, "startIdx":I
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2567
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 2568
    const/4 v5, 0x0

    .line 2570
    :cond_2f
    move v6, v5

    .local v6, "i":I
    :goto_30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_69

    .line 2571
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2572
    .local v7, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_47

    .line 2573
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2575
    :cond_47
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 2576
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v9, "com.android.systemui"

    .line 2577
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    .line 2578
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v9

    .line 2570
    .end local v7    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 2582
    .end local v6    # "i":I
    :cond_69
    const/4 v6, 0x0

    return-object v6
.end method

.method private getProductLineTestFlag()[B
    .registers 7

    .line 604
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 605
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 607
    .local v1, "result_file":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_11

    move-object v1, v2

    goto :goto_4c

    .line 612
    :catch_11
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v1, 0x0

    .line 615
    const/4 v0, 0x0

    .line 615
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4d

    .line 608
    :catch_2f
    move-exception v2

    .line 609
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v1, 0x0

    .line 611
    const/4 v0, 0x0

    .line 616
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_4c
    nop

    .line 618
    :goto_4d
    if-eqz v1, :cond_be

    .line 620
    :try_start_4f
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_61
    .catchall {:try_start_4f .. :try_end_52} :catchall_5f

    .line 626
    :try_start_52
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_80

    .line 627
    :catch_56
    move-exception v2

    .line 628
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_89

    .line 625
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_5f
    move-exception v2

    goto :goto_9d

    .line 621
    :catch_61
    move-exception v2

    .line 622
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_62
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_5f

    .line 623
    const/4 v0, 0x0

    .line 626
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 629
    :goto_80
    goto :goto_be

    .line 627
    :catch_81
    move-exception v2

    .line 628
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_89
    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_be

    .line 625
    :goto_9d
    nop

    .line 626
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    .line 629
    goto :goto_bd

    .line 627
    :catch_a2
    move-exception v3

    .line 628
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException while close : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OemPhoneWindowManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v3    # "e":Ljava/io/IOException;
    :goto_bd
    throw v2

    .line 632
    :cond_be
    :goto_be
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProductLineTestFlag result[] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 3047
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_11

    .line 3048
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 3049
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 3051
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private hasInComingCall()Z
    .registers 5

    .line 2642
    const/4 v0, 0x0

    .line 2644
    .local v0, "inCallFocused":Z
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1c

    .line 2645
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2646
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->INCALL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2647
    const/4 v0, 0x1

    .line 2651
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1c
    return v0
.end method

.method private ignoreKeyCustomization()Z
    .registers 4

    .line 2244
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2245
    return v1

    .line 2249
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz v0, :cond_17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2849
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2850
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2851
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_13

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz v2, :cond_13

    .line 2852
    const/4 v0, 0x1

    return v0

    .line 2855
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_13
    goto :goto_15

    .line 2854
    :catch_14
    move-exception v1

    .line 2856
    :goto_15
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    return v0
.end method

.method private isRecentKeyVisible()Z
    .registers 4

    .line 2655
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "swipe_up_to_switch_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v2, 0x1

    nop

    :cond_12
    move v0, v2

    .line 2657
    .local v0, "recentVisible":Z
    return v0
.end method

.method private launchCameraAction()V
    .registers 3

    .line 2514
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->sendCloseSystemWindows()V

    .line 2515
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2517
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 2518
    return-void
.end method

.method private launchQuickAccessPage()V
    .registers 3

    .line 2602
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->PKG_H2_LAUNCHER:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2603
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2603
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_1f

    .line 2605
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2607
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1f
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2608
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2609
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2610
    return-void
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;)V
    .registers 11
    .param p1, "behavior"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 2254
    .local v0, "keyguardOn":Z
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    .line 2257
    .local v1, "userSetupComplete":Z
    const/4 v2, 0x4

    const/16 v3, 0xd

    if-nez v1, :cond_15

    .line 2258
    if-eq p1, v3, :cond_10

    goto :goto_14

    .line 2260
    :cond_10
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2261
    nop

    .line 2265
    :goto_14
    return-void

    .line 2270
    :cond_15
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/scene/OimcBrickModeObserver;->isOn()Z

    move-result v4

    if-eqz v4, :cond_3d

    if-eq p1, v3, :cond_3d

    .line 2271
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring key customization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by Zen Mode!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    return-void

    .line 2278
    :cond_3d
    const/4 v4, 0x1

    if-eq p1, v3, :cond_77

    const/16 v3, 0xc

    if-eq p1, v3, :cond_77

    if-eq p1, v4, :cond_77

    const/4 v3, 0x2

    if-eq p1, v3, :cond_77

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 2281
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 2282
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 2283
    const-string v2, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring key customization: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ; there\'s a ringing incoming call."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return-void

    .line 2290
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_77
    packed-switch p1, :pswitch_data_124

    goto/16 :goto_123

    .line 2292
    :pswitch_7c
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2293
    goto/16 :goto_123

    .line 2295
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->handleShortPressOnHome()V

    .line 2296
    goto/16 :goto_123

    .line 2344
    :pswitch_86
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_123

    .line 2345
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2346
    .local v2, "keyCode":I
    const-string v3, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: KEY_ACTION_QUICK_PAY code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    const/16 v3, 0x84

    if-eq v2, v3, :cond_bc

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_bc

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2348
    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 2349
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "QuickPay: Keyguard is showing, skip to start QuickPay."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    return-void

    .line 2352
    :cond_bc
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 2354
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 2356
    const/4 v7, 0x0

    if-ne v2, v3, :cond_c8

    goto :goto_c9

    :cond_c8
    move v4, v7

    .line 2354
    :goto_c9
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 2356
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2357
    .end local v2    # "keyCode":I
    goto :goto_123

    .line 2337
    :pswitch_d1
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleSplitScreen()V

    .line 2338
    goto :goto_123

    .line 2323
    :pswitch_d5
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_123

    .line 2324
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2325
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 2328
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->collapsePanels()V

    goto :goto_f6

    .line 2332
    :cond_f3
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandNotificationsPanel()V

    .line 2334
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_f6
    goto :goto_123

    .line 2320
    :pswitch_f7
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchQuickAccessPage()V

    .line 2321
    goto :goto_123

    .line 2317
    :pswitch_fb
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    .line 2318
    goto :goto_123

    .line 2314
    :pswitch_103
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchVoiceAssistAction()V

    .line 2315
    goto :goto_123

    .line 2310
    :pswitch_107
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->launchCameraAction()V

    .line 2311
    goto :goto_123

    .line 2307
    :pswitch_10b
    invoke-direct {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->putDeviceToSleep()V

    .line 2308
    goto :goto_123

    .line 2304
    :pswitch_10f
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2305
    goto :goto_123

    .line 2301
    :pswitch_118
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->toggleRecentApps()V

    .line 2302
    goto :goto_123

    .line 2298
    :pswitch_11c
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 2299
    goto :goto_123

    .line 2340
    :pswitch_122
    nop

    .line 2363
    :cond_123
    :goto_123
    return-void

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_122
        :pswitch_11c
        :pswitch_118
        :pswitch_10f
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_fb
        :pswitch_f7
        :pswitch_d5
        :pswitch_d1
        :pswitch_86
        :pswitch_81
        :pswitch_7c
    .end packed-switch
.end method

.method private putDeviceToSleep()V
    .registers 4

    .line 2594
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2595
    const-string v0, "OemPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2598
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 13

    .line 2409
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2412
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2414
    .local v1, "defaultLongPressOnHomeBehavior":I
    const-string/jumbo v2, "key_home_long_press_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2417
    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ltz v2, :cond_27

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v4, :cond_29

    .line 2419
    :cond_27
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2423
    :cond_29
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e003c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2425
    .local v2, "defaultDoubleTapOnHomeBehavior":I
    const-string/jumbo v5, "key_home_double_tap_action"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2428
    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v5, :cond_47

    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v5, v4, :cond_49

    .line 2430
    :cond_47
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2434
    :cond_49
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2436
    .local v5, "defaultLongPressOnMenuBehavior":I
    const-string/jumbo v6, "key_menu_long_press_action"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2439
    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v6, :cond_67

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-le v6, v4, :cond_69

    .line 2441
    :cond_67
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnMenuBehavior:I

    .line 2445
    :cond_69
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 2447
    .local v6, "defaultDoubleTapOnMenuBehavior":I
    const-string/jumbo v7, "key_menu_double_tap_action"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 2450
    iget v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v7, :cond_87

    iget v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-le v7, v4, :cond_89

    .line 2452
    :cond_87
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    .line 2456
    :cond_89
    iget-object v7, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5080008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2458
    .local v7, "defaultLongPressOnBackBehavior":I
    const-string/jumbo v8, "key_back_long_press_action"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2461
    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v8, :cond_a7

    iget v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-le v8, v4, :cond_a9

    .line 2463
    :cond_a7
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2467
    :cond_a9
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 2469
    .local v8, "defaultDoubleTapOnBackBehavior":I
    const-string/jumbo v9, "key_back_double_tap_action"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 2472
    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v9, :cond_c7

    iget v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-le v9, v4, :cond_c9

    .line 2474
    :cond_c7
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    .line 2478
    :cond_c9
    iget-object v9, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5080007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2480
    .local v9, "defaultLongPressOnAppSwitchBehavior":I
    const-string/jumbo v10, "key_app_switch_long_press_action"

    invoke-static {v0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2483
    iget v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v10, :cond_e7

    iget v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-le v10, v4, :cond_e9

    .line 2485
    :cond_e7
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 2489
    :cond_e9
    iget-object v10, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2491
    .local v10, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string/jumbo v11, "key_app_switch_double_tap_action"

    invoke-static {v0, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 2494
    iget v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v11, :cond_107

    iget v11, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-le v11, v4, :cond_109

    .line 2496
    :cond_107
    iput v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    .line 2498
    :cond_109
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 2587
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2588
    .local v0, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2589
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2590
    .local v2, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 3098
    if-nez p1, :cond_3

    .line 3099
    return-void

    .line 3102
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 3102
    .local v1, "index":I
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 3103
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 3104
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3105
    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_76

    .line 3106
    :cond_23
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 3107
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_76

    .line 3108
    :cond_38
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 3109
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_76

    .line 3110
    :cond_4d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 3111
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_76

    .line 3112
    :cond_62
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "op_quick_pay_paytm_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 3113
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 3102
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3116
    .end local v1    # "index":I
    :cond_79
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_80} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_80} :catch_81

    goto :goto_b8

    .line 3119
    :catch_81
    move-exception v0

    .line 3120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_b9

    .line 3117
    :catch_9d
    move-exception v0

    .line 3118
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_b8
    nop

    .line 3122
    :goto_b9
    return-void
.end method

.method public static setKeyLocks(Ljava/lang/Object;)V
    .registers 12
    .param p0, "obj"    # Ljava/lang/Object;

    .line 769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_29

    .line 770
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyLocks caller is not system uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-void

    .line 775
    :cond_29
    :try_start_29
    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_a8

    .line 776
    if-eqz p0, :cond_98

    :try_start_2e
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_98

    .line 777
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 778
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 779
    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    .line 781
    .local v1, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .line 781
    .local v3, "i":I
    :goto_41
    array-length v4, v1

    if-ge v3, v4, :cond_95

    .line 782
    aget-object v4, v1, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "param_e":[Ljava/lang/String;
    const-string/jumbo v5, "keyBlock"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_7b

    .line 784
    array-length v5, v4

    const/4 v8, 0x3

    if-ge v5, v8, :cond_5f

    .line 785
    monitor-exit v0

    return-void

    .line 788
    :cond_5f
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 789
    .local v5, "keyCode":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v8, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v9, v6

    .line 790
    .local v9, "j":I
    :goto_6b
    array-length v10, v4

    if-ge v9, v10, :cond_76

    .line 791
    aget-object v10, v4, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 793
    .end local v9    # "j":I
    :cond_76
    sget-object v9, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 796
    .end local v5    # "keyCode":I
    .end local v8    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7b
    const-string/jumbo v5, "specialParam"

    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 797
    array-length v5, v4

    if-ge v5, v6, :cond_8b

    .line 798
    monitor-exit v0

    return-void

    .line 801
    :cond_8b
    sget-object v5, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v4    # "param_e":[Ljava/lang/String;
    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 804
    .end local v1    # "tmp":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_95
    goto :goto_a4

    .line 808
    :catchall_96
    move-exception v1

    goto :goto_a6

    .line 804
    :cond_98
    if-nez p0, :cond_a4

    .line 805
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 806
    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 808
    :cond_a4
    :goto_a4
    monitor-exit v0

    .line 811
    goto :goto_ac

    .line 808
    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_2e .. :try_end_a7} :catchall_96

    :try_start_a7
    throw v1
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a8} :catch_a8

    .line 809
    :catch_a8
    move-exception v0

    .line 810
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ac
    return-void
.end method

.method private setProductLineTestFlag([B)Z
    .registers 10
    .param p1, "data"    # [B

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 639
    .local v1, "needChmod":Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, "ENG_RESULT_FILE":Ljava/io/File;
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProductLineTestFlag data[] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz p1, :cond_127

    array-length v3, p1

    const/16 v4, 0x80

    if-eq v3, v4, :cond_2d

    goto/16 :goto_127

    .line 645
    :cond_2d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_34

    .line 646
    const/4 v1, 0x1

    .line 648
    :cond_34
    const/4 v3, 0x0

    .line 650
    .local v3, "result_file":Ljava/io/RandomAccessFile;
    :try_start_35
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v6, "rws"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3f} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3f} :catch_41

    move-object v3, v4

    goto :goto_7e

    .line 655
    :catch_41
    move-exception v4

    .line 656
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v3, 0x0

    .line 658
    const/4 v0, 0x0

    .line 658
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7f

    .line 651
    :catch_60
    move-exception v4

    .line 652
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v3, 0x0

    .line 654
    const/4 v0, 0x0

    .line 659
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_7e
    nop

    .line 661
    :goto_7f
    if-eqz v3, :cond_f6

    .line 663
    :try_start_81
    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_a9
    .catchall {:try_start_81 .. :try_end_84} :catchall_a7

    .line 664
    const/4 v0, 0x1

    .line 670
    :try_start_85
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 674
    :goto_88
    goto :goto_f6

    .line 671
    :catch_89
    move-exception v4

    .line 672
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_91
    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 675
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f6

    .line 669
    :catchall_a7
    move-exception v4

    goto :goto_d3

    .line 665
    :catch_a9
    move-exception v4

    .line 666
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_aa
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_aa .. :try_end_c5} :catchall_a7

    .line 667
    const/4 v0, 0x0

    .line 670
    .end local v4    # "e":Ljava/io/IOException;
    :try_start_c6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_88

    .line 671
    :catch_ca
    move-exception v4

    .line 672
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v5, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_91

    .line 669
    .end local v4    # "e":Ljava/io/IOException;
    :goto_d3
    nop

    .line 670
    :try_start_d4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 674
    goto :goto_f5

    .line 671
    :catch_d8
    move-exception v5

    .line 672
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProductLineTestFlag IOException while close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OemPhoneWindowManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 674
    .end local v5    # "e":Ljava/io/IOException;
    :goto_f5
    throw v4

    .line 678
    :cond_f6
    :goto_f6
    if-eqz v1, :cond_126

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 679
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    if-nez v4, :cond_126

    .line 680
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReadable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_126
    return v0

    .line 642
    .end local v3    # "result_file":Ljava/io/RandomAccessFile;
    :cond_127
    :goto_127
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "data is invalid!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return v0
.end method

.method private setProductLineTestFlagExtraByte(IB)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "ret":Z
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProductLineTestFlag index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, "ENG_RESULT_FILE":Ljava/io/File;
    if-ltz p1, :cond_125

    const/16 v2, 0x80

    if-lt p1, v2, :cond_2f

    goto/16 :goto_125

    .line 695
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 697
    :try_start_35
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v3, "filedir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_47

    .line 699
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 700
    :cond_47
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4a} :catch_50
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4a} :catch_4b

    .line 700
    .end local v3    # "filedir":Ljava/io/File;
    goto :goto_54

    .line 703
    :catch_4b
    move-exception v3

    .line 704
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 704
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_55

    .line 701
    :catch_50
    move-exception v3

    .line 702
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 705
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_54
    nop

    .line 706
    :goto_55
    new-array v2, v2, [B

    .line 707
    .local v2, "data":[B
    aput-byte p2, v2, p1

    .line 708
    invoke-direct {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->setProductLineTestFlag([B)Z

    move-result v3

    return v3

    .line 710
    .end local v2    # "data":[B
    :cond_5e
    const/4 v2, 0x0

    .line 712
    .local v2, "result_file":Ljava/io/RandomAccessFile;
    :try_start_5f
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string/jumbo v5, "rws"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_69} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_69} :catch_6b

    move-object v2, v3

    goto :goto_a8

    .line 717
    :catch_6b
    move-exception v3

    .line 718
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x0

    .line 720
    const/4 v0, 0x0

    .line 720
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a9

    .line 713
    :catch_8a
    move-exception v3

    .line 714
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte FileNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    .line 716
    const/4 v0, 0x0

    .line 721
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_a8
    nop

    .line 723
    :goto_a9
    if-eqz v2, :cond_124

    .line 725
    int-to-long v3, p1

    :try_start_ac
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 726
    invoke-virtual {v2, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b2} :catch_d7
    .catchall {:try_start_ac .. :try_end_b2} :catchall_d5

    .line 727
    const/4 v0, 0x1

    .line 733
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    .line 739
    :goto_b6
    goto :goto_124

    .line 734
    :catch_b7
    move-exception v3

    .line 735
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_bf
    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 740
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_124

    .line 732
    :catchall_d5
    move-exception v3

    goto :goto_101

    .line 728
    :catch_d7
    move-exception v3

    .line 729
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_d8
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_d8 .. :try_end_f3} :catchall_d5

    .line 730
    const/4 v0, 0x0

    .line 733
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_f4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_b6

    .line 734
    :catch_f8
    move-exception v3

    .line 735
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_bf

    .line 732
    .end local v3    # "e":Ljava/io/IOException;
    :goto_101
    nop

    .line 733
    :try_start_102
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_106

    .line 739
    goto :goto_123

    .line 734
    :catch_106
    move-exception v4

    .line 735
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProductLineTestFlagExtraByte IOException while close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    const-string v6, "OemPhoneWindowManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 739
    .end local v4    # "e":Ljava/io/IOException;
    :goto_123
    throw v3

    .line 743
    :cond_124
    :goto_124
    return v0

    .line 692
    .end local v2    # "result_file":Ljava/io/RandomAccessFile;
    :cond_125
    :goto_125
    const-string v2, "OemPhoneWindowManager"

    const-string/jumbo v3, "index is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v0
.end method

.method private startQuickPay(IZZ)V
    .registers 11
    .param p1, "which"    # I
    .param p2, "unlocked"    # Z
    .param p3, "fromButton"    # Z

    .line 2753
    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-nez v0, :cond_5

    return-void

    .line 2754
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    return-void

    .line 2756
    :cond_f
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v0, :cond_14

    return-void

    .line 2757
    :cond_14
    iput-boolean p3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    .line 2758
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: startQuickPay which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 2760
    .local v0, "pkgOK":Z
    const/4 v1, 0x0

    if-nez v0, :cond_88

    .line 2761
    move v2, v1

    .local v2, "i":I
    :goto_4e
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_88

    .line 2762
    if-eq p1, v2, :cond_85

    .line 2763
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2764
    .local v3, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iget-boolean v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_85

    iget-object v4, v3, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2765
    move p1, v2

    .line 2766
    const/4 v0, 0x1

    .line 2767
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: startQuickPay new which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    goto :goto_88

    .line 2761
    .end local v3    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 2773
    .end local v2    # "i":I
    :cond_88
    :goto_88
    if-eqz v0, :cond_120

    .line 2774
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 2776
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 2778
    iput p1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 2780
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    .line 2782
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    .line 2783
    .local v2, "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    if-eqz p2, :cond_c6

    .line 2785
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->addAppLockerPassedPackage(Ljava/lang/String;)V

    .line 2786
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 2788
    :cond_c6
    const/4 v1, 0x0

    .line 2789
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    const v4, 0x10008000

    if-eqz v3, :cond_e9

    .line 2790
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2791
    const-string v3, "com.oneplus.quickpay"

    const-string v5, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2792
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2793
    const-string v3, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2794
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_11f

    .line 2795
    :cond_e9
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v3, :cond_103

    .line 2796
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v1, v3

    .line 2797
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2798
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2799
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_11f

    .line 2800
    :cond_103
    iget-object v3, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v3, :cond_11f

    .line 2801
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, v2, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 2803
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2804
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2806
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "next":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_11f
    :goto_11f
    goto :goto_133

    .line 2807
    :cond_120
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x50c0094

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 2808
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2809
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "QuickPay: startQuickPay have no installed app."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_133} :catch_134

    .line 2813
    .end local v0    # "pkgOK":Z
    :goto_133
    goto :goto_14b

    .line 2811
    :catch_134
    move-exception v0

    .line 2812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: startQuickPay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14b
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 2522
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2523
    :catch_5
    move-exception v0

    .line 2524
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not switch to last app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2531
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OemPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    .line 2532
    .local v0, "lastTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2533
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 2536
    .local v2, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_16

    .line 2537
    const/4 v3, 0x0

    return v3

    .line 2542
    :cond_16
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_22

    .line 2543
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    invoke-interface {v2, v3, v5}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 2544
    return v4

    .line 2547
    :cond_22
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_3d

    .line 2548
    const-string v3, "OemPhoneWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switching to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_3d
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v6, 0x2

    invoke-interface {v2, v3, v6, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 2553
    return v4
.end method

.method private toggleSplitScreen()V
    .registers 4

    .line 2399
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2401
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_e

    .line 2402
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    goto :goto_15

    .line 2404
    :cond_e
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Failed to get StatusBarManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :goto_15
    return-void
.end method

.method private triggerVirtualKeypress(I)V
    .registers 19
    .param p1, "keyCode"    # I

    .line 2501
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2502
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2504
    .local v14, "now":J
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const v13, 0x10000101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2507
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    .line 2509
    .local v2, "upEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2510
    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2511
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1782
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_d

    .line 1784
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1789
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1794
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_17

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->expandScreenDecor()V

    .line 1799
    :cond_17
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 7
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1763
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    .line 1768
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_16

    .line 1769
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton;->navigationBarPosition(III)V

    .line 1774
    :cond_16
    return-void
.end method

.method public clearQuickPaySwitch(Z)V
    .registers 4
    .param p1, "clearWhich"    # Z

    .line 3055
    if-eqz p1, :cond_5

    .line 3056
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 3058
    :cond_5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 3059
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 3060
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 3062
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 3064
    return-void
.end method

.method expandScreenDecor()V
    .registers 8

    .line 3239
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_a3

    .line 3242
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3243
    .local v0, "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3244
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3246
    :cond_15
    if-eqz v0, :cond_a3

    .line 3248
    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v1, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    move v1, v2

    .line 3250
    .local v1, "isGestureNeedRecoverAnim":Z
    :goto_2a
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    if-nez v4, :cond_3e

    if-nez v1, :cond_3d

    .line 3251
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 3252
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    goto :goto_3f

    :cond_3e
    :goto_3e
    move v2, v3

    .line 3253
    .local v2, "isExpand":Z
    :goto_3f
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-boolean v4, v4, Lcom/android/server/policy/ScreenDecor;->mUpExpand:Z

    if-eq v4, v2, :cond_a3

    .line 3254
    sget-boolean v4, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_9e

    .line 3255
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expandScreenDecor to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ignore="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " topDocked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " topFull="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isGestureNeedRecoverAnim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLimited="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3260
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLetterboxed="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isLetterboxedAppWindow()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3255
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_9e
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/ScreenDecor;->expandScreenDecor(Z)V

    .line 3267
    .end local v0    # "topWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .end local v1    # "isGestureNeedRecoverAnim":Z
    .end local v2    # "isExpand":Z
    :cond_a3
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 10
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1885
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OemQuickReply;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1892
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_11a

    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11a

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_11a

    .line 1893
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_2a
    const-string v0, ""

    .line 1894
    .local v0, "winTitle":Ljava/lang/String;
    :goto_2c
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1895
    .local v1, "isPayApp":Z
    const/4 v2, 0x0

    if-eqz p2, :cond_57

    if-nez v1, :cond_57

    .line 1896
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_57

    .line 1897
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d8

    if-eq v3, v4, :cond_57

    const/4 v3, 0x1

    goto :goto_58

    :cond_57
    move v3, v2

    .line 1898
    .local v3, "isFocusChanged":Z
    :goto_58
    const-string v4, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: focusChangedLw mQuickPayFocusWin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " lastFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isFocusChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayFocusWinPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    if-eqz v1, :cond_10f

    .line 1903
    iget v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-nez v4, :cond_a9

    .line 1904
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    goto :goto_df

    .line 1906
    :cond_a9
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result v4

    .line 1907
    .local v4, "pid":I
    iget v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    if-eq v5, v4, :cond_df

    .line 1908
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1910
    iput v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWinPid:I

    .line 1912
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 1913
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 1912
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1914
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_df

    .line 1915
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1916
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v6, Lcom/android/server/policy/OemPhoneWindowManager$4;

    invoke-direct {v6, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$4;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 1928
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pid":I
    :cond_df
    :goto_df
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1929
    .local v2, "newFocusWin":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_f1

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    if-eq v4, v2, :cond_10e

    .line 1930
    :cond_f1
    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    .line 1931
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1933
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->removeMessages(I)V

    .line 1935
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 1937
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    .line 1935
    invoke-virtual {v4, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1937
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1939
    .end local v2    # "newFocusWin":Ljava/lang/String;
    :cond_10e
    goto :goto_11a

    :cond_10f
    if-eqz v3, :cond_11a

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayFocusWin:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_11a

    .line 1940
    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1949
    .end local v0    # "winTitle":Ljava/lang/String;
    .end local v1    # "isPayApp":Z
    .end local v3    # "isFocusChanged":Z
    :cond_11a
    :goto_11a
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_127

    .line 1950
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1954
    :cond_127
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    return v0
.end method

.method protected getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2012
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2013
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1d

    .line 2014
    const-string v2, "OemPhoneWindowManager"

    const-string v3, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-string v2, ""

    return-object v2

    .line 2017
    :cond_1d
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2018
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2f

    .line 2019
    const-string v3, "OemPhoneWindowManager"

    const-string v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const-string v3, ""

    return-object v3

    .line 2022
    :cond_2f
    const-string v3, "OemPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_50

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_52

    :cond_50
    const-string v3, ""

    :goto_52
    return-object v3
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 368
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    .line 369
    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    .line 370
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 373
    invoke-static {p1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAssistantEventCollector:Lnet/oneplus/odm/insight/AssistantEventCollector;

    .line 377
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 378
    new-instance v2, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Lcom/android/server/policy/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 379
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    .end local v1    # "keyModeFilter":Landroid/content/IntentFilter;
    :cond_43
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v1, "engineermodeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "oem.intent.action.DISABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v2, "oem.intent.action.ENABLE_LIDCONTROLSSLEEP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mEngineerModeHandleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v2, :cond_68

    .line 398
    new-instance v2, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    .line 405
    :cond_68
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    .line 411
    new-array v2, v0, [I

    const/16 v4, 0xd

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 412
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "ThreePointersThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, "mRecognizeThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 414
    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    .line 415
    new-instance v4, Lcom/android/server/policy/OemThreePointersGesturesListener;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/OemThreePointersGesturesListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 417
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 418
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    .line 426
    .end local v2    # "mRecognizeThread":Landroid/os/HandlerThread;
    :cond_a5
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_165

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5020021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 430
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    .line 431
    move v4, v3

    .line 431
    .local v4, "i":I
    :goto_c7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_147

    .line 432
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 433
    .local v5, "config":Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_144

    .line 435
    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 436
    .local v7, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    iput v4, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->index:I

    .line 437
    aget-object v8, v6, v3

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 438
    aget-object v8, v6, v0

    const-string/jumbo v9, "sdk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 439
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_123

    .line 440
    :cond_f6
    aget-object v8, v6, v0

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_105

    .line 441
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_123

    .line 443
    :cond_105
    aget-object v8, v6, v0

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 446
    :goto_123
    const-string v8, "default"

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_130

    .line 447
    iput-boolean v0, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 449
    :cond_130
    const-string v8, "class"

    const/4 v9, 0x3

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13f

    .line 450
    aget-object v8, v6, v9

    iput-object v8, v7, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 452
    :cond_13f
    iget-object v8, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_144
    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    .line 456
    .end local v4    # "i":I
    :cond_147
    new-instance v4, Lcom/oneplus/config/ConfigObserver;

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v7, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;

    invoke-direct {v7, p0}, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 458
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v4}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 459
    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureHandler:Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->sendEmptyMessage(I)Z

    .line 467
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_165
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_17b

    .line 468
    new-instance v2, Lcom/android/server/policy/OemGestureButton;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 469
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 470
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureRegistered:Z

    .line 478
    :cond_17b
    new-array v0, v0, [I

    const/16 v2, 0x49

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_196
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 41
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 1100
    .local v2, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1101
    .local v3, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 1102
    .local v4, "repeatCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v5

    .line 1103
    .local v5, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1d

    move v6, v7

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    .line 1104
    .local v6, "down":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_26

    move v9, v7

    goto :goto_27

    :cond_26
    const/4 v9, 0x0

    .line 1105
    .local v9, "up":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v10

    .line 1106
    .local v10, "canceled":Z
    and-int/lit16 v11, v2, 0x80

    if-eqz v11, :cond_31

    move v11, v7

    goto :goto_32

    :cond_31
    const/4 v11, 0x0

    .line 1107
    .local v11, "longPress":Z
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_3c

    move v12, v7

    goto :goto_3d

    :cond_3c
    const/4 v12, 0x0

    .line 1108
    .local v12, "isFromNavbar":Z
    :goto_3d
    const/high16 v13, 0x20000000

    and-int v13, p3, v13

    if-eqz v13, :cond_45

    move v13, v7

    goto :goto_46

    :cond_45
    const/4 v13, 0x0

    .line 1109
    .local v13, "interactive":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    const/4 v8, -0x1

    if-ne v15, v8, :cond_4f

    move v8, v7

    goto :goto_50

    :cond_4f
    const/4 v8, 0x0

    .line 1110
    .local v8, "virtualKey":Z
    :goto_50
    const/4 v15, 0x4

    if-ne v3, v15, :cond_56

    move/from16 v16, v7

    goto :goto_58

    :cond_56
    const/16 v16, 0x0

    .line 1111
    .local v16, "backKeyCode":Z
    :goto_58
    const/4 v15, 0x3

    if-ne v3, v15, :cond_5e

    move/from16 v17, v7

    goto :goto_60

    :cond_5e
    const/16 v17, 0x0

    .line 1112
    .local v17, "homeKeyCode":Z
    :goto_60
    const/16 v15, 0xbb

    if-ne v3, v15, :cond_66

    move v15, v7

    goto :goto_67

    :cond_66
    const/4 v15, 0x0

    .line 1113
    .local v15, "switchKeyCode":Z
    :goto_67
    const/16 v7, 0x1a

    if-ne v3, v7, :cond_6d

    const/4 v7, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v7, 0x0

    .line 1114
    .local v7, "powerKeyCode":Z
    :goto_6e
    move/from16 v20, v2

    .line 1114
    .end local v2    # "flags":I
    .local v20, "flags":I
    if-eqz p1, :cond_77

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    goto :goto_79

    :cond_77
    const/16 v21, 0x0

    :goto_79
    move-object/from16 v22, v21

    .line 1115
    .local v22, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v2, v22

    if-eqz v2, :cond_82

    .line 1115
    .end local v22    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_83

    :cond_82
    const/4 v14, 0x0

    .line 1116
    .local v14, "type":I
    :goto_83
    move/from16 v23, v12

    const/16 v12, 0x18

    .line 1116
    .end local v12    # "isFromNavbar":Z
    .local v23, "isFromNavbar":Z
    if-ne v3, v12, :cond_8b

    const/4 v12, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v12, 0x0

    .line 1118
    .local v12, "volumeUpKey":Z
    :goto_8c
    sget-boolean v21, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v21, :cond_b9

    .line 1119
    move/from16 v24, v3

    const-string v3, "OemPhoneWindowManager"

    .line 1119
    .end local v3    # "keyCode":I
    .local v24, "keyCode":I
    move/from16 v25, v12

    new-instance v12, Ljava/lang/StringBuilder;

    .line 1119
    .end local v12    # "volumeUpKey":Z
    .local v25, "volumeUpKey":Z
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v8

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching "

    .line 1119
    .end local v8    # "virtualKey":Z
    .local v26, "virtualKey":Z
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", interactive = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 1124
    .end local v24    # "keyCode":I
    .end local v25    # "volumeUpKey":Z
    .end local v26    # "virtualKey":Z
    .restart local v3    # "keyCode":I
    .restart local v8    # "virtualKey":Z
    .restart local v12    # "volumeUpKey":Z
    :cond_b9
    move/from16 v24, v3

    move/from16 v26, v8

    move/from16 v25, v12

    .line 1124
    .end local v3    # "keyCode":I
    .end local v8    # "virtualKey":Z
    .end local v12    # "volumeUpKey":Z
    .restart local v24    # "keyCode":I
    .restart local v25    # "volumeUpKey":Z
    .restart local v26    # "virtualKey":Z
    :goto_bf
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/16 v3, 0xb

    const/4 v12, 0x0

    aput v3, v8, v12

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const-wide/16 v21, 0x0

    if-eqz v3, :cond_104

    .line 1125
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v8}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/4 v8, 0x3

    if-eq v3, v8, :cond_dd

    goto :goto_104

    .line 1132
    :cond_dd
    if-nez v17, :cond_e5

    if-nez v16, :cond_e5

    if-nez v15, :cond_e5

    if-eqz v7, :cond_104

    .line 1133
    :cond_e5
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_103

    .line 1134
    const-string v3, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_103
    return-wide v21

    .line 1145
    :cond_104
    :goto_104
    const-wide/16 v27, -0x1

    if-eqz v15, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_10f

    .line 1146
    return-wide v27

    .line 1150
    :cond_10f
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    move/from16 v29, v7

    .line 1150
    .end local v7    # "powerKeyCode":Z
    .local v29, "powerKeyCode":Z
    if-eqz v3, :cond_198

    .line 1151
    if-eqz v6, :cond_17c

    .line 1153
    if-lez v4, :cond_11a

    .line 1154
    return-wide v27

    .line 1157
    :cond_11a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v30

    .line 1159
    .local v30, "time":J
    if-eqz v16, :cond_127

    if-nez v4, :cond_127

    .line 1160
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    .line 1161
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1164
    :cond_127
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 1165
    if-eqz v15, :cond_140

    if-nez v4, :cond_140

    .line 1166
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1167
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_140

    .line 1170
    :cond_137
    const/4 v3, 0x1

    if-eqz v17, :cond_140

    if-nez v4, :cond_140

    .line 1171
    sput-wide v30, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    .line 1172
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1176
    :cond_140
    :goto_140
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-eqz v3, :cond_178

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v3

    if-eqz v3, :cond_152

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-eqz v3, :cond_14f

    goto :goto_156

    .line 1182
    .end local v30    # "time":J
    :cond_14f
    move/from16 v36, v13

    goto :goto_17a

    .line 1177
    .restart local v30    # "time":J
    :cond_152
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    if-eqz v3, :cond_178

    :goto_156
    sget-wide v32, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressedTime:J

    sget-wide v34, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    sub-long v7, v32, v34

    .line 1178
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v32, 0xc8

    cmp-long v3, v7, v32

    if-gez v3, :cond_178

    .line 1179
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    move/from16 v36, v13

    int-to-long v12, v8

    .line 1179
    .end local v13    # "interactive":Z
    .local v36, "interactive":Z
    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1180
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1180
    .end local v30    # "time":J
    goto :goto_17a

    .line 1182
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_178
    move/from16 v36, v13

    .line 1196
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    :goto_17a
    const/4 v3, 0x0

    goto :goto_19b

    .line 1183
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_17c
    move/from16 v36, v13

    .line 1183
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    if-eqz v16, :cond_184

    .line 1184
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_18e

    .line 1185
    :cond_184
    const/4 v3, 0x0

    if-eqz v15, :cond_18a

    .line 1186
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_18e

    .line 1187
    :cond_18a
    if-eqz v17, :cond_18e

    .line 1188
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1191
    :cond_18e
    :goto_18e
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1192
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    goto :goto_19b

    .line 1196
    .end local v36    # "interactive":Z
    .restart local v13    # "interactive":Z
    :cond_198
    move/from16 v36, v13

    const/4 v3, 0x0

    .line 1196
    .end local v13    # "interactive":Z
    .restart local v36    # "interactive":Z
    :goto_19b
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    if-eqz v7, :cond_1c1

    .line 1197
    if-eqz v9, :cond_1b4

    .line 1198
    if-eqz v16, :cond_1a6

    .line 1199
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_1aa

    .line 1200
    :cond_1a6
    if-eqz v15, :cond_1aa

    .line 1201
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1204
    :cond_1aa
    :goto_1aa
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    if-nez v7, :cond_1b4

    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-nez v7, :cond_1b4

    .line 1205
    sput-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyBlocked:Z

    .line 1208
    :cond_1b4
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_1c0

    .line 1209
    const-string v3, "OemPhoneWindowManager"

    const-string/jumbo v7, "key event is canceled because it is blocked because of screen pin. "

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_1c0
    return-wide v27

    .line 1214
    :cond_1c1
    const/16 v3, 0x7d9

    if-eqz v17, :cond_2ca

    .line 1215
    if-eqz v6, :cond_26f

    .line 1216
    if-eqz v2, :cond_21f

    .line 1217
    if-eq v14, v3, :cond_200

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1d2

    goto :goto_200

    .line 1225
    :cond_1d2
    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v3, v3

    .line 1226
    .local v3, "typeCount":I
    const/4 v7, 0x0

    .line 1226
    .local v7, "i":I
    :goto_1d6
    if-ge v7, v3, :cond_21f

    .line 1227
    sget-object v8, Lcom/android/server/policy/OemPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v8, v8, v7

    if-ne v14, v8, :cond_1fd

    .line 1229
    sget-boolean v8, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_1fc

    .line 1230
    const-string v8, "OemPhoneWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_1fc
    return-wide v27

    .line 1226
    :cond_1fd
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d6

    .line 1220
    .end local v3    # "typeCount":I
    .end local v7    # "i":I
    :cond_200
    :goto_200
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_21e

    .line 1221
    const-string v3, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_21e
    return-wide v21

    .line 1237
    :cond_21f
    if-nez v4, :cond_243

    .line 1238
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1239
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1240
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    if-eqz v7, :cond_26e

    .line 1241
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1242
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1243
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1244
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1247
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_26e

    .line 1250
    :cond_243
    if-eqz v11, :cond_26e

    .line 1251
    if-nez v5, :cond_26e

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-nez v3, :cond_26e

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v3, :cond_26e

    .line 1253
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-eqz v3, :cond_259

    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v3, :cond_26e

    .line 1254
    :cond_259
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1255
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1256
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1257
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1260
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v7, 0x3

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1304
    :cond_26e
    :goto_26e
    return-wide v27

    .line 1265
    :cond_26f
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyPressed:Z

    .line 1266
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    if-eqz v7, :cond_279

    .line 1267
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyConsumed:Z

    .line 1268
    return-wide v27

    .line 1271
    :cond_279
    if-eqz v10, :cond_287

    .line 1272
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_286

    .line 1273
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring HOME; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_286
    return-wide v27

    .line 1282
    :cond_287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 1283
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_2a1

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v7

    if-eqz v7, :cond_2a1

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->hasInComingCall()Z

    move-result v7

    if-eqz v7, :cond_2a1

    .line 1285
    const-string v7, "OemPhoneWindowManager"

    const-string v8, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-wide v27

    .line 1292
    :cond_2a1
    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v7, :cond_2c3

    .line 1293
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v7

    if-eqz v7, :cond_2af

    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v7, :cond_2c3

    .line 1294
    :cond_2af
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1295
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    .line 1296
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1298
    return-wide v27

    .line 1301
    :cond_2c3
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1302
    return-wide v27

    .line 1305
    .end local v3    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2ca
    if-eqz v16, :cond_36c

    .line 1306
    if-eqz v26, :cond_2d6

    if-nez v23, :cond_2d6

    .line 1307
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v3, :cond_2d5

    .line 1308
    return-wide v27

    .line 1311
    :cond_2d5
    return-wide v21

    .line 1316
    :cond_2d6
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-nez v3, :cond_2df

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-nez v3, :cond_2df

    .line 1318
    return-wide v21

    .line 1321
    :cond_2df
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v3

    if-eqz v3, :cond_2e6

    .line 1322
    return-wide v21

    .line 1325
    :cond_2e6
    if-eqz v6, :cond_32f

    .line 1326
    if-nez v4, :cond_309

    .line 1327
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1328
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    if-eqz v7, :cond_32e

    .line 1329
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1330
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1331
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1332
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1335
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    const/4 v7, 0x5

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_32e

    .line 1338
    :cond_309
    if-eqz v11, :cond_32e

    .line 1339
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-nez v3, :cond_32e

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v3, :cond_32e

    .line 1340
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_32e

    .line 1341
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1342
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1343
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1344
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1347
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnBackBehavior:I

    const/4 v7, 0x6

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1377
    :cond_32e
    :goto_32e
    return-wide v27

    .line 1352
    :cond_32f
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyPressed:Z

    .line 1353
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v7, :cond_339

    .line 1354
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1355
    return-wide v27

    .line 1358
    :cond_339
    if-eqz v10, :cond_347

    .line 1359
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_346

    .line 1360
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring BACK; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_346
    return-wide v27

    .line 1366
    :cond_347
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-eqz v3, :cond_365

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_365

    .line 1367
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1368
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    .line 1369
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1371
    return-wide v27

    .line 1374
    :cond_365
    const/16 v3, 0xd

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1375
    return-wide v27

    .line 1378
    :cond_36c
    if-eqz v15, :cond_441

    .line 1379
    if-eqz v2, :cond_397

    .line 1380
    if-eq v14, v3, :cond_378

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_397

    .line 1383
    :cond_378
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_396

    .line 1384
    const-string v3, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_396
    return-wide v27

    .line 1391
    :cond_397
    if-eqz v6, :cond_3e4

    .line 1392
    if-nez v4, :cond_3bd

    .line 1393
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1394
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1395
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    if-eqz v7, :cond_3e3

    .line 1396
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1397
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1398
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1399
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1402
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    const/4 v7, 0x7

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_3e3

    .line 1405
    :cond_3bd
    if-eqz v11, :cond_3e3

    .line 1406
    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v3, :cond_3e3

    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-eqz v3, :cond_3e3

    .line 1407
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_3e3

    .line 1408
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1409
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1410
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1411
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    invoke-direct {v0, v3, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1414
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    const/16 v7, 0x8

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->collectAssistantEvent(II)V

    .line 1453
    :cond_3e3
    :goto_3e3
    return-wide v27

    .line 1419
    :cond_3e4
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyPressed:Z

    .line 1420
    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v7, :cond_3ee

    .line 1421
    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 1422
    return-wide v27

    .line 1425
    :cond_3ee
    if-eqz v10, :cond_3fc

    .line 1426
    sget-boolean v3, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_3fb

    .line 1427
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Ignoring APP_SWITCH; event canceled."

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_3fb
    return-wide v27

    .line 1433
    :cond_3fc
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-eqz v3, :cond_41a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v3

    if-nez v3, :cond_41a

    .line 1434
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1435
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    .line 1436
    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0xc8

    invoke-virtual {v3, v7, v12, v13}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1438
    return-wide v27

    .line 1443
    :cond_41a
    iget v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v0, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v3

    if-eqz v3, :cond_43b

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1444
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_43b

    iget-object v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1445
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v3

    if-eqz v3, :cond_43b

    .line 1446
    const-string v3, "OemPhoneWindowManager"

    const-string v7, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_440

    .line 1448
    :cond_43b
    const/4 v3, 0x2

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1451
    :goto_440
    return-wide v27

    .line 1454
    :cond_441
    if-eqz v25, :cond_476

    .line 1457
    if-eqz v9, :cond_476

    .line 1458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1459
    .local v7, "now":J
    iget-wide v12, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    const-wide/16 v18, 0x12c

    add-long v12, v12, v18

    cmp-long v3, v7, v12

    if-gez v3, :cond_474

    .line 1460
    const-string v3, "OemPhoneWindowManager"

    const-string/jumbo v12, "volume key trigger trace"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1462
    .local v3, "intent":Landroid/content/Intent;
    const-string v12, "com.android.traceur.HOTKEY"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const/high16 v12, 0x10000000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1464
    const-string v12, "com.android.traceur"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    iget-object v12, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1467
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_474
    iput-wide v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mTraceVolumeUpKeyTime:J

    .line 1474
    .end local v7    # "now":J
    :cond_476
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v7

    return-wide v7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 23
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    .line 818
    .local v3, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 819
    .local v4, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v5

    .line 820
    .local v5, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_19

    move v6, v7

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    .line 821
    .local v6, "down":Z
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v7, :cond_22

    move v9, v7

    goto :goto_23

    :cond_22
    const/4 v9, 0x0

    .line 822
    .local v9, "up":Z
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2d

    move v10, v7

    goto :goto_2e

    :cond_2d
    const/4 v10, 0x0

    .line 823
    .local v10, "isFromNavbar":Z
    :goto_2e
    const/high16 v11, 0x20000000

    and-int v11, p2, v11

    if-eqz v11, :cond_36

    move v11, v7

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    .line 824
    .local v11, "interactive":Z
    :goto_37
    const/4 v12, 0x4

    if-ne v4, v12, :cond_3c

    move v12, v7

    goto :goto_3d

    :cond_3c
    const/4 v12, 0x0

    .line 825
    .local v12, "backKeyCode":Z
    :goto_3d
    const/4 v13, 0x3

    if-ne v4, v13, :cond_42

    move v13, v7

    goto :goto_43

    :cond_42
    const/4 v13, 0x0

    .line 826
    .local v13, "homeKeyCode":Z
    :goto_43
    const/16 v14, 0xbb

    if-ne v4, v14, :cond_49

    move v14, v7

    goto :goto_4a

    :cond_49
    const/4 v14, 0x0

    .line 827
    .local v14, "switchKeyCode":Z
    :goto_4a
    const/high16 v15, 0x10000000

    and-int/2addr v15, v5

    if-eqz v15, :cond_51

    move v15, v7

    goto :goto_52

    :cond_51
    const/4 v15, 0x0

    .line 829
    .local v15, "oemSource":Z
    :goto_52
    sget-boolean v16, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v16, :cond_7b

    .line 830
    const-string v7, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    .end local v5    # "source":I
    .local v17, "source":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 833
    .end local v17    # "source":I
    .restart local v5    # "source":I
    :cond_7b
    move/from16 v17, v5

    .end local v5    # "source":I
    .restart local v17    # "source":I
    :goto_7d
    iget-boolean v5, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemBooted:Z

    if-nez v5, :cond_83

    .line 835
    const/4 v5, 0x0

    return v5

    .line 840
    :cond_83
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_89

    const/4 v5, 0x1

    goto :goto_8a

    :cond_89
    const/4 v5, 0x0

    .line 841
    .local v5, "powerKeyCode":Z
    :goto_8a
    if-eqz v5, :cond_c3

    .line 842
    const/4 v7, 0x2

    if-eqz v6, :cond_a6

    .line 843
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    .line 844
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 845
    .local v7, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 846
    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v8, v7, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 847
    .end local v7    # "msg":Landroid/os/Message;
    nop

    .line 862
    .end local v3    # "flags":I
    .local v18, "flags":I
    :goto_a3
    move/from16 v18, v3

    goto :goto_c5

    .line 848
    .end local v18    # "flags":I
    .restart local v3    # "flags":I
    :cond_a6
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    if-nez v1, :cond_b0

    .line 849
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a3

    .line 851
    :cond_b0
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 852
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 853
    iget-object v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    .end local v3    # "flags":I
    .restart local v18    # "flags":I
    invoke-virtual {v7, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_c5

    .line 862
    .end local v18    # "flags":I
    .restart local v3    # "flags":I
    :cond_c3
    move/from16 v18, v3

    .end local v3    # "flags":I
    .restart local v18    # "flags":I
    :goto_c5
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v1, 0xb

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 863
    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager;->mBlockingKeySet:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 864
    .local v2, "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_14f

    .line 865
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 866
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_f4

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking ALL, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_f4
    const/4 v1, 0x0

    return v1

    .line 870
    :cond_f6
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->NOT_FROM_NAVBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 871
    if-nez v10, :cond_111

    .line 872
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_10f

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking NOT_FROM_NAVBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_10f
    const/4 v1, 0x0

    return v1

    .line 877
    :cond_111
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 878
    if-eqz v10, :cond_130

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v3, :cond_130

    .line 879
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_12e

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_12e
    const/4 v1, 0x0

    return v1

    .line 884
    :cond_130
    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 885
    if-eqz v10, :cond_14f

    iget-boolean v3, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_14f

    .line 886
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_14d

    const-string v1, "OemPhoneWindowManager"

    const-string v3, "blocking FROM_NAVBAR_AND_HAS_NAVIGATIONBAR, return"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_14d
    const/4 v3, 0x0

    return v3

    .line 896
    .end local v2    # "param":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14f
    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [I

    aput v1, v7, v3

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 897
    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager$13;->$SwitchMap$com$android$server$policy$OemPhoneWindowManager$KeyLockMode:[I

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3b6

    goto/16 :goto_1de

    .line 927
    :pswitch_16a
    and-int/lit8 v2, v18, 0x8

    if-nez v2, :cond_170

    .line 928
    goto/16 :goto_1de

    .line 930
    :cond_170
    if-nez v10, :cond_187

    if-nez v12, :cond_176

    if-eqz v14, :cond_187

    :cond_176
    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v2, :cond_187

    .line 931
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_185

    .line 932
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_185
    const/4 v1, 0x0

    return v1

    .line 936
    :cond_187
    if-nez v10, :cond_1de

    if-eqz v13, :cond_1de

    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_1de

    .line 937
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v2, :cond_1de

    .line 938
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_19e

    .line 939
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_19e
    const/4 v1, 0x0

    return v1

    .line 919
    :pswitch_1a0
    if-nez v10, :cond_1de

    if-nez v12, :cond_1a8

    if-nez v13, :cond_1a8

    if-eqz v14, :cond_1de

    .line 920
    :cond_1a8
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1b3

    .line 921
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1b3
    const/4 v1, 0x0

    return v1

    .line 911
    :pswitch_1b5
    if-nez v10, :cond_1de

    if-eqz v13, :cond_1de

    .line 912
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1c4

    .line 913
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_1c4
    const/4 v1, 0x0

    return v1

    .line 906
    :pswitch_1c6
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1d1

    .line 907
    const-string v1, "OemPhoneWindowManager"

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1d1
    const/4 v1, 0x1

    return v1

    .line 899
    :pswitch_1d3
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_1de

    .line 900
    const-string v2, "OemPhoneWindowManager"

    const-string v3, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1de
    :goto_1de
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v2, :cond_1ec

    .line 950
    if-nez v10, :cond_1ec

    if-nez v13, :cond_1ea

    if-nez v12, :cond_1ea

    if-eqz v14, :cond_1ec

    .line 951
    :cond_1ea
    const/4 v1, 0x0

    return v1

    .line 956
    :cond_1ec
    if-nez v6, :cond_247

    .line 957
    if-eqz v12, :cond_21c

    iget-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v2, :cond_21c

    .line 958
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mBackKeyConsumed:Z

    .line 959
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_218

    .line 960
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21a

    .line 963
    :cond_218
    move-object/from16 v3, p1

    :goto_21a
    const/4 v2, 0x0

    return v2

    .line 965
    :cond_21c
    const/4 v2, 0x0

    move-object/from16 v3, p1

    if-eqz v14, :cond_249

    iget-boolean v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v7, :cond_249

    .line 966
    iput-boolean v2, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    .line 967
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_245

    .line 968
    const-string v1, "OemPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_245
    const/4 v1, 0x0

    return v1

    .line 975
    :cond_247
    move-object/from16 v3, p1

    :cond_249
    if-nez v10, :cond_24e

    .line 976
    and-int/lit8 v2, p2, -0x3

    .end local p2    # "policyFlags":I
    .local v2, "policyFlags":I
    goto :goto_250

    .line 990
    .end local v2    # "policyFlags":I
    .restart local p2    # "policyFlags":I
    :cond_24e
    move/from16 v2, p2

    .end local p2    # "policyFlags":I
    .restart local v2    # "policyFlags":I
    :goto_250
    const/4 v7, 0x0

    if-nez v11, :cond_27d

    .line 991
    if-nez v10, :cond_27b

    if-nez v13, :cond_25b

    if-nez v12, :cond_25b

    if-eqz v14, :cond_27b

    .line 992
    :cond_25b
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_279

    .line 993
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_279
    const/4 v1, 0x0

    return v1

    .line 1009
    :cond_27b
    const/4 v1, 0x1

    goto :goto_294

    .line 998
    :cond_27d
    if-nez v10, :cond_27b

    if-nez v13, :cond_285

    if-nez v12, :cond_285

    if-eqz v14, :cond_27b

    :cond_285
    if-nez v9, :cond_27b

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_27b

    if-nez v15, :cond_27b

    .line 1000
    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v1, v8}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1009
    :goto_294
    const/16 v8, 0x86

    if-eq v4, v8, :cond_299

    goto :goto_2c9

    .line 1012
    :cond_299
    new-array v8, v1, [I

    const/16 v1, 0x11

    const/16 v16, 0x0

    aput v1, v8, v16

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2c9

    .line 1013
    if-nez v11, :cond_2c9

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v1, :cond_2c9

    .line 1014
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v8}, Lcom/android/server/policy/DeviceKeyHandler;->setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 1015
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2c9

    .line 1016
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_2c7

    .line 1017
    const-string v1, "OemPhoneWindowManager"

    const-string v7, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2c7
    const/4 v1, 0x0

    return v1

    .line 1033
    :cond_2c9
    :goto_2c9
    const/4 v1, -0x1

    sparse-switch v4, :sswitch_data_3c6

    goto/16 :goto_3b1

    .line 1035
    :sswitch_2cf
    if-eqz v6, :cond_323

    .line 1036
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintForShotEnabled:Z

    if-eqz v1, :cond_2ee

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2ee

    const-string v1, "com.oneplus.camera"

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1037
    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ee

    .line 1039
    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    .line 1040
    const/4 v1, 0x0

    return v1

    .line 1043
    :cond_2ee
    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    const/16 v8, 0xb

    if-ne v1, v8, :cond_2fc

    .line 1046
    if-eqz v11, :cond_2fa

    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mCurrentUserId:I

    if-eqz v1, :cond_2fc

    .line 1047
    :cond_2fa
    const/4 v1, 0x0

    return v1

    .line 1051
    :cond_2fc
    const-string v1, "OemPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QuickPay: long press on FP: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    if-eqz v1, :cond_323

    .line 1053
    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1054
    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLongPressOnFingerprintBehavior:I

    invoke-direct {v0, v7, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_324

    .line 1057
    :cond_323
    const/4 v1, 0x0

    :goto_324
    return v1

    .line 1061
    :sswitch_325
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_3b1

    .line 1063
    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayEnabled:Z

    if-eqz v1, :cond_336

    if-eqz v6, :cond_336

    if-eqz v11, :cond_336

    .line 1064
    const/16 v1, 0xb

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    .line 1066
    :cond_336
    const/4 v1, 0x0

    return v1

    .line 1079
    :sswitch_338
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v7, :cond_3b1

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v7, v1, :cond_3b1

    if-eqz v6, :cond_3b1

    .line 1080
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: Cancelled by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " focus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_3b1

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d8

    if-eq v1, v7, :cond_3b1

    .line 1083
    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v1, :cond_388

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_388

    iget-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnLaunched:Z

    if-eqz v1, :cond_388

    .line 1084
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_389

    .line 1086
    :cond_388
    const/4 v1, 0x0

    :goto_389
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto :goto_3b1

    .line 1072
    :sswitch_38d
    sget-boolean v7, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v7, :cond_3b1

    iget v7, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    if-eq v7, v1, :cond_3b1

    if-eqz v6, :cond_3b1

    .line 1073
    const-string v1, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: Cancelled by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 1094
    :cond_3b1
    :goto_3b1
    invoke-super {v0, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v1

    return v1

    :pswitch_data_3b6
    .packed-switch 0x1
        :pswitch_1d3
        :pswitch_1c6
        :pswitch_1c6
        :pswitch_1b5
        :pswitch_1a0
        :pswitch_16a
    .end packed-switch

    :sswitch_data_3c6
    .sparse-switch
        0x3 -> :sswitch_38d
        0x4 -> :sswitch_338
        0x84 -> :sswitch_325
        0x85 -> :sswitch_2cf
        0xbb -> :sswitch_38d
    .end sparse-switch
.end method

.method isFingerprintGestureLimit()Z
    .registers 2

    .line 3226
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mFingerprintGestureLimit:Lcom/oneplus/server/FingerprintGestureLimit;

    invoke-virtual {v0}, Lcom/oneplus/server/FingerprintGestureLimit;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3227
    const/4 v0, 0x1

    return v0

    .line 3228
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonEnabled()Z
    .registers 2

    .line 3198
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_f

    .line 3199
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    return v0

    .line 3201
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonForLauncher()Z
    .registers 3

    .line 3207
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_1a

    .line 3208
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    nop

    :cond_19
    return v1

    .line 3210
    :cond_1a
    return v1
.end method

.method public isGestureButtonRegion(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3190
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_f

    .line 3191
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OemGestureButton;->isGestureButtonRegion(II)Z

    move-result v0

    return v0

    .line 3193
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1978
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1979
    :cond_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1980
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_b

    return v0

    .line 1981
    :cond_b
    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo v2, "net.oneplus.h2launcher"

    .line 1982
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDefaultHomeApp:Ljava/lang/String;

    .line 1985
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_27

    :cond_26
    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 1981
    :goto_28
    return v0
.end method

.method protected isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 7
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1991
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    return v0

    .line 1993
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 1994
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 1993
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1995
    .local v0, "mode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 1997
    .local v3, "isScreenCompat":Z
    :goto_1c
    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v4, :cond_34

    .line 1998
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_34

    if-nez v3, :cond_34

    iget-boolean v4, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v4, :cond_34

    .line 1997
    move v1, v2

    goto :goto_35

    .line 1999
    :cond_34
    nop

    .line 1997
    :goto_35
    return v1
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configVersionName"    # Ljava/lang/String;

    .line 3154
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    const-string v0, ""

    if-ne p2, v0, :cond_c

    goto :goto_55

    .line 3158
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3159
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3160
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, ""

    .line 3161
    .local v2, "nowVersionName":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 3162
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v2, v3

    .line 3163
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3164
    .local v3, "nowVersion":[Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3165
    .local v4, "configVersion":[Ljava/lang/String;
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3166
    .local v5, "length":I
    move v6, v1

    .local v6, "i":I
    :goto_30
    if-ge v6, v5, :cond_52

    .line 3167
    array-length v7, v3

    if-ge v6, v7, :cond_3c

    .line 3168
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3d

    :cond_3c
    move v7, v1

    .line 3169
    .local v7, "nowV":I
    :goto_3d
    array-length v8, v4

    if-ge v6, v8, :cond_47

    .line 3170
    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_53

    goto :goto_48

    :cond_47
    move v8, v1

    .line 3171
    .local v8, "newV":I
    :goto_48
    if-ge v7, v8, :cond_4c

    .line 3172
    const/4 v1, 0x1

    return v1

    .line 3173
    :cond_4c
    if-le v7, v8, :cond_4f

    .line 3174
    return v1

    .line 3166
    .end local v7    # "nowV":I
    .end local v8    # "newV":I
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 3179
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "nowVersionName":Ljava/lang/String;
    .end local v3    # "nowVersion":[Ljava/lang/String;
    .end local v4    # "configVersion":[Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_52
    goto :goto_54

    .line 3178
    :catch_53
    move-exception v0

    .line 3180
    :goto_54
    return v1

    .line 3155
    :cond_55
    :goto_55
    return v1
.end method

.method protected isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 6
    .param p1, "winCandidate"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1970
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1971
    :cond_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 1972
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_b

    return v0

    .line 1973
    :cond_b
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/policy/OemPhoneWindowManager;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_1f

    const/4 v0, 0x1

    nop

    :cond_1f
    return v0
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .registers 7
    .param p1, "appName"    # Ljava/lang/String;

    .line 3067
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayWhich:I

    .line 3068
    .local v0, "which":I
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v1, :cond_65

    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_65

    .line 3069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayMaxWaitTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_65

    .line 3070
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 3071
    .local v1, "pkg":Ljava/lang/String;
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: App Launch Failed, restart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    if-eqz p1, :cond_45

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    return-void

    .line 3073
    :cond_45
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 3074
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3075
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_65

    .line 3076
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3077
    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager$11;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager$11;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 3089
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_65
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 2114
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_3b

    .line 2115
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLidSwitchChanged :mLidState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mLidState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2e

    .line 2120
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->notifyLidSwitchChanged(Z)V

    .line 2125
    :cond_2e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$5;

    invoke-direct {v1, p0, p3}, Lcom/android/server/policy/OemPhoneWindowManager$5;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2137
    :cond_3b
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 2138
    return-void
.end method

.method public notifyLockTaskMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 2230
    if-eqz p1, :cond_e

    .line 2231
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    goto :goto_19

    .line 2234
    :cond_e
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "screen-pin is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->mLockTaskModeEnabled:Z

    .line 2237
    :goto_19
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 3275
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    .line 3277
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_c

    .line 3278
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->onConfigurationChanged()V

    .line 3280
    :cond_c
    return-void
.end method

.method public onKeyguardDone()V
    .registers 3

    .line 2724
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_9

    .line 2725
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardDone()V

    .line 2728
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    if-eqz v0, :cond_16

    .line 2729
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mTmpDeviceId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    .line 2732
    :cond_16
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3
    .param p1, "occluded"    # Z

    .line 2739
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)V

    .line 2740
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_c

    .line 2741
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->onKeyguardOccludedChangedLw(Z)V

    .line 2743
    :cond_c
    return-void
.end method

.method public preloadWallapepr(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "wallpaper"    # Landroid/graphics/Bitmap;

    .line 3215
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mLauncherGesture:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    .line 3217
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3218
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OemGestureButton;->preloadWallapepr(Landroid/graphics/Bitmap;)V

    .line 3220
    :cond_1b
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 5
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I
    .param p3, "defaultDisplay"    # Z

    .line 3300
    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mShuttingDown:Z

    if-eqz v0, :cond_6

    .line 3301
    const/4 v0, 0x0

    return v0

    .line 3303
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->rotationForOrientationLw(IIZ)I

    move-result v0

    return v0
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 2687
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 2688
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_c

    .line 2689
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOff()V

    .line 2692
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mStartWhenUnlock:Z

    .line 2696
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .line 2703
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 2704
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_c

    .line 2705
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurnedOn()V

    .line 2707
    :cond_c
    return-void
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .line 1823
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_24

    .line 1824
    if-eqz p1, :cond_24

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    if-eqz v0, :cond_24

    .line 1825
    const-string v0, "OemPhoneWindowManager"

    const-string/jumbo v1, "return -1 for moving home gesture."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/4 v0, -0x1

    return v0

    .line 1832
    :cond_24
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0
.end method

.method public selectRotationAnimationLw([I)V
    .registers 4
    .param p1, "anim"    # [I

    .line 1806
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_17

    .line 1807
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton;->isScreenShotShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1808
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    .line 1809
    return-void

    .line 1815
    :cond_17
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 1816
    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 7
    .param p1, "newUserId"    # I

    .line 1837
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1843
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    .line 1844
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "op_navigation_bar_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1846
    .local v0, "type":I
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_navigation_bar_type"

    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1848
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GestureButton: setCurrentUserLw update navbar type to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    .end local v0    # "type":I
    :cond_41
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_6e

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x47

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1856
    const-string v0, "OemPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOemSettings to user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    .line 1860
    :cond_6e
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .line 1864
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1869
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v0, :cond_21

    .line 1871
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_21

    .line 1872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHasNavigationBar:Z

    .line 1873
    const-string v0, "OemPhoneWindowManager"

    const-string v1, "GestureButton: setInitialDisplaySize force set mHasNavigationBar to false."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_21
    return-void
.end method

.method public setRotationLw(I)V
    .registers 6
    .param p1, "rotation"    # I

    .line 2667
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2668
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2669
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2671
    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2672
    iget-boolean v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_1a

    .line 2673
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1f

    .line 2675
    :cond_1a
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2677
    :goto_1f
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setRotationLw(I)V

    .line 2678
    return-void
.end method

.method public startedWakingUp()V
    .registers 2

    .line 2715
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 2716
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_c

    .line 2717
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->onStartedWakingUp()V

    .line 2719
    :cond_c
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 509
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 515
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v3, 0xb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 524
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-nez v1, :cond_34

    .line 525
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    sget-object v2, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 526
    invoke-virtual {v2}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v2

    .line 525
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5f

    .line 528
    :cond_34
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_44

    :cond_43
    move v0, v2

    .line 530
    .local v0, "showNavBar":Z
    :goto_44
    if-eqz v0, :cond_5f

    .line 531
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    sget-object v3, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    .line 534
    invoke-virtual {v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->ordinal()I

    move-result v3

    .line 533
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    .end local v0    # "showNavBar":Z
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_68

    .line 545
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->systemReady()V

    .line 552
    :cond_68
    invoke-static {}, Lcom/android/server/policy/ScreenDecor;->isSupportRoundScreen()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-nez v0, :cond_7b

    .line 553
    new-instance v0, Lcom/android/server/policy/ScreenDecor;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/ScreenDecor;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    .line 557
    :cond_7b
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    new-instance v1, Lcom/android/server/policy/OemPhoneWindowManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemPhoneWindowManager$2;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 563
    return-void
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .registers 12
    .param p1, "which"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3124
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3125
    .local v0, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    move v2, v1

    .line 3125
    .local v2, "i":I
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_c0

    .line 3126
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3127
    .local v3, "config":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3128
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_bc

    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_bc

    .line 3129
    iget-object v5, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/policy/OemPhoneWindowManager;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 3130
    new-instance v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;

    invoke-direct {v5, p0}, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;-><init>(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 3131
    .local v5, "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    aget-object v6, v4, v1

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 3132
    const/4 v6, 0x1

    aget-object v7, v4, v6

    const-string/jumbo v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 3133
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_7d

    .line 3134
    :cond_50
    aget-object v7, v4, v6

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 3135
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_7d

    .line 3137
    :cond_5f
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 3138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 3140
    :goto_7d
    const-string v7, "default"

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 3141
    iput-boolean v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 3143
    :cond_8a
    const-string v6, "class"

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    .line 3144
    aget-object v6, v4, v7

    iput-object v6, v5, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 3146
    :cond_99
    iget-object v6, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3147
    const-string v6, "OemPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "tmp":Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 3151
    .end local v2    # "i":I
    :cond_c0
    return-void
.end method

.method updateSwapKey()V
    .registers 5

    .line 2165
    iget v0, p0, Lcom/android/server/policy/OemPhoneWindowManager;->mKeysBehavior:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 2166
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "1"

    goto :goto_15

    :cond_13
    const-string v0, "0"

    .local v0, "setVal":Ljava/lang/String;
    :goto_15
    goto :goto_25

    .line 2168
    .end local v0    # "setVal":Ljava/lang/String;
    :cond_16
    new-array v0, v2, [I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "0"

    goto :goto_25

    :cond_23
    const-string v0, "1"

    .line 2172
    .restart local v0    # "setVal":Ljava/lang/String;
    :goto_25
    :try_start_25
    const-string v1, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2173
    const-string v1, "/proc/s1302/key_rep"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 2176
    :cond_37
    sget-boolean v1, Lcom/android/server/policy/OemPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz v1, :cond_40

    .line 2177
    const-string v1, "/proc/touchpanel/key_switch"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_40} :catch_41

    .line 2182
    :cond_40
    :goto_40
    goto :goto_4b

    .line 2180
    :catch_41
    move-exception v1

    .line 2181
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "OemPhoneWindowManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4b
    return-void
.end method
