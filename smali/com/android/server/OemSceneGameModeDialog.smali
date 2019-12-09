.class public Lcom/android/server/OemSceneGameModeDialog;
.super Lcom/android/server/OemSceneGameModeView;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BACKGROUND_EFFECT_DURATION:I = 0x12c

.field private static DBG:Z = false

.field private static final HAPTIC_FEEDBACK_PROMPT_DELAY:I = 0x3e8

.field private static final LINE_EFFECT_INTERVAL:I = 0x10

.field private static final MSG_GAME_MODE_ON_TACKER_APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field public static final NOTIFY_STYLE_BLOCK:I = 0x1

.field public static final NOTIFY_STYLE_HEADSUP:I = 0x0

.field public static final NOTIFY_STYLE_WORDS:I = 0x2

.field private static final NUMBER_OF_LINES_PIC:I = 0x1d

.field private static final POP_WIN_Y_OFFSET:I = -0xf0

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeDialog"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field public static mInitialDontShowAgainChecked:Z

.field private static sGameModeOptionKey1:Ljava/lang/String;

.field private static sGameModeOptionKey2:Ljava/lang/String;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sHapticFeedbackEverPrompted:Z


# instance fields
.field private mCurrentOrientation:I

.field private mDetailView:Landroid/widget/RelativeLayout;

.field private mDismiss:Landroid/widget/TextView;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field private mDontShowAgainText:Landroid/widget/TextView;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mEffect1:Lcom/android/server/GameModeEffectImage;

.field private mEffect2:Lcom/android/server/GameModeEffectImage;

.field private mEffect3:Lcom/android/server/GameModeEffectImage;

.field private mEffect4:Lcom/android/server/GameModeEffectImage;

.field private mEffect5:Lcom/android/server/GameModeEffectImage;

.field private mEffect6:Lcom/android/server/GameModeEffectImage;

.field private mEffect7:Lcom/android/server/GameModeEffectImage;

.field private mEffect8:Lcom/android/server/GameModeEffectImage;

.field private mEffect9:Lcom/android/server/GameModeEffectImage;

.field private mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

.field private mEffectImageListGameMode:Lcom/android/server/EffectImageList;

.field private mEffectList:Landroid/widget/RelativeLayout;

.field private mEsportEffectList:Landroid/view/View;

.field private mEsportToggleOff:Landroid/widget/ImageView;

.field private mFnaticAnimationTask:Ljava/lang/Runnable;

.field private mFnaticIcon:Landroid/widget/ImageView;

.field private mFnaticModeOn:Z

.field private mFnaticModeTitle:Landroid/widget/TextView;

.field private mFnaticSwitch:Landroid/widget/Switch;

.field private mGameModeEffectList:Landroid/view/View;

.field private mGameModeOptionSwitch1:Landroid/widget/Switch;

.field private mGameModeOptionSwitch2:Landroid/widget/Switch;

.field private mGameModeOptionSwitchAd:Landroid/widget/Switch;

.field private mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

.field private mGameModeOptionTitle1:Landroid/widget/TextView;

.field private mGameModeOptionTitle2:Landroid/widget/TextView;

.field private mGameModeOptionTitleAd:Landroid/widget/TextView;

.field private mGameModeOptionTitleHaptic:Landroid/widget/TextView;

.field private mGameModeOptionTitleText1:Ljava/lang/String;

.field private mGameModeOptionTitleText2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnClickHappen:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mModeToggle:Landroid/widget/RelativeLayout;

.field private mMoreSettingsToggle:Landroid/view/View;

.field private mNotifyStyleDetail:Landroid/widget/TextView;

.field private mNotifyStyleToggle:Landroid/view/View;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field private mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotationState:I

.field private mSettings:Landroid/view/View;

.field private mSettingsFake:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageView;

.field private mSettingsIconFake:Landroid/widget/ImageView;

.field private mSettingsScrollView:Lcom/android/server/StaticScrollView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->mInitialDontShowAgainChecked:Z

    .line 74
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    .line 76
    sput-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sGameModeOptionKey1:Ljava/lang/String;

    .line 138
    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sGameModeOptionKey2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "panel"    # Lcom/android/server/OemSceneGameModePanel;
    .param p4, "animate"    # Z

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    .line 99
    new-instance v1, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v1}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 127
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 137
    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitleText1:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitleText2:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initView()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 59
    sput-boolean p0, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnIconAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OemSceneGameModeDialog;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/OemSceneGameModeDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModeDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/OemSceneGameModeDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemSceneGameModeDialog;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/OemSceneGameModeDialog;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;
    .param p1, "x1"    # Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 59
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    return v0
.end method

