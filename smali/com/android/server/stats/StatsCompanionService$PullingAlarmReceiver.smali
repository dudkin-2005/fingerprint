.class public final Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PullingAlarmReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 397
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 398
    :try_start_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object p2

    if-nez p2, :cond_0

    .line 399
    const-string p2, "StatsCompanionService"

    const-string v0, "Could not access statsd to inform it of pulling alarm firing."

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 404
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IStatsManager;->informPollAlarmFired()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception p2

    .line 406
    :try_start_2
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to inform statsd of pulling alarm firing."

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_0
    monitor-exit p1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
