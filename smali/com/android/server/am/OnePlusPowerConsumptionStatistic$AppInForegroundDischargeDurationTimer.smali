.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInForegroundDischargeDurationTimer"
.end annotation


# instance fields
.field isTiming:Z

.field lock:Ljava/lang/Object;

.field statsForPause:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field statsForStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 3077
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3078
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    .line 3079
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    .line 3080
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    .line 3081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 3077
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->getCumulativeTime()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 3077
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->startTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 3077
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->pauseTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 3077
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->resetTime()V

    return-void
.end method

.method private getCumulativeTime()Ljava/util/HashMap;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3182
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 3183
    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    if-eqz v0, :cond_e2

    .line 3184
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v0

    .line 3185
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3186
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3187
    .local v3, "currentTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3188
    .local v5, "stats_t":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    iget-object v6, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;
    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v6

    const-wide/32 v7, 0x5265c00

    sub-long v7, v3, v7

    .line 3189
    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v6

    .line 3191
    .local v6, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    if-eqz v6, :cond_32

    .line 3192
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3195
    :cond_32
    const-wide/16 v7, 0x0

    .line 3196
    .local v7, "foregroundTime_t":J
    const-wide/16 v9, 0x0

    .line 3197
    .local v9, "foregroundTime_start":J
    const-wide/16 v11, 0x0

    .line 3198
    .local v11, "cumulativeTime":J
    const-wide/16 v13, 0x0

    .line 3199
    .local v13, "foregroundTime":J
    const/4 v15, 0x0

    .line 3200
    .local v15, "us_start":Landroid/app/usage/UsageStats;
    move-wide/from16 v16, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .end local v3    # "currentTime":J
    .local v16, "currentTime":J
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3201
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/usage/UsageStats;

    move-object/from16 v19, v18

    .line 3202
    .local v19, "us_t":Landroid/app/usage/UsageStats;
    move-object/from16 v20, v3

    move-object/from16 v3, v19

    if-eqz v3, :cond_d7

    .line 3203
    .end local v19    # "us_t":Landroid/app/usage/UsageStats;
    .local v3, "us_t":Landroid/app/usage/UsageStats;
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 3204
    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    .end local v3    # "us_t":Landroid/app/usage/UsageStats;
    .local v21, "us_t":Landroid/app/usage/UsageStats;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 3205
    .end local v15    # "us_start":Landroid/app/usage/UsageStats;
    .local v3, "us_start":Landroid/app/usage/UsageStats;
    const-wide/16 v9, 0x0

    .line 3206
    if-eqz v3, :cond_7a

    .line 3207
    nop

    .line 3208
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 3210
    :cond_7a
    const-wide/16 v11, 0x0

    .line 3211
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_8e

    .line 3212
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 3215
    :cond_8e
    add-long v18, v11, v7

    sub-long v13, v18, v9

    .line 3217
    const-wide/16 v18, 0x0

    cmp-long v15, v13, v18

    if-lez v15, :cond_9f

    .line 3218
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    :cond_9f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime pkg:"

    .end local v3    # "us_start":Landroid/app/usage/UsageStats;
    .local v22, "us_start":Landroid/app/usage/UsageStats;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime_start:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime_t:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeTime:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3230
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v21    # "us_t":Landroid/app/usage/UsageStats;
    move-object/from16 v15, v22

    .line 3200
    .end local v22    # "us_start":Landroid/app/usage/UsageStats;
    .restart local v15    # "us_start":Landroid/app/usage/UsageStats;
    :cond_d7
    move-object/from16 v3, v20

    goto/16 :goto_45

    .line 3232
    :cond_db
    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: true"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3233
    monitor-exit v2

    return-object v0

    .line 3235
    .end local v0    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "stats_t":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v7    # "foregroundTime_t":J
    .end local v9    # "foregroundTime_start":J
    .end local v11    # "cumulativeTime":J
    .end local v13    # "foregroundTime":J
    .end local v15    # "us_start":Landroid/app/usage/UsageStats;
    .end local v16    # "currentTime":J
    :cond_e2
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v0

    .line 3236
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 3237
    .restart local v0    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: false"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3238
    monitor-exit v2

    return-object v0

    .line 3240
    .end local v0    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_f5
    move-exception v0

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_5 .. :try_end_f7} :catchall_f5

    throw v0
.end method

