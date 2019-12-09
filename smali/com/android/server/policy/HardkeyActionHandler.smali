.class public Lcom/android/server/policy/HardkeyActionHandler;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;,
        Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;,
        Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;
    }
.end annotation


# static fields
.field private static final BOOST_LEVEL:I = 0xf4240

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final KEY_MASK_VOLUME:I = 0x40

.field public static final MSG_DO_HAPTIC_FB:I = 0x1bc3

.field public static final MSG_FIRE_HOME:I = 0x1bbe

.field public static final MSG_UPDATE_MENU_KEY:I = 0x1bc2

.field private static final TAG:Ljava/lang/String;

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field private mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mContext:Landroid/content/Context;

.field private mDeviceHardwareKeys:I

.field private mHandler:Landroid/os/Handler;

.field private mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mHwKeysDisabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

.field private mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

.field private mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/policy/HardkeyActionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HardkeyActionHandler;->TAG:Ljava/lang/String;

    .line 656
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/server/policy/HardkeyActionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HardkeyActionHandler$1;-><init>(Lcom/android/server/policy/HardkeyActionHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    .line 117
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActivityManager:Landroid/app/IActivityManager;

    .line 121
    const-string v0, "config_deviceHardwareKeys"

    const-string v1, "android"

    invoke-static {p1, v0, v1}, Lcom/android/internal/utils/ActionUtils;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    .line 124
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 125
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 126
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 127
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 128
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 130
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;-><init>(Lcom/android/server/policy/HardkeyActionHandler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    .line 131
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mObserver:Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$SettingsObserver;->observe()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/policy/HardkeyActionHandler;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->updateKeyAssignments()V

    return-void
.end method

.method private filterDisabledKey(I)Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isInLockTaskMode()Z
    .locals 1

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method private stopSystemLockTaskMode()V
    .locals 1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 531
    :goto_0
    return-void
.end method

.method private updateKeyAssignments()V
    .locals 10

    .line 686
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hardware_keys_disable"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    .line 691
    iget v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 692
    move v1, v2

    goto :goto_1

    .line 691
    :cond_1
    nop

    .line 692
    move v1, v4

    :goto_1
    iget v3, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 693
    move v3, v2

    goto :goto_2

    .line 692
    :cond_2
    nop

    .line 693
    move v3, v4

    :goto_2
    iget v5, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 694
    move v5, v2

    goto :goto_3

    .line 693
    :cond_3
    nop

    .line 694
    move v5, v4

    :goto_3
    iget v6, p0, Lcom/android/server/policy/HardkeyActionHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    .line 696
    move v6, v2

    goto :goto_4

    .line 694
    :cond_4
    nop

    .line 696
    move v6, v4

    :goto_4
    iget-object v7, p0, Lcom/android/server/policy/HardkeyActionHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    .line 697
    invoke-static {v8}, Lcom/android/internal/utils/ActionConstants;->getDefaults(I)Lcom/android/internal/utils/ActionConstants$Defaults;

    move-result-object v8

    .line 696
    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getConfig(Landroid/content/Context;Lcom/android/internal/utils/ActionConstants$Defaults;)Ljava/util/ArrayList;

    move-result-object v7

    .line 699
    const-string v8, "hwkeys_button_back"

    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v8

    .line 700
    iget-object v9, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V

    .line 702
    const-string v8, "hwkeys_button_home"

    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v8

    .line 703
    iget-object v9, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V

    .line 705
    const-string v8, "hwkeys_button_overview"

    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v8

    .line 706
    iget-object v9, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V

    .line 708
    const-string v8, "hwkeys_button_menu"

    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v8

    .line 709
    iget-object v9, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v9, v8}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V

    .line 711
    const-string v8, "hwkeys_button_assist"

    invoke-static {v7, v8}, Lcom/android/internal/utils/Config;->getButtonConfigFromTag(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v7

    .line 712
    iget-object v8, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v8, v7}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V

    .line 714
    nop

    .line 716
    if-eqz v3, :cond_5

    .line 717
    iget-object v3, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v3

    goto :goto_5

    .line 719
    :cond_5
    move v3, v4

    :goto_5
    if-eqz v1, :cond_6

    .line 720
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v1

    or-int/2addr v3, v1

    .line 722
    :cond_6
    if-eqz v5, :cond_7

    .line 723
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v1

    or-int/2addr v3, v1

    .line 725
    :cond_7
    if-eqz v6, :cond_8

    .line 726
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v1

    or-int/2addr v3, v1

    .line 728
    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasMenuAction()Z

    move-result v1

    or-int/2addr v1, v3

    .line 731
    iget-object v3, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1bc2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 732
    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 733
    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    monitor-exit v0

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V
    .locals 0

    .line 138
    return-void
.end method

.method public handleKeyEvent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IIZZZZ)Z
    .locals 4

    .line 155
    invoke-direct {p0, p2}, Lcom/android/server/policy/HardkeyActionHandler;->filterDisabledKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    const/4 v0, 0x3

    const/16 v2, 0x1bc3

    const/4 v3, 0x0

    if-ne p2, v0, :cond_12

    .line 160
    if-nez p4, :cond_6

    iget-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 161
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 162
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 164
    return v1

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_2

    .line 168
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 171
    :cond_2
    if-eqz p5, :cond_3

    .line 172
    return v1

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object p1

    .line 196
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 197
    sget-object p1, Lcom/android/server/policy/HardkeyActionHandler;->TAG:Ljava/lang/String;

    const-string p2, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v1

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 202
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 203
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 204
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 205
    return v1

    .line 208
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 209
    return v1

    .line 214
    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 215
    :goto_0
    if-eqz p1, :cond_b

    .line 216
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 217
    const/16 p5, 0x7d9

    if-eq p2, p5, :cond_a

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_8

    goto :goto_2

    .line 222
    :cond_8
    sget-object p1, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length p1, p1

    .line 223
    move p5, v3

    :goto_1
    if-ge p5, p1, :cond_b

    .line 224
    sget-object v0, Lcom/android/server/policy/HardkeyActionHandler;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v0, v0, p5

    if-ne p2, v0, :cond_9

    .line 226
    return v1

    .line 223
    :cond_9
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 220
    :cond_a
    :goto_2
    return v3

    .line 231
    :cond_b
    if-nez p4, :cond_c

    .line 232
    return v1

    .line 235
    :cond_c
    if-nez p3, :cond_f

    .line 236
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 237
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 238
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 239
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 240
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 241
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 242
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_3

    .line 243
    :cond_d
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 244
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 245
    :cond_e
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->preloadRecentApps()V

    goto :goto_3

    .line 247
    :cond_f
    if-eqz p6, :cond_11

    .line 248
    if-nez p7, :cond_11

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 249
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 250
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 251
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 252
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_10

    .line 253
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 255
    :cond_10
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 257
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHomeButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 260
    :cond_11
    :goto_3
    return v1

    .line 261
    :cond_12
    const/16 p1, 0x52

    if-ne p2, p1, :cond_20

    .line 262
    if-nez p4, :cond_19

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 263
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 265
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 266
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 267
    return v1

    .line 270
    :cond_13
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_14

    .line 271
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 274
    :cond_14
    if-nez p5, :cond_18

    if-eqz p7, :cond_15

    goto :goto_4

    .line 278
    :cond_15
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 279
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 280
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 281
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 282
    return v1

    .line 285
    :cond_16
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-nez p1, :cond_17

    .line 286
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 289
    :cond_17
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 290
    return v1

    .line 275
    :cond_18
    :goto_4
    return v1

    .line 293
    :cond_19
    if-nez p4, :cond_1a

    .line 294
    return v1

    .line 297
    :cond_1a
    if-nez p3, :cond_1d

    .line 298
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 299
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 300
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 301
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 302
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 303
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 304
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_5

    .line 305
    :cond_1b
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 306
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 307
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 308
    :cond_1c
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->preloadRecentApps()V

    goto :goto_5

    .line 310
    :cond_1d
    if-eqz p6, :cond_1f

    .line 311
    if-nez p7, :cond_1f

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 312
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 313
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 314
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 315
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 316
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 318
    :cond_1e
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 320
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mMenuButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 323
    :cond_1f
    :goto_5
    return v1

    .line 324
    :cond_20
    const/16 p1, 0xbb

    if-ne p2, p1, :cond_2e

    .line 325
    if-nez p4, :cond_27

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 326
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 328
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 329
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 330
    return v1

    .line 333
    :cond_21
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_22

    .line 334
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 337
    :cond_22
    if-nez p5, :cond_26

    if-eqz p7, :cond_23

    goto :goto_6

    .line 341
    :cond_23
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 342
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 343
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 344
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 345
    return v1

    .line 348
    :cond_24
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-nez p1, :cond_25

    .line 349
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 352
    :cond_25
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 353
    return v1

    .line 338
    :cond_26
    :goto_6
    return v1

    .line 356
    :cond_27
    if-nez p4, :cond_28

    .line 357
    return v1

    .line 360
    :cond_28
    if-nez p3, :cond_2b

    .line 361
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 362
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 363
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 364
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 365
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 366
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 367
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_7

    .line 368
    :cond_29
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 369
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 370
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 371
    :cond_2a
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->preloadRecentApps()V

    goto :goto_7

    .line 373
    :cond_2b
    if-eqz p6, :cond_2d

    .line 374
    if-nez p7, :cond_2d

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 375
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 376
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 377
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 378
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_2c

    .line 379
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 381
    :cond_2c
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 383
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mRecentButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 386
    :cond_2d
    :goto_7
    return v1

    .line 387
    :cond_2e
    const/16 p1, 0xdb

    if-ne p2, p1, :cond_3c

    .line 388
    if-nez p4, :cond_35

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 389
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 391
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 392
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 393
    return v1

    .line 396
    :cond_2f
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_30

    .line 397
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 400
    :cond_30
    if-nez p5, :cond_34

    if-eqz p7, :cond_31

    goto :goto_8

    .line 404
    :cond_31
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 405
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 406
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 407
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 408
    return v1

    .line 411
    :cond_32
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-nez p1, :cond_33

    .line 412
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 414
    :cond_33
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 415
    return v1

    .line 401
    :cond_34
    :goto_8
    return v1

    .line 418
    :cond_35
    if-nez p4, :cond_36

    .line 419
    return v1

    .line 422
    :cond_36
    if-nez p3, :cond_39

    .line 423
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 424
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 425
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 426
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 427
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 428
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 429
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_9

    .line 430
    :cond_37
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 431
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 432
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 433
    :cond_38
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->preloadRecentApps()V

    goto :goto_9

    .line 435
    :cond_39
    if-eqz p6, :cond_3b

    .line 436
    if-nez p7, :cond_3b

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 437
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 438
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 439
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 440
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 441
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 443
    :cond_3a
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 445
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mAssistButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 448
    :cond_3b
    :goto_9
    return v1

    .line 449
    :cond_3c
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4a

    .line 450
    if-nez p4, :cond_42

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 451
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 453
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 454
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 455
    return v1

    .line 458
    :cond_3d
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 459
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 462
    :cond_3e
    if-nez p5, :cond_41

    if-eqz p7, :cond_3f

    goto :goto_a

    .line 466
    :cond_3f
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 467
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 468
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 469
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->postDTTimeout()V

    .line 470
    return v1

    .line 473
    :cond_40
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireSingleTap()V

    .line 474
    return v1

    .line 463
    :cond_41
    :goto_a
    return v1

    .line 477
    :cond_42
    if-nez p4, :cond_43

    .line 478
    return v1

    .line 481
    :cond_43
    if-nez p3, :cond_46

    .line 482
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 483
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/HardkeyActionHandler;->fireBooster(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    .line 484
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isDoubleTapPending()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 485
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setDoubleTapPending(Z)V

    .line 486
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->cancelDTTimeout()V

    .line 487
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireDoubleTap()V

    .line 488
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_b

    .line 489
    :cond_44
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 490
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasDoubleTapRecents()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 491
    :cond_45
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->preloadRecentApps()V

    goto :goto_b

    .line 493
    :cond_46
    if-eqz p6, :cond_49

    .line 494
    if-nez p7, :cond_49

    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    .line 495
    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->wasConsumed()Z

    move-result p1

    if-nez p1, :cond_49

    .line 496
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 497
    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 498
    invoke-direct {p0}, Lcom/android/server/policy/HardkeyActionHandler;->stopSystemLockTaskMode()V

    .line 499
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    goto :goto_b

    .line 502
    :cond_47
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->isLongTapEnabled()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 503
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasLongPressRecents()Z

    move-result p1

    if-nez p1, :cond_48

    .line 504
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 506
    :cond_48
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->fireLongPress()V

    .line 507
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 508
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler;->mBackButton:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 513
    :cond_49
    :goto_b
    return v1

    .line 515
    :cond_4a
    return v3
.end method

.method public isHwKeysDisabled()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler;->mHwKeysDisabled:Z

    return v0
.end method
