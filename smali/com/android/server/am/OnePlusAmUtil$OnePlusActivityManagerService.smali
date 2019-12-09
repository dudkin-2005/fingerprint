.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityManagerService"
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mNetBoostFeature:Z

.field private mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

.field private mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

.field private mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 70
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 71
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    .line 79
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 80
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 82
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    .line 84
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 85
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 88
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5020017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x42

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 59
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 307
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 311
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 313
    .local v1, "start":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 315
    goto :goto_13

    .line 317
    :cond_28
    if-nez v1, :cond_2f

    .line 318
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const/4 v1, 0x0

    .line 322
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_13

    .line 323
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 308
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "start":Z
    :cond_39
    :goto_39
    const-string v0, ""

    return-object v0
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    const-string v0, "enabled_notification_listeners"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 331
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_25

    .line 332
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "allowed":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 334
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 335
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v5    # "s":Ljava/lang/String;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 339
    .end local v2    # "allowed":[Ljava/lang/String;
    :cond_25
    return-object v1
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 9
    .param p1, "flatComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 290
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 293
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "flatSettings":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 298
    .local v3, "ident":J
    :try_start_15
    const-string v5, "enabled_notification_listeners"

    invoke-static {v0, v5, v2, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 302
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_1f
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isUserSetupCompleted(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 285
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    move v2, v3

    nop

    :cond_13
    return v2
.end method

.method private notifyOIMCAMSReady()V
    .registers 4

    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 398
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 399
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_1b

    .line 400
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->notifyOIMCAMSReady()V

    .line 403
    .end local v0    # "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    :cond_1b
    return-void
.end method

.method private updateOIMCOnlineConfig()V
    .registers 4

    .line 386
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 388
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 389
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_1b

    .line 390
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->updateOnlineConfig()V

    .line 393
    .end local v0    # "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    :cond_1b
    return-void
.end method


# virtual methods
.method public appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "thread"    # Landroid/app/IApplicationThread;
    .param p4, "fromBinderDied"    # Z

    .line 167
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 173
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    .line 175
    :cond_1c
    return-void
.end method

.method public finishBooting()V
    .registers 4

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 183
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->startMonitor()V

    .line 186
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceUpdateOnlineConfig()V

    .line 192
    :cond_18
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 202
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getInstance()Lcom/android/server/am/OnePlusJankManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusJankManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getInstance()Lcom/android/server/am/OnePlusJankManager;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusJankManager;->getUidForTraceur()I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->backgroundWhitelistUid(I)V

    .line 207
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->updateOIMCOnlineConfig()V

    .line 208
    return-void
.end method

.method public getOHPD()Lcom/android/server/am/OnePlusHighPowerDetector;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object v0
.end method

.method public ifOHPDInited()Z
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isRequestPermission(Z)V
    .registers 6
    .param p1, "request"    # Z

    .line 265
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRequestPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 267
    const-string v0, "ActivityManager"

    const-string v1, "Only applications are allowed to call isRequestPermission!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 270
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 272
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_54

    .line 273
    :try_start_34
    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 274
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_48

    .line 275
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->permRequestInc()V

    goto :goto_4b

    .line 277
    :cond_48
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->permRequestDec()V

    .line 279
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_51

    .line 280
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 281
    return-void

    .line 279
    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v2

    .line 280
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$1;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    return-void
.end method

.method public sendApplicationStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopReason"    # I

    .line 361
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public sendApplicationStopByForceStop(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingPid"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public shutdown(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 258
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 259
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_d

    .line 260
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->shutdown()V

    .line 262
    :cond_d
    return-void
.end method

.method public switchUser(IZ)V
    .registers 7
    .param p1, "targetUserId"    # I
    .param p2, "result"    # Z

    .line 239
    if-eqz p2, :cond_4f

    .line 242
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isUserSetupCompleted(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 243
    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.launcher.notification.NotificationListener"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    .line 245
    sget-boolean v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2e

    .line 246
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "grant notification policy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    .line 251
    :cond_2e
    goto :goto_4f

    .line 248
    :catch_2f
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "grant notification policy for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4f
    :goto_4f
    return-void
.end method

.method public systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V
    .registers 12
    .param p1, "goingCallback"    # Ljava/lang/Runnable;
    .param p2, "traceLog"    # Landroid/util/TimingsTraceLog;

    .line 97
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_10

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 103
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "persist.sys.launcher.set"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 104
    .local v1, "hasSet":Z
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_27

    if-nez v1, :cond_6c

    .line 106
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_31
    if-ge v4, v3, :cond_63

    aget v5, v2, v4

    .line 107
    .local v5, "userId":I
    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_3a

    .line 108
    goto :goto_60

    .line 110
    :cond_3a
    const-string/jumbo v6, "net.oneplus.launcher/net.oneplus.launcher.notification.NotificationListener"

    invoke-direct {p0, v6, v5}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    .line 112
    sget-boolean v6, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_60

    .line 113
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "grant notification policy for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " done "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v5    # "userId":I
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 115
    :cond_63
    const-string/jumbo v2, "persist.sys.launcher.set"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6c} :catch_6d

    .line 120
    .end local v1    # "hasSet":Z
    :cond_6c
    goto :goto_79

    .line 117
    :catch_6d
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string/jumbo v3, "grant notification policy for user 0 fail "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_79
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 131
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x5c

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 133
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 137
    :cond_9f
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_b3

    .line 138
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 139
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 143
    :cond_b3
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v0, :cond_bc

    .line 144
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;

    .line 152
    :cond_bc
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->notifyOIMCAMSReady()V

    .line 155
    invoke-static {}, Lcom/oneplus/oiface/OifaceManager;->getInstance()Lcom/oneplus/oiface/OifaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/oiface/OifaceManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/android/server/am/OnePlusTemperatureMonitor;->getInstance()Lcom/android/server/am/OnePlusTemperatureMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->initEnv(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 162
    return-void
.end method
