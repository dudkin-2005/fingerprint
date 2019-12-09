.class Lcom/android/server/stats/StatsCompanionService$1;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/StatsCompanionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 177
    :try_start_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$300()Landroid/os/IStatsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;

    .line 178
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    const-string p1, "StatsCompanionService"

    const-string v0, "Could not access statsd for UserUpdateReceiver"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v0, p1}, Lcom/android/server/stats/StatsCompanionService;->access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    goto :goto_0

    .line 186
    :catch_0
    move-exception p1

    .line 187
    :try_start_2
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to inform statsd latest update of all apps"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {p1}, Lcom/android/server/stats/StatsCompanionService;->access$500(Lcom/android/server/stats/StatsCompanionService;)V

    .line 190
    :goto_0
    monitor-exit p2

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
