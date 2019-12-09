.class public Lcom/android/server/ESportMode;
.super Ljava/lang/Object;
.source "ESportMode.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;,
        Lcom/android/server/ESportMode$ESportSettingsContentObserver;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_PHONE_ES_RETRY_COUNT:I = 0xa

.field private static final PHONE_ES_RETRY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ESportMode"

.field private static final URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sEsportEnabled:Z

.field private static sIExtTelephony:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/ESportMode;

.field private static sTelEsportEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

.field private mEnabled:Z

.field private mEverShownGuider:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTelephonyEsportEnabled:Z

.field private mTelephonyEsportRetryCount:I

.field private mUser:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-string v0, "esport_mode_enable_trigger"

    .line 61
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/ESportMode;->URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

    .line 65
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    .line 67
    sput-boolean v0, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    .line 73
    iput v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ESportMode;->mUser:I

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v2, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;-><init>(Lcom/android/server/ESportMode;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 342
    new-instance v2, Lcom/android/server/ESportMode$2;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$2;-><init>(Lcom/android/server/ESportMode;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p1, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 90
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/ESportMode;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 91
    new-instance v2, Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/ESportMode$ESportSettingsContentObserver;-><init>(Lcom/android/server/ESportMode;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    .line 93
    iget-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/ESportMode;->URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/ESportMode;->mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 98
    :try_start_53
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/ESportMode$1;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$1;-><init>(Lcom/android/server/ESportMode;)V

    const-class v3, Lcom/android/server/ESportMode;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_65} :catch_66

    .line 108
    goto :goto_67

    .line 107
    :catch_66
    move-exception v1

    .line 110
    :goto_67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ESportMode;->mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-static {p1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 117
    iget-object v2, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 119
    invoke-direct {p0}, Lcom/android/server/ESportMode;->needResumeUserDataSaver()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 120
    iget-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "esport_mode_enabled"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 121
    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusEsportApisController;->forceSetRestrictBackground(Z)V

    .line 123
    :cond_a2
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/ESportMode;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/ESportMode;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ESportMode;)Lcom/android/server/ESportGuider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ESportMode;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ESportMode;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    iget v0, p0, Lcom/android/server/ESportMode;->mUser:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ESportMode;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ESportMode;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;
    .param p1, "x1"    # Z

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ESportMode;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    invoke-direct {p0}, Lcom/android/server/ESportMode;->isWiFiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ESportMode;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ESportMode;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    return v0
.end method

.method private getDataSaverEnabled()Z
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/ESportMode;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .registers 8

    .line 206
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ESportMode"

    const-string v1, "getIExtTelephony()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 209
    .local v1, "remoteService":Ljava/lang/Object;
    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 210
    .local v2, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 211
    .local v3, "asInterface":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_35

    .line 216
    .end local v1    # "remoteService":Ljava/lang/Object;
    .end local v2    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "asInterface":Ljava/lang/reflect/Method;
    nop

    .line 217
    sget-object v0, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    return-object v0

    .line 212
    :catch_35
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ESportMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ESportMode;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    if-nez v0, :cond_b

    .line 127
    new-instance v0, Lcom/android/server/ESportMode;

    invoke-direct {v0, p0}, Lcom/android/server/ESportMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    .line 129
    :cond_b
    sget-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    return-object v0
.end method

.method private invokeEsportAPIs(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 235
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] ESportMode invokeEsportAPIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enabled"

    .line 238
    if-eqz p1, :cond_23

    const-string v2, "1"

    goto :goto_25

    :cond_23
    const-string v2, "0"

    .line 237
    :goto_25
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 240
    sput-boolean p1, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    .line 243
    if-eqz p1, :cond_4d

    .line 245
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_guider_never_show"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    .line 249
    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    if-nez v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/ESportMode;->isDocked()Z

    move-result v0

    if-nez v0, :cond_52

    .line 251
    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->show()V

    goto :goto_52

    .line 254
    :cond_4d
    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->hide()V

    .line 258
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/server/ESportMode;->isWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    goto :goto_60

    .line 261
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    .line 265
    :goto_60
    if-eqz p1, :cond_7e

    .line 266
    invoke-direct {p0}, Lcom/android/server/ESportMode;->getDataSaverEnabled()Z

    move-result v0

    .line 267
    .local v0, "currentStatus":Z
    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_data_saver"

    if-eqz v0, :cond_6f

    const-string v4, "1"

    goto :goto_71

    :cond_6f
    const-string v4, "0"

    :goto_71
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 268
    if-nez v0, :cond_7d

    .line 269
    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/OnePlusEsportApisController;->setRestrictBackground(Z)V

    .line 270
    .end local v0    # "currentStatus":Z
    :cond_7d
    goto :goto_8b

    .line 271
    :cond_7e
    invoke-direct {p0}, Lcom/android/server/ESportMode;->needResumeUserDataSaver()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 272
    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusEsportApisController;->setRestrictBackground(Z)V

    .line 274
    :cond_8b
    :goto_8b
    return-void
.end method

.method private isWiFiConnected()Z
    .registers 6

    .line 286
    iget-object v0, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 288
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 289
    const-string v2, "ESportMode"

    const-string v3, "failed to get ConnectivityManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 292
    :cond_15
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 293
    .local v2, "mWifiInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_24

    .line 294
    const-string v3, "ESportMode"

    const-string v4, "failed to get NetworkInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v1

    .line 297
    :cond_24
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private listenForConfigChanged()V
    .registers 4

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ESportMode$3;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$3;-><init>(Lcom/android/server/ESportMode;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    return-void
.end method

.method private needResumeUserDataSaver()Z
    .registers 5

    .line 278
    const-string v0, "0"

    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_data_saver"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setTelephonyEsportMode(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 301
    sget-boolean v0, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    if-nez v0, :cond_9

    .line 303
    return-void

    .line 306
    :cond_9
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTelephonyEsportMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_24
    const/4 v0, 0x1

    :try_start_25
    iget-object v1, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    invoke-static {}, Lcom/android/server/ESportMode;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    .line 313
    sget-boolean v1, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v1, :cond_4f

    const-string v1, "ESportMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got sIExtTelephony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_4f
    sget-object v1, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 316
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 317
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "enable"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    sget-object v4, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "notifyEsportsMode"

    aput-object v5, v3, v6

    aput-object v2, v3, v0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sput-boolean p1, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    .line 323
    sget-boolean v3, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v3, :cond_9f

    const-string/jumbo v3, "persist.debug.esport.crash"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_92

    goto :goto_9f

    .line 324
    :cond_92
    const-string v3, "ESportMode"

    const-string v4, "debugging for phone crash"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 329
    :cond_9f
    :goto_9f
    iput v6, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_a1} :catch_a2

    .line 339
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_d7

    .line 330
    :catch_a2
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ESportMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v2, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    .line 333
    iget v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_cc

    .line 334
    const-string v0, "ESportMode"

    const-string v2, "Useless recover for phone esport triggering too many times. Ignore."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 336
    :cond_cc
    iput-boolean p1, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    .line 337
    iget-object v0, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d7
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 201
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected isDocked()Z
    .registers 8

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "isDocked":Z
    const/4 v1, 0x0

    move v2, v1

    .line 225
    .local v2, "dockMinimized":Z
    const/4 v3, 0x1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/ESportMode;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    move v4, v3

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    move v0, v4

    .line 226
    iget-object v4, p0, Lcom/android/server/ESportMode;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move v2, v4

    .line 229
    goto :goto_21

    .line 227
    :catch_19
    move-exception v4

    .line 228
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "ESportMode"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_21
    if-eqz v0, :cond_27

    if-nez v2, :cond_27

    move v1, v3

    nop

    :cond_27
    return v1
.end method

.method public start(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 175
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    .line 178
    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    .line 180
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v1, :cond_1e

    .line 181
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V

    .line 183
    :cond_1e
    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 188
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    .line 191
    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    .line 193
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v1, :cond_1e

    .line 194
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V

    .line 196
    :cond_1e
    return v0
.end method

.method public updateStatus(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 151
    :try_start_0
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ESportMode;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_24
    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "0"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 158
    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    .line 162
    iput p1, p0, Lcom/android/server/ESportMode;->mUser:I

    .line 165
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v0, :cond_48

    .line 166
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    .line 170
    :cond_48
    goto :goto_61

    .line 168
    :catch_49
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ESportMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatus error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    return-void
.end method
