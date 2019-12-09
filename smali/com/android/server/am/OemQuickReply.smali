.class public Lcom/android/server/am/OemQuickReply;
.super Ljava/lang/Object;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemQuickReply$SettingsObserver;,
        Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    }
.end annotation


# static fields
.field public static IME_BUTTON_SIZE:I = 0x0

.field public static IME_BUTTON_SIZE_BASE:I = 0x0

.field public static IME_FLOATING_WIN_TOLERANCE:I = 0x0

.field public static IME_FLOATING_WIN_TOLERANCE_BASE:I = 0x0

.field public static IME_LIMIT_WIDTH:I = 0x0

.field public static IME_MARGIN_BOTTOM:I = 0x0

.field public static IME_MARGIN_BOTTOM_BASE:I = 0x0

.field public static IME_MARGIN_LEFT:I = 0x0

.field public static IME_MARGIN_LEFT_BASE:I = 0x0

.field public static IME_MARGIN_RIGHT:I = 0x0

.field public static IME_MARGIN_RIGHT_BASE:I = 0x0

.field public static final IME_POSITION_CENTER:I = 0x1

.field public static final IME_POSITION_LEFT:I = 0x2

.field public static final IME_POSITION_RIGHT:I = 0x0

.field public static IME_SUB_WIN_TOLERANCE:I = 0x0

.field public static IME_SUB_WIN_TOLERANCE_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_MID:I = 0x0

.field public static IM_BUTTON_MARGIN_MID_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_RIGHT:I = 0x0

.field public static IM_BUTTON_MARGIN_RIGHT_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_TOP:I = 0x0

.field public static IM_BUTTON_MARGIN_TOP_BASE:I = 0x0

.field public static IM_BUTTON_SIZE:I = 0x0

.field public static IM_BUTTON_SIZE_BASE:I = 0x0

.field public static final IM_DIM_AMOUNT:F = 0.4f

.field public static IM_LIMIT_WIDTH:I = 0x0

.field public static IM_LIMIT_WIDTH_BASE:I = 0x0

.field public static final IS_SUPPORT_QUICK_REPLY:Z

.field public static OEM_IME_PACKAGE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_IM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OemQuickReply"

.field public static mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public static sIMEposition:I

.field private static sImEnabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sImeAdjustEnabled:Z

.field public static sImeKilledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/OemQuickReply;

.field public static sIsQuickReplyExiting:Z

.field public static sIsQuickReplyRunning:Z

.field public static sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mImeControlsBtnX:I

.field private mImeControlsBtnXMax:I

.field private mImeControlsBtnXMin:I

.field public mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

.field mQuickReplyFullBtnView:Landroid/view/View;

.field mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

.field mQuickReplyImeBtnView:Landroid/view/View;

.field mQuickReplyImeLayout:Landroid/widget/FrameLayout;

.field private mQuickReplyRunningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mQuickReplySettingsBtnView:Landroid/view/View;

.field mQuickReplySwitchBtnView:Landroid/view/View;

.field private mResumedApp:Lcom/android/server/am/ActivityRecord;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/android/server/am/OemQuickReply$SettingsObserver;

