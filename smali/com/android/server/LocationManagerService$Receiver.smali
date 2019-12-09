.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mIdentity:Lcom/android/server/LocationManagerService$Identity;

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .registers 11
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .line 874
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 875
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    .line 876
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    .line 877
    if-eqz p2, :cond_19

    .line 878
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    goto :goto_1b

    .line 880
    :cond_19
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    .line 882
    :goto_1b
    # invokes: Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 883
    new-instance v0, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {v0, p5, p4, p6}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    .line 884
    if-eqz p7, :cond_31

    invoke-virtual {p7}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 885
    const/4 p7, 0x0

    .line 887
    :cond_31
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 888
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    .line 890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 893
    # getter for: Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    move-result-object p1

    const-string v1, "*location*"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 894
    if-nez p7, :cond_55

    .line 895
    new-instance p1, Landroid/os/WorkSource;

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v0, v0, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    move-object p7, p1

    .line 897
    :cond_55
    iget-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 898
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$Receiver;

    .line 854
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    return-void
.end method

.method private decrementPendingBroadcastsLocked()V
    .registers 2

    .line 1164
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_15

    .line 1165
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1166
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1169
    :cond_15
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .registers 3

    .line 1158
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-nez v0, :cond_d

    .line 1159
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1161
    :cond_d
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .registers 8
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    .line 988
    const/4 v0, 0x0

    if-nez p2, :cond_1c

    .line 989
    if-eqz p1, :cond_33

    .line 990
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v0, 0x1

    nop

    :cond_1b
    return v0

    .line 994
    :cond_1c
    if-eqz p1, :cond_34

    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 995
    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_34

    .line 1002
    :cond_33
    return p2

    .line 997
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v2, v2, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 998
    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1137
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "LocationManagerService"

    const-string v1, "Location listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1140
    :try_start_12
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v1, p0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1141
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_21

    .line 1142
    monitor-enter p0

    .line 1143
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1144
    monitor-exit p0

    .line 1145
    return-void

    .line 1144
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0

    .line 1141
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .registers 12
    .param p1, "location"    # Landroid/location/Location;

    .line 1057
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 1059
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_18

    .line 1062
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-interface {v0, v2}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 1065
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1066
    monitor-exit p0

    .line 1069
    goto :goto_51

    .line 1066
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    :try_start_17
    throw v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_18} :catch_18

    .line 1067
    :catch_18
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1071
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1072
    .local v0, "locationChanged":Landroid/content/Intent;
    const-string/jumbo v2, "location"

    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1075
    :try_start_2a
    monitor-enter p0
    :try_end_2b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2a .. :try_end_2b} :catch_56

    .line 1078
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1079
    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1080
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1078
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1083
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1084
    monitor-exit p0

    .line 1087
    nop

    .line 1089
    .end local v0    # "locationChanged":Landroid/content/Intent;
    :goto_51
    const/4 v0, 0x1

    return v0

    .line 1084
    .restart local v0    # "locationChanged":Landroid/content/Intent;
    :catchall_53
    move-exception v2

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_2b .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_55 .. :try_end_56} :catch_56

    .line 1085
    :catch_56
    move-exception v2

    .line 1086
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1095
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 1097
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 1099
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_a} :catch_20

    .line 1102
    if-eqz p2, :cond_14

    .line 1103
    :try_start_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_19

    .line 1110
    :catchall_12
    move-exception v0

    goto :goto_1e

    .line 1105
    :cond_14
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v1, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 1109
    :goto_19
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1110
    monitor-exit p0

    .line 1113
    goto :goto_54

    .line 1110
    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_12

    :try_start_1f
    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_20

    .line 1111
    :catch_20
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 1115
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1116
    .local v1, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v3, "providerEnabled"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    :try_start_2d
    monitor-enter p0
    :try_end_2e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_2e} :catch_58

    .line 1121
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1122
    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    .line 1123
    invoke-static {v6}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1121
    move-object v6, v1

    move-object v7, p0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1126
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1127
    monitor-exit p0

    .line 1130
    nop

    .line 1132
    .end local v1    # "providerIntent":Landroid/content/Intent;
    :goto_54
    return v0

    .line 1127
    .restart local v1    # "providerIntent":Landroid/content/Intent;
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_55

    :try_start_57
    throw v0
    :try_end_58
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_57 .. :try_end_58} :catch_58

    .line 1128
    :catch_58
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    return v2
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1021
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 1023
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_6} :catch_13

    .line 1026
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1029
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1030
    monitor-exit p0

    .line 1033
    goto :goto_4f

    .line 1030
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_13} :catch_13

    .line 1031
    :catch_13
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 1035
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1036
    .local v0, "statusChanged":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1037
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    :try_start_28
    monitor-enter p0
    :try_end_29
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_28 .. :try_end_29} :catch_54

    .line 1042
    :try_start_29
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget v6, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 1043
    # invokes: Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    .line 1044
    invoke-static {v5}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1042
    move-object v5, v0

    move-object v6, p0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V

    .line 1048
    monitor-exit p0

    .line 1051
    nop

    .line 1053
    .end local v0    # "statusChanged":Landroid/content/Intent;
    :goto_4f
    const/4 v0, 0x1

    return v0

    .line 1048
    .restart local v0    # "statusChanged":Landroid/content/Intent;
    :catchall_51
    move-exception v2

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_51

    :try_start_53
    throw v2
    :try_end_54
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_53 .. :try_end_54} :catch_54

    .line 1049
    :catch_54
    move-exception v2

    .line 1050
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    return v1
.end method

.method public clearPendingBroadcastsLocked()V
    .registers 2

    .line 1172
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    if-lez v0, :cond_14

    .line 1173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1174
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1175
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1178
    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 902
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .registers 3

    .line 1014
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_7

    .line 1015
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    return-object v0

    .line 1017
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for non-existent listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isListener()Z
    .registers 2

    .line 1006
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isPendingIntent()Z
    .registers 2

    .line 1010
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 1150
    monitor-enter p0

    .line 1151
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    .line 1152
    monitor-exit p0

    .line 1153
    return-void

    .line 1152
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Reciever["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1f

    .line 916
    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 918
    :cond_1f
    const-string v1, " intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :goto_24
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 921
    .local v2, "p":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .end local v2    # "p":Ljava/lang/String;
    goto :goto_2e

    .line 923
    :cond_4f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateMonitoring(Z)V
    .registers 12
    .param p1, "allow"    # Z

    .line 933
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    if-eqz v0, :cond_5

    .line 934
    return-void

    .line 937
    :cond_5
    const/4 v0, 0x0

    .line 938
    .local v0, "requestingLocation":Z
    const/4 v1, 0x0

    .line 939
    .local v1, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_57

    .line 942
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 943
    .local v3, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    # invokes: Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 944
    const/4 v0, 0x1

    .line 945
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    .line 946
    # getter for: Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 947
    .local v4, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v4, :cond_3f

    .line 948
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 949
    .local v5, "properties":Lcom/android/internal/location/ProviderProperties;
    :goto_40
    if-eqz v5, :cond_56

    iget v6, v5, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_56

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 951
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-gez v6, :cond_56

    .line 952
    const/4 v1, 0x1

    .line 953
    goto :goto_57

    .line 956
    .end local v3    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_56
    goto :goto_13

    .line 960
    :cond_57
    :goto_57
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    const/16 v3, 0x29

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    .line 966
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 967
    .local v2, "wasHighPowerMonitoring":Z
    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    const/16 v4, 0x2a

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    .line 971
    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    if-eq v3, v2, :cond_83

    .line 973
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 976
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_83
    return-void
.end method
