.class Lcom/android/server/DeviceIdleController$10;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceIdleController;->ifReportLocked(IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field final synthetic val$levelDrop:I

.field final synthetic val$mA:F


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;IF)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 3039
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    iput p2, p0, Lcom/android/server/DeviceIdleController$10;->val$levelDrop:I

    iput p3, p0, Lcom/android/server/DeviceIdleController$10;->val$mA:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 3042
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3800(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 3043
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z
    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$3802(Lcom/android/server/DeviceIdleController;Z)Z

    .line 3044
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-nez v0, :cond_1a

    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_1a
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] start to diagnose, now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_34
    :try_start_34
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 3047
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    iget v4, p0, Lcom/android/server/DeviceIdleController$10;->val$levelDrop:I

    iget v5, p0, Lcom/android/server/DeviceIdleController$10;->val$mA:F

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)F

    move-result v6

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v7

    goto :goto_61

    :cond_5b
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v7

    :goto_61
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$10;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    .line 3049
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_75} :catch_76

    .line 3054
    :cond_75
    goto :goto_91

    .line 3051
    :catch_76
    move-exception v0

    .line 3052
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3053
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got exception while snapshot of end:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_91
    :goto_91
    return-void
.end method