.field private final mUnsupportedImeList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWMS:Lcom/android/server/wm/WindowManagerService;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 51
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x6f

    aput v3, v1, v2

    .line 52
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    .line 54
    sput-boolean v2, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    .line 55
    sput-boolean v2, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyExiting:Z

    .line 68
    sput-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    .line 73
    const-string/jumbo v0, "persist.quickreply.imeside"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    .line 78
    const/16 v0, 0x30a

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH_BASE:I

    .line 79
    const/16 v0, 0x60

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE_BASE:I

    .line 80
    const/16 v0, 0x54

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE_BASE:I

    .line 81
    const/16 v0, 0x2a

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP_BASE:I

    .line 82
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT_BASE:I

    .line 83
    const/16 v0, 0x30

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID_BASE:I

    .line 87
    const/16 v0, 0x438

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    .line 88
    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT_BASE:I

    .line 89
    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT_BASE:I

    .line 90
    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM_BASE:I

    .line 92
    const/16 v0, 0x12c

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE_BASE:I

    .line 93
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE_BASE:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sImeKilledList:Ljava/util/ArrayList;

    .line 99
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    .line 100
    const-string v0, "com.google.android.packageinstaller"

    const-string v1, "com.android.packageinstaller"

    const-string v2, "com.oneplus.applocker"

    const-string v3, "com.android.systemui"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;

    .line 106
    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.oneplus.applocker"

    const-string v4, "com.android.systemui"

    const-string v5, "com.whatsapp"

    const-string v6, "com.instagram.android"

    const-string v7, "com.tencent.mm"

    const-string v8, "com.tencent.mobileqq"

    const-string v9, "com.facebook.mlite"

    const-string v10, "com.tencent.mobileqqi"

    const-string v11, "com.tencent.qqlite"

    const-string v12, "com.tencent.tim"

    const-string/jumbo v13, "org.telegram.messenger"

    const-string/jumbo v14, "org.thunderdog.challegram"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    .line 128
    const-string v1, "com.baidu.input_yijia"

    const-string v2, "com.android.inputmethod.latin"

    const-string v3, "com.google.android.inputmethod.pinyin"

    const-string v4, "com.google.android.apps.handwriting.ime"

    const-string v5, "com.google.android.inputmethod.latin"

    const-string v6, "com.touchtype.swiftkey"

    const-string v7, "com.jb.emoji.gokeyboard"

    const-string v8, "com.jb.gokeyboard"

    const-string v9, "com.cootek.smartinputv5"

    const-string v10, "abc.apple.emoji.theme.gif.keyboard"

    const-string v11, "com.emoji.keyboard.touchpal"

    const-string v12, "com.grammarly.android.keyboard"

    const-string v13, "com.syntellia.fleksy.keyboard"

    const-string v14, "com.gamelounge.chroomakeyboard"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    .line 161
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->addIMButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeAllButton()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OemQuickReply;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->addIMEcontrolsButton(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->setIMEButtonAlpha()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMstack()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OemQuickReply;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->updateImeVis(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateAllParam()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->dismissInputMethod()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OemQuickReply;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/OemQuickReply;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OemQuickReply;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OemQuickReply;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OemQuickReply;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemQuickReply;

    .line 49
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    return-void
.end method

.method public static acquireBoost()V
    .registers 3

    .line 947
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 948
    :cond_5
    sget-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    if-nez v0, :cond_10

    .line 949
    new-instance v0, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 951
    :cond_10
    sget-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/4 v1, 0x0

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 952
    return-void
.end method

.method private addIMButton()V
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_40

    .line 452
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 453
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    .line 454
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 455
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x5090014

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    .line 457
    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    new-instance v4, Lcom/android/server/am/OemQuickReply$3;

    invoke-direct {v4, p0}, Lcom/android/server/am/OemQuickReply$3;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 471
    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OemQuickReply$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/OemQuickReply$4;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 484
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_40
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-nez v0, :cond_6f

    .line 487
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 488
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    .line 489
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 490
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    const v1, 0x5090015

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    .line 492
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    new-instance v3, Lcom/android/server/am/OemQuickReply$5;

    invoke-direct {v3, p0}, Lcom/android/server/am/OemQuickReply$5;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_6f
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-nez v0, :cond_9a

    .line 513
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    .line 514
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 515
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    const v1, 0x5090016

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    .line 517
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    new-instance v2, Lcom/android/server/am/OemQuickReply$6;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$6;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_9a
    return-void
.end method

.method private addIMEcontrolsButton(I)V
    .registers 7
    .param p1, "imeHeight"    # I

    .line 724
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 725
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-nez v0, :cond_7a

    .line 726
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    .line 727
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 728
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 729
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 730
    const v1, 0x5090017

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    goto :goto_2f

    .line 733
    :cond_26
    const v1, 0x5090018

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    .line 736
    :goto_2f
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    const v2, 0x507005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeLayout:Landroid/widget/FrameLayout;

    .line 738
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    const v2, 0x507005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

    .line 740
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/server/am/OemQuickReply$7;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$7;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/OemQuickReply$8;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$8;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 788
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 791
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 793
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_7d

    .line 795
    :cond_7a
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    .line 797
    :goto_7d
    return-void
.end method

.method private dismissInputMethod()V
    .registers 3

    .line 1028
    const-string v0, "OemQuickReply"

    const-string v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_15

    .line 1030
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1031
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1033
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1e

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 1036
    :cond_1e
    return-void
.end method

.method private getAppBounds()Landroid/graphics/Rect;
    .registers 3

    .line 574
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 575
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    .line 576
    :cond_a
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 577
    .local v1, "appBounds":Landroid/graphics/Rect;
    :goto_10
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 152
    const-class v0, Lcom/android/server/am/OemQuickReply;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    if-nez v1, :cond_e

    .line 154
    new-instance v1, Lcom/android/server/am/OemQuickReply;

    invoke-direct {v1, p0}, Lcom/android/server/am/OemQuickReply;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    .line 156
    :cond_e
    sget-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    monitor-exit v0

    return-object v1

    .line 157
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getQuickReplyList(I)Ljava/util/List;
    .registers 3
    .param p0, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 912
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 913
    :cond_6
    packed-switch p0, :pswitch_data_16

    .line 919
    return-object v1

    .line 917
    :pswitch_a
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_11

    sget-object v1, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    nop

    :cond_11
    return-object v1

    .line 915
    :pswitch_12
    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    .line 986
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_11

    .line 987
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    .line 988
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    .line 990
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private init()V
    .registers 4

    .line 281
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemQuickReplyThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 283
    .local v0, "oemQuickReplyThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 284
    new-instance v1, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;-><init>(Lcom/android/server/am/OemQuickReply;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    .line 285
    new-instance v1, Lcom/android/server/am/OemQuickReply$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemQuickReply$SettingsObserver;-><init>(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;)V

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mSettingsObserver:Lcom/android/server/am/OemQuickReply$SettingsObserver;

    .line 286
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateAllParam()V

    .line 287
    return-void
.end method

.method public static isForceShowStatusBar(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 171
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 173
    :cond_6
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.tencent.tim"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    .line 177
    :cond_17
    return v1

    .line 175
    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public static isQuickReplyIM(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 923
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 924
    :cond_6
    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    .line 925
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    .line 926
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    .line 924
    :goto_21
    return v1
.end method

.method public static isQuickReplyIME(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 930
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 931
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1
.end method

.method public static isQuickReplyWin(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 4
    .param p0, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 935
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 936
    :cond_6
    if-eqz p0, :cond_3a

    .line 937
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dc

    if-eq v0, v2, :cond_1c

    .line 938
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d3

    if-ne v0, v2, :cond_3a

    .line 939
    :cond_1c
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_3a

    .line 940
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickReply"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 941
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_3a
    return v1
.end method

.method private loadImeRecord()V
    .registers 12

    .line 968
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_ime_unsupported"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "imeRecord":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 971
    return-void

    .line 973
    :cond_10
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "splitIme":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_63

    aget-object v5, v1, v4

    .line 975
    .local v5, "imes":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, "splitCount":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_60

    .line 977
    iget-object v7, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    aget-object v8, v6, v3

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_60

    .line 979
    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadImeRecord pkg="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " count="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    .end local v5    # "imes":Ljava/lang/String;
    .end local v6    # "splitCount":[Ljava/lang/String;
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 983
    :cond_63
    return-void
.end method

.method private removeAllButton()V
    .registers 4

    .line 552
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V

    .line 553
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 554
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 555
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 557
    :cond_19
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    .line 559
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 560
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 561
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 563
    :cond_30
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    .line 565
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-eqz v0, :cond_49

    .line 566
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 567
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 569
    :cond_47
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    .line 571
    :cond_49
    return-void
.end method

.method private removeIMEcontrolsButton()V
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 802
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 803
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 804
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 806
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    .line 808
    :cond_1e
    return-void
.end method

.method private setIMEButtonAlpha()V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 660
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 661
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    :cond_1e
    return-void
.end method

.method private tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 221
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_89

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-nez v0, :cond_89

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 223
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyExiting:Z

    .line 224
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 227
    .local v1, "appRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2e

    :try_start_27
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    goto :goto_2f

    .line 233
    :catch_2c
    move-exception v2

    goto :goto_65

    .line 227
    :cond_2e
    const/4 v2, 0x0

    .line 228
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    :goto_2f
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_3f

    :cond_37
    if-eqz v2, :cond_7f

    .line 229
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 230
    :cond_3f
    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 231
    const-string v3, "OemQuickReply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitFreeformMode for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_64} :catch_2c

    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_7f

    .line 233
    :goto_65
    nop

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OemQuickReply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitFreeformMode fail to exit freeform for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "appRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_80

    .line 235
    .restart local v1    # "appRecord":Lcom/android/server/am/ActivityRecord;
    :cond_7f
    :goto_7f
    nop

    .line 236
    .end local v1    # "appRecord":Lcom/android/server/am/ActivityRecord;
    :goto_80
    goto :goto_19

    .line 237
    :cond_81
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyExiting:Z

    .line 241
    :cond_89
    return-void
.end method

.method private updateAllParam()V
    .registers 18

    .line 290
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 291
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    .local v2, "screenHeight":I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 294
    .local v3, "screenWidth":I
    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    if-ne v2, v4, :cond_2b

    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    if-ne v3, v4, :cond_2b

    .line 296
    return-void

    .line 299
    :cond_2b
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    .line 300
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    .line 302
    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    sput v4, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    .line 303
    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    .line 304
    .local v4, "scale":F
    sget v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    .line 305
    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    .line 306
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    .line 308
    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    .line 309
    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    .line 310
    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    .line 311
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    .line 312
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    .line 313
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    .line 314
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    .line 315
    sget v5, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE:I

    .line 318
    iget v5, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    const/16 v6, 0x870

    const/4 v7, 0x0

    if-gt v5, v6, :cond_cc

    .line 319
    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    .line 320
    const/16 v5, 0x30

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    .line 322
    :cond_cc
    const-string/jumbo v5, "persist.override.quickreply.imwidth"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 323
    .local v5, "overrideImWidth":I
    const-string/jumbo v6, "persist.override.quickreply.imewidth"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 324
    .local v6, "overrideImeWidth":I
    if-lez v6, :cond_f6

    .line 325
    sput v6, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    .line 326
    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Override IME width to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_f6
    if-lez v5, :cond_112

    .line 329
    sput v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    .line 330
    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Override IM width to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_112
    const-string/jumbo v7, "persist.sys.quickreply.imewidth"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_151

    .line 334
    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update IM_LIMIT_WIDTH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " IME_LIMIT_WIDTH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_151
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7d3

    const v15, 0x1000508

    const/16 v16, -0x2

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 346
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x33

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 347
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v8, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 349
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x50d0013

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 350
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyGoFull"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x12

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 355
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 356
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 357
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyGoSettings"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 359
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 360
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 361
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplySwitch"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 366
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 369
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x7dc

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 371
    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyIMEcontrols"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    .line 373
    return-void
.end method

.method private updateIMButtonParam()V
    .registers 6

    .line 666
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 667
    .local v0, "appBounds":Landroid/graphics/Rect;
    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 669
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 670
    if-eqz v0, :cond_1a

    .line 671
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 673
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 674
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_76

    .line 677
    :cond_37
    if-eqz v0, :cond_4a

    .line 678
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    mul-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    add-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_5a

    .line 681
    :cond_4a
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    mul-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    add-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 684
    :goto_5a
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 685
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 687
    :goto_76
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 688
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    :cond_8d
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a4

    .line 691
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    :cond_a4
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 694
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    :cond_bb
    return-void
.end method

.method private updateIMEcontrolParam()V
    .registers 6

    .line 602
    sget-object v0, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    if-nez v0, :cond_5

    return-void

    .line 603
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 604
    .local v0, "imeHeight":I
    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x0

    if-nez v1, :cond_82

    .line 605
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 607
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v3, :cond_2a

    .line 608
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 611
    :cond_2a
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v3, :cond_40

    .line 612
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 615
    :cond_40
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 619
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    .line 620
    iput v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    .line 621
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    if-le v1, v2, :cond_6e

    .line 622
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    .line 624
    :cond_6e
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    if-le v1, v2, :cond_105

    .line 625
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    goto/16 :goto_105

    .line 627
    :cond_82
    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_105

    .line 628
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 630
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v2, :cond_a1

    .line 631
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 634
    :cond_a1
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v2, :cond_b7

    .line 635
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 638
    :cond_b7
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 640
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    .line 641
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    .line 642
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_ed

    .line 643
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    .line 645
    :cond_ed
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_105

    .line 646
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    .line 649
    :cond_105
    :goto_105
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    if-eqz v1, :cond_10f

    .line 650
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 652
    :cond_10f
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 653
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v1, :cond_130

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_130

    .line 654
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    :cond_130
    return-void
.end method

.method private updateIMstack()V
    .registers 6

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 711
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 712
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/am/OemQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 714
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_20
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    .line 715
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 718
    goto :goto_46

    .line 716
    :catch_27
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIMstack: sIMEposition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private updateImeVis(I)V
    .registers 5
    .param p1, "vis"    # I

    .line 811
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 812
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_30

    .line 813
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeBtnVis to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_30
    return-void
.end method

.method private updateSettings()V
    .registers 7

    .line 1008
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1009
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "op_quickreply_ime_adjust"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    move v1, v2

    .line 1011
    .local v1, "imeAdjustEnabled":Z
    sget-boolean v2, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eq v2, v1, :cond_37

    .line 1012
    sput-boolean v1, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    .line 1013
    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->killIMEs()V

    .line 1014
    const-string v2, "OemQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettings(), sImeAdjustEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_37
    const-string/jumbo v2, "op_quickreply_im_list"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "imList":Ljava/lang/String;
    if-eqz v2, :cond_67

    .line 1019
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5b

    .line 1020
    const-string v3, "OemQuickReply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSettings(), imList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_5b
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    .line 1024
    :cond_67
    return-void
.end method


# virtual methods
.method public exitQuickReply()V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    .line 549
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 7
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 244
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 245
    :cond_5
    if-eqz p2, :cond_38

    .line 246
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getImePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/OemQuickReply;->shouldLimitIMELw(Ljava/lang/String;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 247
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_22
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_38

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 251
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    :cond_38
    return-void
.end method

.method public getImBound()Landroid/graphics/Rect;
    .registers 6

    .line 581
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 583
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 584
    .local v1, "appBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_3a

    .line 585
    sget v2, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    .line 587
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 588
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 589
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 590
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3a

    .line 592
    :cond_29
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 593
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 594
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 595
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 598
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public notifyImeShow(Ljava/lang/String;)V
    .registers 5
    .param p1, "imePkgName"    # Ljava/lang/String;

    .line 390
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 391
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_2a

    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 392
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 393
    .local v0, "notifyCount":Ljava/lang/Integer;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2a

    .line 394
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    new-instance v2, Lcom/android/server/am/OemQuickReply$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/OemQuickReply$1;-><init>(Lcom/android/server/am/OemQuickReply;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->post(Ljava/lang/Runnable;)Z

    .line 418
    .end local v0    # "notifyCount":Ljava/lang/Integer;
    :cond_2a
    return-void
.end method

.method public notifyImeVisibilityChanged(ZI)V
    .registers 6
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 376
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 377
    :cond_5
    if-eqz p1, :cond_30

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getImePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 378
    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1d

    .line 379
    iget p2, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    .line 381
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x3

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sub-int v2, p2, v2

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_36

    .line 384
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    .line 386
    :goto_36
    return-void
.end method

.method public onConfigChanged()V
    .registers 5

    .line 699
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 700
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    if-eqz v0, :cond_18

    .line 701
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    .line 706
    :cond_18
    return-void
.end method

.method public setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 165
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 166
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 167
    iput-object p2, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 168
    return-void
.end method

.method public setKeyguardDone(Z)V
    .registers 5
    .param p1, "done"    # Z

    .line 181
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 183
    :cond_5
    if-nez p1, :cond_24

    :try_start_7
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_24

    .line 184
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_24

    .line 186
    :catch_1a
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string/jumbo v2, "setKeyguardDone fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_25

    .line 188
    :cond_24
    :goto_24
    nop

    .line 189
    :goto_25
    return-void
.end method

.method public setQuickReplyRunning(Z)V
    .registers 6
    .param p1, "isRunning"    # Z

    .line 421
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 422
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eq v0, p1, :cond_4f

    .line 423
    sput-boolean p1, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    .line 424
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    new-instance v1, Lcom/android/server/am/OemQuickReply$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OemQuickReply$2;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->post(Ljava/lang/Runnable;)Z

    .line 433
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 434
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    goto :goto_2b

    .line 436
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    .line 439
    :goto_2b
    const-string/jumbo v0, "sys.quickreplay.running"

    if-eqz p1, :cond_33

    const-string v1, "1"

    goto :goto_35

    :cond_33
    const-string v1, "0"

    :goto_35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuickReplyRunning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4f
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_5b

    .line 443
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    :cond_5b
    return-void
.end method

.method public setResumedApp(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 192
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 194
    :cond_5
    :try_start_5
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_20

    .line 195
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResumedApp app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setQuickReplyResumed(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 199
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_3b

    .line 200
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 208
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 211
    :cond_3b
    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V

    .line 213
    :cond_3e
    :goto_3e
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    .line 216
    goto :goto_4a

    .line 214
    :catch_41
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string/jumbo v2, "setResumedApp fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method public shouldLimitIMELw(Ljava/lang/String;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 10
    .param p1, "imeName"    # Ljava/lang/String;
    .param p2, "focus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 259
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 260
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_69

    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 262
    const/4 v0, 0x1

    if-eqz p2, :cond_34

    .line 263
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 264
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_34

    .line 266
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    if-le v2, v3, :cond_34

    move v2, v0

    goto :goto_35

    :cond_34
    move v2, v1

    .line 267
    .local v2, "isImeChildfocused":Z
    :goto_35
    if-eqz p2, :cond_3f

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isFloatingIMEwinLw()Z

    move-result v3

    if-eqz v3, :cond_3f

    move v3, v0

    goto :goto_40

    :cond_3f
    move v3, v1

    .line 268
    .local v3, "isIMEfloating":Z
    :goto_40
    const/4 v4, 0x7

    if-nez v2, :cond_56

    if-eqz v3, :cond_46

    goto :goto_56

    .line 271
    :cond_46
    if-nez v3, :cond_64

    .line 272
    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 272
    invoke-virtual {v5, v4, v6}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 273
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_64

    .line 269
    :cond_56
    :goto_56
    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v6, 0x4

    .line 270
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 269
    invoke-virtual {v5, v4, v6}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 275
    :cond_64
    :goto_64
    if-nez v2, :cond_67

    goto :goto_68

    :cond_67
    move v0, v1

    :goto_68
    return v0

    .line 277
    .end local v2    # "isImeChildfocused":Z
    .end local v3    # "isIMEfloating":Z
    :cond_69
    return v1
.end method

.method public systemReady()V
    .registers 4

    .line 955
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_5

    return-void

    .line 956
    :cond_5
    const-string/jumbo v0, "sys.quickreplay.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->init()V

    .line 958
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateSettings()V

    .line 959
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_imbutton_x"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    .line 961
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_ime_position"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    .line 963
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->loadImeRecord()V

    .line 964
    return-void
.end method