.method private disableClick()V
    .registers 3

    .line 942
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 944
    return-void
.end method

.method private enableClick()V
    .registers 3

    .line 937
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 939
    return-void
.end method

.method private initEffectEntryView()V
    .registers 15

    .line 271
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    .line 272
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v5, 0x5070002

    const v6, 0x5060012

    const v7, 0x50c0022

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    .line 273
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v9, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v11, 0x5070003

    const v12, 0x5060013

    const v13, 0x50c0024

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    .line 274
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070004

    const v5, 0x5060014

    const v6, 0x50c0025

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    .line 275
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070005

    const v11, 0x506000d

    const v12, 0x50c0046

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    .line 276
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070006

    const v5, 0x506000c

    const v6, 0x50c0047

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    .line 277
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070007

    const v11, 0x506000b

    const v12, 0x50c0048

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    goto/16 :goto_131

    .line 278
    :cond_7d
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_131

    .line 279
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v5, 0x5070002

    const v6, 0x5060012

    const v7, 0x50c0022

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    .line 280
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v9, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v11, 0x5070003

    const v12, 0x5060013

    const v13, 0x50c0024

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    .line 281
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070004

    const v5, 0x5060014

    const v6, 0x50c0025

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    .line 282
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070005

    const v11, 0x5060012

    const v12, 0x50c0022

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    .line 283
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070006

    const v5, 0x5060013

    const v6, 0x50c0024

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    .line 284
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070007

    const v11, 0x5060014

    const v12, 0x50c0025

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    .line 285
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070008

    const v5, 0x506000d

    const v6, 0x50c0046

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    .line 286
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070009

    const v11, 0x506000c

    const v12, 0x50c0047

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    .line 287
    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x507000a

    const v5, 0x506000b

    const v6, 0x50c0048

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    .line 291
    :cond_131
    :goto_131
    return-void
.end method

.method private initEffectImageList()V
    .registers 14

    .line 586
    new-instance v6, Lcom/android/server/EffectImageList;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeEffectList:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/EffectImageList;-><init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    .line 588
    new-instance v0, Lcom/android/server/EffectImageList;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/OemSceneGameModeDialog;->mEsportEffectList:Landroid/view/View;

    const/4 v9, 0x2

    const/4 v11, 0x0

    move-object v7, v0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/EffectImageList;-><init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    .line 590
    return-void
.end method

.method private initHandler()V
    .registers 3

    .line 593
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    .line 594
    sget-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_19

    .line 595
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemSceneGameModeDialog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    .line 596
    sget-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 598
    :cond_19
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mHandler:Landroid/os/Handler;

    .line 599
    new-instance v0, Lcom/android/server/OemSceneGameModeDialog$11;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneGameModeDialog$11;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    .line 632
    return-void
.end method

.method private initView()V
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$18;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$18;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 954
    return-void
.end method

.method private promptHapticFeedbackOption()V
    .registers 5

    .line 493
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_ui_haptic_feedback_prompted"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    .line 497
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$9;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$9;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    return-void
.end method

.method private refreshFnaticModeStatus()V
    .registers 5

    .line 354
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 356
    .local v0, "fnatic_mode_status":Z
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    .line 357
    return-void
.end method

.method private setGameModeDlgSwitchTrackColor(Landroid/content/Context;Landroid/widget/Switch;)V
    .registers 12
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/widget/Switch;

    .line 636
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 637
    .local v0, "trackDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 638
    .local v2, "trackDrawable_state_0":Landroid/graphics/drawable/LayerDrawable;
    const v3, 0x5070034

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 641
    .local v3, "bgShape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 644
    const v1, 0x5040001

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    .line 645
    .local v1, "accent":Landroid/graphics/Color;
    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Color;->blue()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Color;->alpha()F

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v4

    .line 646
    .local v4, "accent_fixed":Landroid/graphics/Color;
    const/4 v5, 0x5

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    .line 650
    .end local v0    # "trackDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "accent":Landroid/graphics/Color;
    .end local v2    # "trackDrawable_state_0":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "bgShape":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "accent_fixed":Landroid/graphics/Color;
    goto :goto_50

    .line 647
    :catch_45
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while setGameModeDlgSwitchTrackColor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    return-void
.end method

