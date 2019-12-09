.class Lcom/android/server/policy/LegacyGlobalActions;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "LegacyGlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

.field private mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/globalactions/ActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mOnDismiss:Ljava/lang/Runnable;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/globalactions/Action;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V
    .locals 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 115
    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 116
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    .line 741
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$9;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 763
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$10;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$10;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 774
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$11;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 783
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$12;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/LegacyGlobalActions$12;-><init>(Lcom/android/server/policy/LegacyGlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 795
    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$13;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 129
    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    .line 130
    iget-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    const-string p2, "dreams"

    .line 132
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 131
    invoke-static {p2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 135
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string p3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const-string p2, "connectivity"

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 143
    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    .line 146
    const-string/jumbo p2, "phone"

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 148
    iget-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 149
    iget-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "airplane_mode_on"

    .line 150
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 149
    invoke-virtual {p2, p3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    iget-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "vibrator"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    .line 153
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    .line 155
    iget-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x11200ed

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    .line 158
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/policy/LegacyGlobalActions;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsDialog;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ActionsDialog;)Lcom/android/internal/globalactions/ActionsDialog;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/LegacyGlobalActions;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/internal/globalactions/ToggleAction$State;)Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/media/AudioManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ToggleAction;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    return-object p0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/globalactions/Action;",
            ">;)V"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 546
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 547
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 550
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 551
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 552
    iget v4, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_0

    .line 553
    :goto_1
    move v2, v3

    goto :goto_2

    .line 552
    :cond_0
    goto :goto_2

    :cond_1
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 553
    :goto_2
    iget-object v3, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 555
    :goto_3
    move-object v6, v3

    goto :goto_4

    .line 554
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 555
    :goto_4
    new-instance v9, Lcom/android/server/policy/LegacyGlobalActions$8;

    const v5, 0x1080475

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    iget-object v4, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_5

    :cond_3
    const-string v4, "Primary"

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    if-eqz v2, :cond_4

    const-string v2, " \u2714"

    goto :goto_6

    :cond_4
    const-string v2, ""

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/policy/LegacyGlobalActions$8;-><init>(Lcom/android/server/policy/LegacyGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 578
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_5
    goto :goto_0

    .line 582
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 188
    :cond_1
    :goto_0
    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 833
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 835
    nop

    .line 832
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 838
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 840
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-nez v0, :cond_1

    .line 841
    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 843
    :cond_1
    return-void
.end method

.method private createDialog()Lcom/android/internal/globalactions/ActionsDialog;
    .locals 11

    .line 218
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    .line 223
    :goto_0
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$1;

    const v6, 0x108039a

    const v7, 0x108039c

    const v8, 0x10402ce

    const v9, 0x10402cd

    const v10, 0x10402cc

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/policy/LegacyGlobalActions$1;-><init>(Lcom/android/server/policy/LegacyGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->onAirplaneModeChanged()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 274
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_d

    .line 275
    aget-object v4, v0, v3

    .line 276
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    goto/16 :goto_3

    .line 280
    :cond_1
    const-string/jumbo v5, "power"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/PowerAction;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/PowerAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 282
    :cond_2
    const-string v5, "airplane"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 284
    :cond_3
    const-string v5, "bugreport"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bugreport_in_power_menu"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    .line 286
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 287
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;

    invoke-direct {v6, p0}, Lcom/android/server/policy/LegacyGlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 289
    :cond_4
    const-string/jumbo v5, "silent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 290
    iget-boolean v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v5, :cond_c

    .line 291
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 293
    :cond_5
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 294
    const-string v5, "fw.power_user_switcher"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 295
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/policy/LegacyGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 297
    :cond_6
    const-string/jumbo v5, "settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 298
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getSettingsAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_7
    const-string v5, "lockdown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 300
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 301
    :cond_8
    const-string/jumbo v5, "voiceassist"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 302
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getVoiceAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    :cond_9
    const-string v5, "assist"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 304
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getAssistAction()Lcom/android/internal/globalactions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    :cond_a
    const-string/jumbo v5, "restart"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 306
    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/policy/RestartAction;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/RestartAction;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    :cond_b
    const-string v5, "LegacyGlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid global action key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_c
    :goto_2
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 314
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 316
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getEmergencyAction()Lcom/android/internal/globalactions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_e
    new-instance v0, Lcom/android/internal/globalactions/ActionsAdapter;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$wqp7aD3DxIVGmy_uGo-yxhtwmQk;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$wqp7aD3DxIVGmy_uGo-yxhtwmQk;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    new-instance v5, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;

    invoke-direct {v5, p0}, Lcom/android/server/policy/-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/internal/globalactions/ActionsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;)V

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 322
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 324
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 327
    new-instance v3, Lcom/android/internal/globalactions/ActionsDialog;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/android/internal/globalactions/ActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 328
    invoke-virtual {v3, v2}, Lcom/android/internal/globalactions/ActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 330
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 331
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 332
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/LegacyGlobalActions$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LegacyGlobalActions$2;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 344
    invoke-virtual {v3}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 346
    invoke-virtual {v3, p0}, Lcom/android/internal/globalactions/ActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 348
    return-object v3
.end method

.method private getAssistAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 462
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$5;

    const v1, 0x1080303

    const v2, 0x10402ba

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$5;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 533
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEmergencyAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 442
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$4;

    const v1, 0x10802b2

    const v2, 0x10402be

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$4;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 506
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$7;

    const v1, 0x108002f

    const v2, 0x10402c0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$7;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 419
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$3;

    const v1, 0x10804e6

    const v2, 0x10402c5

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$3;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private getVoiceAssistAction()Lcom/android/internal/globalactions/Action;
    .locals 3

    .line 484
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions$6;

    const v1, 0x1080506

    const v2, 0x10402ca

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions$6;-><init>(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->awakenIfNecessary()V

    .line 192
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->prepareDialog()V

    .line 196
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/SinglePressAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/globalactions/LongPressAction;

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/SinglePressAction;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/SinglePressAction;->onPress()V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 203
    const-string v1, "LegacyGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->show()V

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 210
    :cond_1
    :goto_0
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 1

    .line 540
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

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

.method public static synthetic lambda$createDialog$0(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method public static synthetic lambda$createDialog$1(Lcom/android/server/policy/LegacyGlobalActions;)Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .line 818
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    .line 821
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 820
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 824
    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 825
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 826
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .line 585
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->refreshSilentMode()V

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneModeOn:Lcom/android/internal/globalactions/ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAirplaneState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsAdapter;->notifyDataSetChanged()V

    .line 588
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 589
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 2

    .line 596
    iget-boolean v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 598
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mSilentModeAction:Lcom/android/internal/globalactions/Action;

    check-cast v1, Lcom/android/internal/globalactions/ToggleAction;

    .line 600
    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 599
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/globalactions/ToggleAction;->updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V

    .line 602
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/LegacyGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 624
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 626
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mAdapter:Lcom/android/internal/globalactions/ActionsAdapter;

    invoke-virtual {p1, p2}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/globalactions/Action;->onPress()V

    .line 627
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 607
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mOnDismiss:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 610
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mShowSilentToggle:Z

    if-eqz p1, :cond_1

    .line 612
    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    goto :goto_0

    .line 613
    :catch_0
    move-exception p1

    .line 615
    const-string v0, "LegacyGlobalActions"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    :cond_1
    :goto_0
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mKeyguardShowing:Z

    .line 167
    iput-boolean p2, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDeviceProvisioned:Z

    .line 168
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    invoke-virtual {p1}, Lcom/android/internal/globalactions/ActionsDialog;->dismiss()V

    .line 170
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mDialog:Lcom/android/internal/globalactions/ActionsDialog;

    .line 172
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/LegacyGlobalActions;->handleShow()V

    .line 176
    :goto_0
    return-void
.end method
