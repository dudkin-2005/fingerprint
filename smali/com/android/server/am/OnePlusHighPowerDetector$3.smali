.class Lcom/android/server/am/OnePlusHighPowerDetector$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 736
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatus"    # Landroid/content/Intent;

    .line 739
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 740
    return-void

    .line 742
    :cond_f
    const-string/jumbo v1, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 743
    .local v1, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 744
    .local v3, "scale":I
    if-nez v3, :cond_28

    .line 745
    const-string v0, "OHPD"

    const-string v2, "[BgDetect] batt scale is 0"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 748
    :cond_28
    mul-int/lit8 v4, v1, 0x64

    div-int/2addr v4, v3

    .line 749
    .local v4, "batteryPct":I
    const/16 v5, 0x64

    if-gt v4, v5, :cond_d1

    if-gez v4, :cond_33

    goto/16 :goto_d1

    .line 752
    :cond_33
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 754
    :try_start_36
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v6, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    if-lez v6, :cond_c8

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v6, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    sub-int/2addr v6, v4

    if-lt v6, v0, :cond_c8

    .line 755
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 756
    .local v6, "now":J
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_c4

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    sub-long v8, v6, v8

    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v10, v10, v2

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_c4

    .line 757
    const-string v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect] batt level ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") within "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    sub-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean v0, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    .line 760
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-boolean v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-nez v8, :cond_c4

    .line 761
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    .line 762
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean v0, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 763
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-boolean v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    .line 764
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 765
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect] Native monitoring start, reset the counter, level = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_c4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-wide v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    .line 770
    .end local v6    # "now":J
    :cond_c8
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    .line 771
    monitor-exit v5

    .line 772
    return-void

    .line 771
    :catchall_ce
    move-exception v0

    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_36 .. :try_end_d0} :catchall_ce

    throw v0

    .line 750
    :cond_d1
    :goto_d1
    return-void
.end method