.method private setToFnaticOffLayout()V
    .registers 4

    .line 701
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "setToFnaticOffLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 704
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->resetHeight()V

    .line 705
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    .line 706
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 707
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    .line 709
    :cond_3b
    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4a

    .line 710
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    .line 711
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    .line 713
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffIconAnimation()V

    .line 714
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffBackgroundAnimation()V

    .line 715
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffColorAnimation()V

    .line 716
    return-void
.end method

.method private startCloseEffectListHeightAniamtion()V
    .registers 8

    .line 744
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startCloseEffectListHeightAniamtion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 746
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 747
    .local v1, "effectListCurrentHeight":I
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v2}, Lcom/android/server/StaticScrollView;->getCurrentHeight()I

    move-result v2

    .line 748
    .local v2, "scrollViewCurrentHeight":I
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 749
    .local v3, "effectListHeight":I
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, v3

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 750
    .local v4, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_40

    const-wide/16 v5, 0x0

    goto :goto_42

    :cond_40
    const-wide/16 v5, 0x12c

    :goto_42
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 751
    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$13;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/OemSceneGameModeDialog$13;-><init>(Lcom/android/server/OemSceneGameModeDialog;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 761
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 762
    return-void
.end method

.method private startExpandEffectListHeightAniamtion()V
    .registers 7

    .line 719
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startExpandEffectListHeightAniamtion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 722
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 722
    .local v0, "effectListCurrentHeight":I
    goto :goto_27

    .line 724
    .end local v0    # "effectListCurrentHeight":I
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 726
    .restart local v0    # "effectListCurrentHeight":I
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 727
    .local v1, "effectListExpandHeight":I
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v2}, Lcom/android/server/StaticScrollView;->getCurrentHeight()I

    move-result v2

    .line 728
    .local v2, "scrollViewCurrentHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 729
    .local v3, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_51

    const-wide/16 v4, 0x0

    goto :goto_53

    :cond_51
    const-wide/16 v4, 0x12c

    :goto_53
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 730
    new-instance v4, Lcom/android/server/OemSceneGameModeDialog$12;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/server/OemSceneGameModeDialog$12;-><init>(Lcom/android/server/OemSceneGameModeDialog;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 740
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 741
    return-void
.end method

.method private startFnaticOffAnimation()V
    .registers 5

    .line 689
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOffAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "startFnaticOffAnimation"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    :cond_25
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 691
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startCloseEffectListHeightAniamtion()V

    .line 692
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    .line 693
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    .line 695
    :cond_37
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffBackgroundAnimation()V

    .line 696
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffColorAnimation()V

    .line 697
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffIconAnimation()V

    .line 698
    return-void
.end method

.method private startFnaticOffBackgroundAnimation()V
    .registers 8

    .line 780
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOffBackgroundAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5060067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 782
    .local v0, "fullDialogTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-nez v1, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 784
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x5060064

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 785
    .local v1, "folderTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_47

    move v4, v3

    goto :goto_48

    :cond_47
    move v4, v2

    :goto_48
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 787
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5060061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5060069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 789
    .local v4, "scrollViewTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v5, v4}, Lcom/android/server/StaticScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 790
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_75

    move v2, v3

    nop

    :cond_75
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 791
    return-void
.end method

.method private startFnaticOffColorAnimation()V
    .registers 12

    .line 891
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOffColorAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x5040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 893
    .local v0, "colorFromFnatic":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 894
    .local v1, "colorToAccentColor":Ljava/lang/Integer;
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 895
    .local v3, "colorToWhite":Ljava/lang/Integer;
    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const v8, 0x10100a0

    const/4 v9, 0x0

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v9, [I

    aput-object v7, v5, v6

    .line 896
    .local v5, "states":[[I
    new-array v7, v4, [I

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v7, v9

    const-string v2, "#8AFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v7, v6

    move-object v2, v7

    .line 897
    .local v2, "colors":[I
    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 899
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v1, v8, v6

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 901
    .local v7, "oneplusAccentColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    aput-object v3, v4, v6

    invoke-static {v8, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 902
    .local v4, "whiteColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$16;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$16;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 910
    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$17;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$17;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 917
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 918
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 920
    :cond_9b
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 921
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 922
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x506005c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x506005e

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 925
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 926
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 931
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 932
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 933
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 934
    return-void
.end method

.method private startFnaticOffIconAnimation()V
    .registers 4

    .line 820
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOffIconAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1d
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    .line 822
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 823
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 824
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 825
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 826
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 827
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    goto :goto_73

    .line 829
    :cond_41
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 830
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 831
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    .line 832
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    .line 833
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    .line 834
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    .line 835
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    .line 836
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    .line 837
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    .line 838
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->showAnimation()V

    .line 841
    :goto_73
    return-void
.end method

.method private startFnaticOnAnimation()V
    .registers 5

    .line 665
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnAnimation"

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "startFnaticOnAnimation"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    :cond_14
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    if-eqz v0, :cond_1d

    .line 667
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 669
    :cond_1d
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 670
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    .line 671
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_38
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    if-eqz v0, :cond_44

    .line 675
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/4 v1, 0x0

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 677
    :cond_44
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnColorAnimation()V

    .line 678
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->hideAniamtion()V

    .line 679
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnBackgroundAnimation()V

    .line 680
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_62

    .line 681
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    .line 682
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startExpandEffectListHeightAniamtion()V

    .line 684
    :cond_5b
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    :cond_62
    return-void
.end method

.method private startFnaticOnBackgroundAnimation()V
    .registers 8

    .line 766
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnBackgroundAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5060068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 768
    .local v0, "fullDialogTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-nez v1, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 770
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x5060066

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 771
    .local v1, "folderTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_47

    move v4, v3

    goto :goto_48

    :cond_47
    move v4, v2

    :goto_48
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 773
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5060060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 774
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x506006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 775
    .local v4, "scrollViewTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v5, v4}, Lcom/android/server/StaticScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 776
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_75

    move v2, v3

    nop

    :cond_75
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 777
    return-void
.end method

.method private startFnaticOnColorAnimation()V
    .registers 12

    .line 844
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnColorAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 846
    .local v0, "colorFromAccentColor":Ljava/lang/Integer;
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 847
    .local v1, "colorFromWhite":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x5040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 848
    .local v2, "colorTo":Ljava/lang/Integer;
    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const v8, 0x10100a0

    const/4 v9, 0x0

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v9, [I

    aput-object v7, v5, v6

    .line 849
    .local v5, "states":[[I
    new-array v7, v4, [I

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v7, v9

    const-string v3, "#8AFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v7, v6

    move-object v3, v7

    .line 850
    .local v3, "colors":[I
    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 853
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 855
    .local v7, "oneplusAccentColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    aput-object v2, v4, v6

    invoke-static {v8, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 856
    .local v4, "whiteColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$14;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$14;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 864
    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$15;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$15;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 871
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 872
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 874
    :cond_9b
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 875
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 876
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5060005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 877
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x5060006

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 878
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 879
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 880
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 881
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 885
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 886
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 887
    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    .line 888
    return-void
.end method

.method private startFnaticOnIconAnimation()V
    .registers 4

    .line 794
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOnIconAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1d
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 796
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 797
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 798
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 799
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 800
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 801
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 803
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOn()V

    .line 804
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOn()V

    goto :goto_7d

    .line 806
    :cond_4b
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 807
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 808
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    .line 809
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->show()V

    .line 810
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    .line 811
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    .line 812
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    .line 813
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    .line 814
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    .line 815
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    .line 817
    :goto_7d
    return-void
.end method

.method private triggerToChangeFnaticMode()V
    .registers 5

    .line 266
    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "triggerToChangeFnaticMode"

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "triggerToChangeFnaticMode"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "1"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 269
    return-void
.end method

.method private updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V
    .registers 13
    .param p1, "root"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "titleViewId"    # I
    .param p4, "switchViewId"    # I
    .param p5, "textId"    # I
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "vis"    # Z

    .line 562
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 563
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 564
    .local v1, "switchView":Landroid/widget/Switch;
    invoke-direct {p0, p2, v1}, Lcom/android/server/OemSceneGameModeDialog;->setGameModeDlgSwitchTrackColor(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 565
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v2, p6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    goto :goto_27

    :cond_26
    move v4, v3

    :goto_27
    move v2, v4

    .line 569
    .local v2, "enabled":Z
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 570
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 571
    new-instance v4, Lcom/android/server/OemSceneGameModeDialog$10;

    invoke-direct {v4, p0, p6}, Lcom/android/server/OemSceneGameModeDialog$10;-><init>(Lcom/android/server/OemSceneGameModeDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 579
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 580
    .local v4, "item":Landroid/view/View;
    if-eqz v4, :cond_47

    .line 581
    if-eqz p7, :cond_42

    goto :goto_44

    :cond_42
    const/16 v3, 0x8

    :goto_44
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_47
    return-void
.end method


# virtual methods
.method public doSomething(I)V
    .registers 4
    .param p1, "something"    # I

    .line 654
    if-nez p1, :cond_3

    goto :goto_14

    .line 655
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 657
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    .line 658
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnAnimation()V

    goto :goto_14

    .line 660
    :cond_d
    const-string v0, "OemSceneGameModeDialog"

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_14
    return-void
.end method

.method public needToAnimate()Z
    .registers 2

    .line 294
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 182
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    if-eqz v0, :cond_15

    .line 184
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 187
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    .line 188
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    .line 190
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    .line 191
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    .line 192
    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v1, :cond_67

    .line 195
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 196
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$2;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_62

    .line 213
    :cond_57
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffAnimation()V

    .line 215
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    .line 216
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    .line 218
    :goto_62
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    goto/16 :goto_102

    .line 220
    :cond_67
    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mSettingsScrollView.checkSettingsShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v3}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    if-ne v1, v0, :cond_ba

    .line 222
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 223
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$3;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_102

    .line 239
    :cond_b1
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    .line 240
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    goto :goto_102

    .line 243
    :cond_ba
    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mSettingsScrollView.checkSettingsShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v3}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 245
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    .line 247
    :cond_fa
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    .line 248
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    .line 253
    :goto_102
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v0, :cond_134

    .line 255
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_111

    const-string v0, "OemSceneGameModeDialog"

    const-string v1, "add big alert enable esport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_111
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_120

    .line 257
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const-string v2, "RBS8PPYT2W"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 259
    :cond_120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v2, "esports_start"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_134
    return-void
.end method

.method public updateNotifyType()V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070029

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 154
    .local v0, "notifyStyle":I
    if-nez v0, :cond_26

    .line 155
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_45

    .line 156
    :cond_26
    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 157
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_45

    .line 158
    :cond_32
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 159
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_45

    .line 162
    :cond_3e
    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while checking notify style"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_45
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507002a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OemSceneGameModeDialog$1;-><init>(Lcom/android/server/OemSceneGameModeDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method public updateView()V
    .registers 9

    .line 360
    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_c
    new-instance v0, Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    .line 362
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setElevation(F)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    .line 365
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    .line 366
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initHandler()V

    .line 367
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initEffectEntryView()V

    .line 368
    const v0, 0x5070016

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    .line 369
    const v0, 0x5070014

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    .line 370
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v0, 0x5070001

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    .line 372
    const v0, 0x5070010

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEsportEffectList:Landroid/view/View;

    .line 373
    const v0, 0x5070018

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeEffectList:Landroid/view/View;

    .line 374
    const v0, 0x5070033

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    .line 375
    const v0, 0x5070013

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticIcon:Landroid/widget/ImageView;

    .line 377
    const v0, 0x507002f

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    .line 378
    const v0, 0x5070030

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    .line 379
    const v0, 0x5070031

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIcon:Landroid/widget/ImageView;

    .line 380
    const v0, 0x5070032

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIconFake:Landroid/widget/ImageView;

    .line 381
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$4;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$5;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v0, 0x507002e

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaticScrollView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    .line 404
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIconFake:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/StaticScrollView;->init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V

    .line 405
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initEffectImageList()V

    .line 408
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070023

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    .line 409
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$6;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$6;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070024

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    .line 441
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_113

    move v0, v3

    goto :goto_114

    :cond_113
    move v0, v1

    .line 444
    .local v0, "showDetail":Z
    :goto_114
    sget v2, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_125

    .line 445
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    sget v4, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    if-ne v4, v3, :cond_121

    move v1, v3

    nop

    :cond_121
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_12e

    .line 447
    :cond_125
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    if-nez v0, :cond_12b

    move v1, v3

    nop

    :cond_12b
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    :goto_12e
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->mInitialDontShowAgainChecked:Z

    .line 451
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070025

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    .line 452
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$7;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$7;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507001e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    .line 461
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507001d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    .line 462
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070020

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    .line 463
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507001f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    .line 464
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070026

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    .line 465
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070021

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    .line 466
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateViewOptions()V

    .line 469
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x5070000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    .line 470
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$8;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$8;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_1ce

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEffectImageListGameMode.hide, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_1ce
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v1, :cond_1dc

    .line 484
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->hide()V

    .line 485
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->hide()V

    .line 487
    :cond_1dc
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    .line 488
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateViewState()V

    .line 489
    return-void
.end method

.method public updateViewOptions()V
    .registers 15

    .line 513
    const-string/jumbo v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 514
    .local v8, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 515
    .local v9, "hasEnableGameVibrate":Z
    const/4 v10, 0x0

    .line 516
    .local v10, "hasAdMode":Z
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->isBtA2dpOn()Z

    move-result v11

    .line 517
    .local v11, "isA2dpOn":Z
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModePanel;->getFgPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->isSupportHapticFeedbackApp(Ljava/lang/String;)Z

    move-result v12

    .line 518
    .local v12, "isHapticFeedbackSupportedGame":Z
    const/4 v0, 0x0

    .line 520
    .local v0, "showHapticItem":Z
    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_41

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isA2dpOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/ isHapticFeedbackSupportedGame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_41
    if-eqz v9, :cond_48

    if-eqz v12, :cond_48

    if-nez v11, :cond_48

    .line 530
    const/4 v0, 0x1

    .line 533
    .end local v0    # "showHapticItem":Z
    .local v13, "showHapticItem":Z
    :cond_48
    move v13, v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070027

    const v4, 0x5070026

    const v5, 0x50c0035

    const-string/jumbo v6, "op_game_mode_vibrate_feedback"

    move-object v0, p0

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 537
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070022

    const v4, 0x5070021

    const v5, 0x50c0032

    const-string/jumbo v6, "op_game_mode_ad_enable"

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 541
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x507001e

    const v4, 0x507001d

    const v5, 0x50c0020

    const-string v6, "game_mode_answer_no_incallui"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 545
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070020

    const v4, 0x507001f

    const v5, 0x50c0021

    const-string v6, "game_mode_notifications_3rd_calls"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    .line 551
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_game_mode_vibrate_feedback"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_aa

    goto :goto_ab

    :cond_aa
    move v1, v3

    :goto_ab
    move v0, v1

    .line 553
    .local v0, "hapticFeedbackOn":Z
    if-eqz v13, :cond_b7

    if-nez v0, :cond_b7

    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    if-nez v1, :cond_b7

    .line 555
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->promptHapticFeedbackOption()V

    .line 557
    :cond_b7
    return-void
.end method

.method public updateViewState()V
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    .line 300
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    .line 301
    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_3d

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateViewState, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsOnClickHappen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_3d
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_96

    .line 306
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    if-nez v1, :cond_4f

    .line 307
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 309
    :cond_4f
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1}, Lcom/android/server/ESportGuider;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 310
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnAnimation()V

    goto :goto_5e

    .line 312
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    .line 314
    :goto_5e
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    const v2, 0x50c004e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 317
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setAlpha(F)V

    .line 318
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 320
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setAlpha(F)V

    .line 321
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_ef

    .line 325
    :cond_96
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 326
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    if-nez v1, :cond_a2

    .line 328
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->setToFnaticOffLayout()V

    .line 330
    :cond_a2
    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    if-ne v1, v2, :cond_ab

    .line 331
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->gone()V

    .line 335
    :cond_ab
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 336
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    const v4, 0x50c0050

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 339
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    .line 341
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 342
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    .line 344
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    .line 345
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    .line 346
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 348
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    .line 350
    :goto_ef
    iput-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    .line 351
    return-void
.end method
