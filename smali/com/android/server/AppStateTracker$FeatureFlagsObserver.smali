.class Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    .line 201
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 202
    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTracker;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 224
    const-string p1, "forced_app_standby_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p2, p2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-ne p2, p1, :cond_0

    .line 228
    monitor-exit v0

    return-void

    .line 230
    :cond_0
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean p1, p2, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    .line 237
    goto :goto_0

    .line 235
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 237
    :cond_1
    const-string p1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result p1

    .line 240
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p2}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_2
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean p2, p2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-ne p2, p1, :cond_2

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_2
    iget-object p2, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    iput-boolean p1, p2, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 249
    iget-object p1, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$300(Lcom/android/server/AppStateTracker;)V

    .line 250
    monitor-exit v0

    .line 251
    goto :goto_0

    .line 250
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 252
    :cond_3
    const-string p1, "AppStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected feature flag uri encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void
.end method

.method register()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_enabled"

    .line 206
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    return-void
.end method
