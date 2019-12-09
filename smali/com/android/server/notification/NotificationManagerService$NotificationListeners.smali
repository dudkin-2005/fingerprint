.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListeners"
.end annotation


# static fields
.field static final TAG_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_listeners"


# instance fields
.field private final mLightTrimListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .line 7035
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7036
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 7033
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 7038
    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "x3"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p4, "x4"    # Landroid/service/notification/NotificationStats;
    .param p5, "x5"    # I

    .line 7030
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "x3"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 7030
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 7030
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 7030
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 7030
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic lambda$notifyNotificationChannelChanged$1(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 7
    .param p1, "serviceInfo"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "channel"    # Landroid/app/NotificationChannel;
    .param p5, "modificationType"    # I

    .line 7353
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7354
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 7357
    :cond_b
    return-void
.end method

.method public static synthetic lambda$notifyNotificationChannelGroupChanged$2(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 7
    .param p1, "serviceInfo"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "group"    # Landroid/app/NotificationChannelGroup;
    .param p5, "modificationType"    # I

    .line 7373
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7374
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 7377
    :cond_b
    return-void
.end method

.method public static synthetic lambda$notifyRemovedLocked$0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 7221
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 7222
    return-void
.end method

.method private notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"    # I

    .line 7427
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7429
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 7432
    goto :goto_20

    .line 7430
    :catch_8
    move-exception v1

    .line 7431
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (interruption filter): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7433
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 7417
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7419
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 7422
    goto :goto_20

    .line 7420
    :catch_8
    move-exception v1

    .line 7421
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (listener hints): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7423
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "group"    # Landroid/app/NotificationChannelGroup;
    .param p5, "modificationType"    # I

    .line 7449
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7451
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 7454
    goto :goto_20

    .line 7452
    :catch_8
    move-exception v1

    .line 7453
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (channel group changed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7455
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 10
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 7383
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7384
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v1, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 7386
    .local v1, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_9
    invoke-interface {v0, v1, p3}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 7389
    goto :goto_25

    .line 7387
    :catch_d
    move-exception v2

    .line 7388
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7390
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "notifyAllListeners"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 7120
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7121
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_7

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 7122
    .local v1, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_8
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v2, v3, v0}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 7124
    .local v2, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7125
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v5, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    .line 7126
    .local v5, "sbnVisible":Z
    const/4 v6, 0x0

    if-eqz v1, :cond_33

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v7, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v7

    goto :goto_34

    :cond_33
    move v7, v6

    .line 7128
    .local v7, "oldSbnVisible":Z
    :goto_34
    if-nez v7, :cond_39

    if-nez v5, :cond_39

    .line 7129
    goto :goto_17

    .line 7135
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v8

    const/16 v9, 0x1c

    if-eqz v8, :cond_46

    iget v8, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v8, v9, :cond_46

    .line 7136
    goto :goto_17

    .line 7142
    :cond_46
    if-nez p3, :cond_4d

    iget v8, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v8, v9, :cond_4d

    .line 7143
    goto :goto_17

    .line 7146
    :cond_4d
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    invoke-static {v8, v4}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v8

    .line 7149
    .local v8, "update":Landroid/service/notification/NotificationRankingUpdate;
    if-eqz v7, :cond_6a

    if-nez v5, :cond_6a

    .line 7150
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 7151
    .local v6, "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    invoke-direct {v10, p0, v4, v6, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7158
    goto :goto_17

    .line 7162
    .end local v6    # "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    :cond_6a
    iget v9, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_70

    .line 7163
    goto :goto_72

    :cond_70
    iget v6, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 7164
    .local v6, "targetUserId":I
    :goto_72
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, p2, v10, v6}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 7166
    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 7167
    .local v9, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;

    invoke-direct {v11, p0, v4, v9, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7173
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v5    # "sbnVisible":Z
    .end local v6    # "targetUserId":I
    .end local v7    # "oldSbnVisible":Z
    .end local v8    # "update":Landroid/service/notification/NotificationRankingUpdate;
    .end local v9    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    goto :goto_17

    .line 7174
    :cond_90
    return-void
.end method

.method private notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .line 7408
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7410
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 7413
    goto :goto_20

    .line 7411
    :catch_8
    move-exception v1

    .line 7412
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (ranking update): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7414
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p4, "stats"    # Landroid/service/notification/NotificationStats;
    .param p5, "reason"    # I

    .line 7394
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7395
    return-void

    .line 7397
    :cond_b
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7398
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v1, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 7400
    .local v1, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_14
    invoke-interface {v0, v1, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 7403
    goto :goto_30

    .line 7401
    :catch_18
    move-exception v2

    .line 7402
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7404
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 7055
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;

    .line 7060
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .line 7042
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 7043
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification listener"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 7044
    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 7045
    const-string v1, "enabled_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 7046
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 7047
    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 7048
    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 7049
    const v1, 0x1040423

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 7050
    return-object v0
.end method

.method public getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I
    .registers 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7097
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isListenerPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7458
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 7459
    return v0

    .line 7462
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7463
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7464
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 7465
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 7467
    .end local v3    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2c
    goto :goto_11

    .line 7468
    :cond_2d
    monitor-exit v1

    .line 7469
    return v0

    .line 7468
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public notifyHiddenLocked(Ljava/util/List;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 7291
    .local p1, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 7295
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 7298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7299
    .local v0, "numChangedNotifications":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_2b

    .line 7300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 7301
    .local v2, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 7299
    .end local v2    # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 7303
    .end local v1    # "i":I
    :cond_2b
    return-void

    .line 7292
    .end local v0    # "numChangedNotifications":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method public notifyInterruptionFilterChanged(I)V
    .registers 6
    .param p1, "interruptionFilter"    # I

    .line 7329
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7330
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 7331
    goto :goto_8

    .line 7333
    :cond_1b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7339
    .end local v1    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_8

    .line 7340
    :cond_2a
    return-void
.end method

.method public notifyListenerHintsChangedLocked(I)V
    .registers 6
    .param p1, "hints"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 7269
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7270
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 7271
    goto :goto_8

    .line 7273
    :cond_1b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7279
    .end local v1    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_8

    .line 7280
    :cond_2a
    return-void
.end method

.method notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "channel"    # Landroid/app/NotificationChannel;
    .param p5, "modificationType"    # I

    .line 7438
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7440
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 7443
    goto :goto_20

    .line 7441
    :catch_8
    move-exception v1

    .line 7442
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (channel changed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7444
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method protected notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "modificationType"    # I

    .line 7344
    if-nez p3, :cond_3

    .line 7345
    return-void

    .line 7347
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7348
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 7349
    goto :goto_b

    .line 7352
    :cond_22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7358
    .end local v1    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_b

    .line 7359
    :cond_36
    return-void
.end method

.method protected notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"    # I

    .line 7364
    if-nez p3, :cond_3

    .line 7365
    return-void

    .line 7367
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7368
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 7369
    goto :goto_b

    .line 7372
    :cond_22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$ZpwYxOiDD13VBHvGZVH3p7iGkFI;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$ZpwYxOiDD13VBHvGZVH3p7iGkFI;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7378
    .end local v1    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_b

    .line 7379
    :cond_36
    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 7109
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 7110
    return-void
.end method

.method public notifyRankingUpdateLocked(Ljava/util/List;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 7234
    .local p1, "changedHiddenNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_a

    .line 7235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 7237
    .local v0, "isHiddenRankingUpdate":Z
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7238
    .local v2, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v3

    if-nez v3, :cond_26

    .line 7239
    goto :goto_13

    .line 7242
    :cond_26
    const/4 v3, 0x0

    .line 7243
    .local v3, "notifyThisListener":Z
    if-eqz v0, :cond_4c

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_4c

    .line 7245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7246
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v6, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 7247
    const/4 v3, 0x1

    .line 7248
    goto :goto_4c

    .line 7250
    .end local v5    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_4b
    goto :goto_33

    .line 7253
    :cond_4c
    :goto_4c
    if-nez v3, :cond_50

    if-nez v0, :cond_64

    .line 7254
    :cond_50
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    .line 7257
    .local v4, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7264
    .end local v2    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "notifyThisListener":Z
    .end local v4    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_64
    goto :goto_13

    .line 7265
    :cond_65
    return-void
.end method

.method public notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "reason"    # I
    .param p3, "notificationStats"    # Landroid/service/notification/NotificationStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 7182
    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7187
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    .line 7188
    .local v11, "sbnLight":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7189
    .local v13, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v0, v10, v13}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 7190
    goto :goto_14

    .line 7195
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v0

    const/16 v1, 0x1c

    const/16 v2, 0xe

    if-eqz v0, :cond_3b

    if-eq v9, v2, :cond_3b

    iget v0, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_3b

    .line 7197
    goto :goto_14

    .line 7202
    :cond_3b
    if-ne v9, v2, :cond_42

    iget v0, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_42

    .line 7204
    goto :goto_14

    .line 7208
    :cond_42
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 7209
    move-object/from16 v5, p3

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    move-object v5, v0

    .line 7210
    .local v5, "stats":Landroid/service/notification/NotificationStats;
    :goto_55
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    invoke-static {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v14

    .line 7211
    .local v14, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v15

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v13

    move-object v3, v11

    move-object v4, v14

    move-object/from16 v16, v10

    move-object v10, v6

    move v6, v9

    .end local v10    # "sbn":Landroid/service/notification/StatusBarNotification;
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    invoke-virtual {v15, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7217
    .end local v5    # "stats":Landroid/service/notification/NotificationStats;
    .end local v13    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v14    # "update":Landroid/service/notification/NotificationRankingUpdate;
    nop

    .line 7188
    move-object/from16 v10, v16

    goto :goto_14

    .line 7220
    .end local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v10    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_76
    move-object/from16 v16, v10

    .end local v10    # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v16    # "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;

    invoke-direct {v1, v7, v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7223
    return-void
.end method

.method public notifyUnhiddenLocked(Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 7314
    .local p1, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 7318
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 7321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7322
    .local v0, "numChangedNotifications":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_26

    .line 7323
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 7324
    .local v3, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    invoke-direct {v4, v3, v3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 7322
    .end local v3    # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 7326
    .end local v2    # "i":I
    :cond_26
    return-void

    .line 7315
    .end local v0    # "numChangedNotifications":I
    :cond_27
    :goto_27
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7065
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 7067
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7068
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    invoke-static {v2, p1}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v2

    .line 7069
    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_16

    .line 7071
    :try_start_10
    invoke-interface {v0, v2}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 7074
    goto :goto_15

    .line 7072
    :catch_14
    move-exception v1

    .line 7075
    :goto_15
    return-void

    .line 7069
    .end local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 7080
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$9400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7081
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7082
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7084
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7085
    return-void
.end method

.method public setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "trim"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 7089
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 7090
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 7092
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7094
    :goto_e
    return-void
.end method