.method private pauseTiming()Z
    .registers 22

    .line 3117
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 3118
    :try_start_5
    iget-boolean v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    const/4 v3, 0x0

    if-nez v0, :cond_c

    .line 3119
    monitor-exit v2

    return v3

    .line 3121
    :cond_c
    iput-boolean v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    .line 3123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3124
    .local v3, "currentTime":J
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v0

    const-wide/32 v5, 0x5265c00

    sub-long v5, v3, v5

    .line 3125
    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    .line 3127
    .local v0, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    if-nez v5, :cond_2c

    .line 3128
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    .line 3131
    :cond_2c
    if-eqz v0, :cond_37

    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    if-eqz v5, :cond_37

    .line 3132
    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3135
    :cond_37
    const-wide/16 v5, 0x0

    .line 3136
    .local v5, "foregroundTime_pause":J
    const-wide/16 v7, 0x0

    .line 3137
    .local v7, "foregroundTime_start":J
    const-wide/16 v9, 0x0

    .line 3138
    .local v9, "cumulativeTime":J
    const-wide/16 v11, 0x0

    .line 3139
    .local v11, "foregroundTime":J
    const/4 v13, 0x0

    .line 3140
    .local v13, "us_start":Landroid/app/usage/UsageStats;
    iget-object v14, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3141
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    .end local v0    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .local v16, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 3142
    .local v0, "us_pause":Landroid/app/usage/UsageStats;
    if-eqz v0, :cond_f0

    .line 3143
    nop

    .line 3144
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v17

    move-wide/from16 v5, v17

    .line 3145
    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    .end local v0    # "us_pause":Landroid/app/usage/UsageStats;
    .local v19, "us_pause":Landroid/app/usage/UsageStats;
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 3146
    .end local v13    # "us_start":Landroid/app/usage/UsageStats;
    .local v0, "us_start":Landroid/app/usage/UsageStats;
    const-wide/16 v7, 0x0

    .line 3147
    if-eqz v0, :cond_7e

    .line 3148
    nop

    .line 3149
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v17

    move-wide/from16 v7, v17

    .line 3151
    :cond_7e
    const-wide/16 v9, 0x0

    .line 3152
    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9e

    .line 3153
    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    .line 3154
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v9, v17

    .line 3157
    :cond_9e
    add-long v17, v9, v5

    sub-long v11, v17, v7

    .line 3159
    const-wide/16 v17, 0x0

    cmp-long v13, v11, v17

    if-lez v13, :cond_b8

    .line 3160
    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v20, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0    # "us_start":Landroid/app/usage/UsageStats;
    .local v20, "us_start":Landroid/app/usage/UsageStats;
    invoke-virtual {v13, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 3162
    .end local v20    # "us_start":Landroid/app/usage/UsageStats;
    .restart local v0    # "us_start":Landroid/app/usage/UsageStats;
    :cond_b8
    move-object/from16 v20, v0

    .end local v0    # "us_start":Landroid/app/usage/UsageStats;
    .restart local v20    # "us_start":Landroid/app/usage/UsageStats;
    :goto_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppInForegroundDischargeDurationTimer pauseTiming pkg:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime_start:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime_pause:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |cumulativeTime:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3172
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v19    # "us_pause":Landroid/app/usage/UsageStats;
    move-object/from16 v13, v20

    .line 3140
    .end local v20    # "us_start":Landroid/app/usage/UsageStats;
    .restart local v13    # "us_start":Landroid/app/usage/UsageStats;
    :cond_f0
    move-object/from16 v0, v16

    goto/16 :goto_4a

    .line 3174
    .end local v16    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .local v0, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_f4
    move-object/from16 v16, v0

    .end local v0    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v16    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AppInForegroundDischargeDurationTimer pauseTiming currentTime:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3176
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 3177
    .end local v3    # "currentTime":J
    .end local v5    # "foregroundTime_pause":J
    .end local v7    # "foregroundTime_start":J
    .end local v9    # "cumulativeTime":J
    .end local v11    # "foregroundTime":J
    .end local v13    # "us_start":Landroid/app/usage/UsageStats;
    .end local v16    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :catchall_10d
    move-exception v0

    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_5 .. :try_end_10f} :catchall_10d

    throw v0
.end method

.method private resetTime()V
    .registers 3

    .line 3084
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3085
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    .line 3086
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    .line 3087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    .line 3088
    const-string v1, "AppInForegroundDischargeDurationTimer resetTime"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3089
    monitor-exit v0

    .line 3090
    return-void

    .line 3089
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private startTiming()Z
    .registers 8

    .line 3093
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3094
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    if-eqz v1, :cond_a

    .line 3095
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3097
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    .line 3099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3100
    .local v2, "currentTime":J
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;
    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v2, v5

    .line 3101
    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    .line 3103
    .local v4, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    if-nez v5, :cond_2b

    .line 3104
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    .line 3107
    :cond_2b
    if-eqz v4, :cond_36

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    if-eqz v5, :cond_36

    .line 3108
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3110
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppInForegroundDischargeDurationTimer startTiming currentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3112
    monitor-exit v0

    return v1

    .line 3113
    .end local v2    # "currentTime":J
    .end local v4    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method
