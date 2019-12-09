.class Lcom/android/server/AlarmManagerService$Alignment;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;,
        Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;
    }
.end annotation


# static fields
.field static final ALIGNMENT_DEBOUNCE:I = 0xbb8

.field private static final ALIGNMENT_WINDOW:J = 0x493e0L

.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final INDEX_FIRST:I = 0x0

.field private static final INDEX_SECOND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "AlarmManager_ALIGNMENT"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "AlarmManagement"


# instance fields
.field private mAlarmBlacklist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmSpecialList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlarmWhitelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlignmentActive:Z

.field private mAlignmentActiveOverride:Z

.field private mAlignmentEnabled:Z

.field private mAlignmentEnabledOverride:Z

.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnlineConfigEnabled:Z

.field private mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

.field private mWindowLength:J

.field private mWindowLengthOverride:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "configHandler"    # Landroid/os/Handler;

    .line 270
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 246
    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    .line 253
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    .line 274
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    .line 275
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;-><init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mScreenStateReceiver:Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;

    .line 278
    return-void
.end method

.method static synthetic access$202(Lcom/android/server/AlarmManagerService$Alignment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alignment;
    .param p1, "x1"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alignment;

    .line 229
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public activeOverride(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 319
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    .line 320
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method calculateAlignedTime(J)J
    .registers 9
    .param p1, "when"    # J

    .line 459
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 460
    .local v0, "denominator":J
    :goto_d
    rem-long v4, p1, v0

    .line 461
    .local v4, "remainder":J
    cmp-long v2, v4, v2

    if-lez v2, :cond_16

    .line 462
    sub-long v2, v0, v4

    add-long/2addr p1, v2

    .line 464
    :cond_16
    return-wide p1
.end method

.method checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 352
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 353
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 354
    return v1

    .line 356
    :cond_a
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1a

    const-string v2, "black_action"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 357
    return v3

    .line 359
    :cond_1a
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 360
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 361
    return v3

    .line 363
    .end local v4    # "s":Ljava/lang/String;
    :cond_31
    goto :goto_1e

    .line 364
    :cond_32
    return v1
.end method

.method convertToAligned(Lcom/android/server/AlarmManagerService$Alarm;Z)J
    .registers 20
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "needRestore"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 374
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 377
    .local v3, "type":I
    if-eqz p2, :cond_b

    .line 378
    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .local v4, "when":J
    goto :goto_d

    .line 380
    .end local v4    # "when":J
    :cond_b
    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 383
    .restart local v4    # "when":J
    :goto_d
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    if-nez v0, :cond_16

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    if-nez v0, :cond_16

    .line 384
    return-wide v4

    .line 388
    :cond_16
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v0, :cond_1f

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    if-nez v0, :cond_1f

    .line 389
    return-wide v4

    .line 394
    :cond_1f
    const/4 v6, 0x0

    .line 395
    .local v6, "specialAlarm":Z
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_27

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_3a

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<listener>:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    move-object v7, v0

    .line 396
    .local v7, "tag":Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    add-int/2addr v0, v9

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, "action":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v11

    .line 398
    :try_start_59
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v12}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 399
    const/4 v0, 0x1

    .line 401
    .end local v6    # "specialAlarm":Z
    .local v0, "specialAlarm":Z
    move v6, v0

    .end local v0    # "specialAlarm":Z
    .restart local v6    # "specialAlarm":Z
    :cond_65
    monitor-exit v11
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_f3

    .line 406
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v0

    iget v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-virtual {v0, v11}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v12

    .line 408
    .local v12, "deviceIdleWhitelist":Z
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v11, 0x2710

    if-lt v0, v11, :cond_7e

    if-eqz v12, :cond_81

    :cond_7e
    if-nez v6, :cond_81

    .line 410
    return-wide v4

    .line 414
    :cond_81
    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v13

    .line 415
    :try_start_84
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v11}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 416
    monitor-exit v13

    return-wide v4

    .line 418
    :cond_90
    monitor-exit v13
    :try_end_91
    .catchall {:try_start_84 .. :try_end_91} :catchall_f0

    .line 421
    iget-wide v13, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_9e

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_bc

    .line 423
    :cond_9e
    iget-object v11, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v11

    .line 424
    if-nez v6, :cond_bb

    :try_start_a3
    const-string v0, "black_action"

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v13}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_bb

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0, v13}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 425
    monitor-exit v11

    return-wide v4

    .line 427
    :catchall_b9
    move-exception v0

    goto :goto_ee

    :cond_bb
    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_a3 .. :try_end_bc} :catchall_b9

    .line 430
    :cond_bc
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v0, :cond_c5

    .line 431
    const-string v0, "Before alignment: "

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 435
    :cond_c5
    if-eq v3, v9, :cond_cb

    if-nez v3, :cond_ca

    goto :goto_cb

    :cond_ca
    goto :goto_cc

    :cond_cb
    :goto_cb
    move v8, v9

    :goto_cc
    move v0, v8

    .line 437
    .local v0, "isRtc":Z
    if-eqz v0, :cond_d4

    .line 438
    invoke-virtual {v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v8

    .local v8, "alignWhen":J
    goto :goto_e4

    .line 440
    .end local v8    # "alignWhen":J
    :cond_d4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v8, v13

    .line 441
    .local v8, "bootTime":J
    add-long/2addr v4, v8

    .line 442
    invoke-virtual {v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->calculateAlignedTime(J)J

    move-result-wide v13

    .line 443
    .local v13, "alignWhen":J
    sub-long v8, v13, v8

    .line 446
    .end local v13    # "alignWhen":J
    .local v8, "alignWhen":J
    :goto_e4
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_ed

    .line 447
    const-string v11, "After alignment: "

    invoke-virtual {v1, v2, v11, v8, v9}, Lcom/android/server/AlarmManagerService$Alignment;->dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V

    .line 450
    :cond_ed
    return-wide v8

    .line 427
    .end local v0    # "isRtc":Z
    .end local v8    # "alignWhen":J
    :goto_ee
    :try_start_ee
    monitor-exit v11
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_b9

    throw v0

    .line 418
    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit v13
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0

    .line 401
    .end local v12    # "deviceIdleWhitelist":Z
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v11
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 524
    const-string v0, "  Alarm Alignment Information:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v0, "    ALIGNMENT_DEBOUNCE = 3000"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ALIGNMENT_WINDOW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    goto :goto_21

    :cond_1f
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    :goto_21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_42

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    if-eqz v1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v3

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v2

    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAlignmentActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActive:Z

    if-nez v1, :cond_62

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    if-eqz v1, :cond_60

    goto :goto_62

    :cond_60
    move v2, v3

    nop

    :cond_62
    :goto_62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    OnlineConfigEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const-string v0, "    mAlarmBlacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 531
    const-string v0, "    mAlarmWhitelist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 532
    const-string v0, "    mAlarmSpecialList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 533
    return-void
.end method

.method dumpAlarmInfo(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;J)V
    .registers 15
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "when"    # J

    .line 503
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 504
    .local v0, "type":I
    move-wide v1, p3

    .line 506
    .local v1, "setWhen":J
    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v3, 0x0

    nop

    .line 508
    .local v3, "isRtc":Z
    :cond_b
    :goto_b
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_12

    .line 509
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_25

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<listener>:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "tag":Ljava/lang/String;
    :goto_25
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 513
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    if-nez v3, :cond_3a

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v6, v8

    .line 517
    :cond_3a
    const-string v6, "AlarmManager_ALIGNMENT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " when="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_64

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    goto :goto_67

    :cond_64
    const-string/jumbo v8, "null"

    :goto_67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 519
    # invokes: Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$100(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", window="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V
    .registers 12
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 473
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 474
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 475
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "package="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v4, " | actions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 480
    .local v4, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    .line 481
    .local v5, "i":I
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 482
    .local v7, "action":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    .line 483
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    if-lez v5, :cond_55

    .line 485
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .end local v7    # "action":Ljava/lang/String;
    :cond_55
    goto :goto_3d

    .line 489
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "i":I
    :cond_56
    goto :goto_f

    .line 490
    :cond_57
    if-eqz p2, :cond_61

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6a

    .line 493
    :cond_61
    const-string v1, "AlarmManager_ALIGNMENT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_6a
    return-void
.end method

.method public enabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 309
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    return v0
.end method

.method public enabledOverride(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabledOverride:Z

    .line 331
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentActiveOverride:Z

    return v0
.end method

.method grabOnlineConfig()V
    .registers 4

    .line 551
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    const-string v2, "AlarmManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$Alignment;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 553
    return-void
.end method

.method public isDeepSleepBlock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 282
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    goto :goto_1a

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<listener>:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "tag":Ljava/lang/String;
    :goto_1a
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "action":Ljava/lang/String;
    const-string v4, "black_action"

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_53

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_53

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_53
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/AlarmManagerService$Alignment;->checkActionMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_5f

    move v2, v3

    nop

    :cond_5f
    return v2
.end method

.method registerOnlineConfig()V
    .registers 6

    .line 545
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;-><init>(Lcom/android/server/AlarmManagerService$Alignment;)V

    const-string v4, "AlarmManagement"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 547
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 548
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 557
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_c

    .line 558
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] OnlineConfig is turned off."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 562
    :cond_c
    if-nez p1, :cond_16

    .line 563
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] AlignmentConfigObserver jsonArray ==null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 567
    :cond_16
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v0, :cond_30

    .line 568
    const-string v0, "AlarmManager_ALIGNMENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] jsonArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_30
    const/4 v0, 0x0

    move v1, v0

    .line 598
    .local v1, "index":I
    :goto_32
    :try_start_32
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a8

    .line 599
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 600
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_alignment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 601
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 602
    .local v3, "enabled":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    .line 603
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 605
    goto/16 :goto_1a4

    .line 607
    :cond_59
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlignmentEnabled:Z

    .line 609
    goto/16 :goto_1a8

    .line 613
    .end local v3    # "enabled":I
    :cond_5d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_windowLength"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 614
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 615
    .local v3, "windowLength":J
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Alignment;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAlignment:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alignment;->setWindowLength(J)V

    .line 618
    .end local v3    # "windowLength":J
    :cond_7a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_de

    .line 619
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 620
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 621
    .local v3, "jaBlack":Lorg/json/JSONArray;
    move v5, v0

    .line 621
    .local v5, "i":I
    :goto_97
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_dc

    .line 623
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 625
    .local v6, "joBlack":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 628
    .local v8, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 629
    .local v9, "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 629
    .local v10, "j":I
    :goto_b4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_c4

    .line 630
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_b4

    .line 634
    .end local v10    # "j":I
    :cond_c4
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_c7} :catch_1b0

    .line 635
    :try_start_c7
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_d5

    .line 638
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmBlacklist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 640
    :cond_d5
    monitor-exit v10

    .line 621
    .end local v6    # "joBlack":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_97

    .line 640
    .restart local v6    # "joBlack":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_d9
    move-exception v0

    monitor-exit v10
    :try_end_db
    .catchall {:try_start_c7 .. :try_end_db} :catchall_d9

    :try_start_db
    throw v0

    .line 642
    .end local v5    # "i":I
    .end local v6    # "joBlack":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_dc
    goto/16 :goto_1a4

    .line 645
    .end local v3    # "jaBlack":Lorg/json/JSONArray;
    :cond_de
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 646
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 647
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 648
    .local v3, "jaWhite":Lorg/json/JSONArray;
    move v5, v0

    .line 648
    .restart local v5    # "i":I
    :goto_fb
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_140

    .line 650
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 652
    .local v6, "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    .restart local v7    # "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 655
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 656
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 656
    .restart local v10    # "j":I
    :goto_118
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_128

    .line 657
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 658
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_118

    .line 661
    .end local v10    # "j":I
    :cond_128
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_12b
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_12b} :catch_1b0

    .line 662
    :try_start_12b
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_139

    .line 664
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmWhitelist:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 666
    :cond_139
    monitor-exit v10

    .line 648
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_fb

    .line 666
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_13d
    move-exception v0

    monitor-exit v10
    :try_end_13f
    .catchall {:try_start_12b .. :try_end_13f} :catchall_13d

    :try_start_13f
    throw v0

    .line 669
    .end local v5    # "i":I
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_140
    goto :goto_1a4

    .line 672
    .end local v3    # "jaWhite":Lorg/json/JSONArray;
    :cond_141
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "special_list"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 673
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 674
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 675
    .restart local v3    # "jaWhite":Lorg/json/JSONArray;
    move v5, v0

    .line 675
    .restart local v5    # "i":I
    :goto_15e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1a3

    .line 677
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 679
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 680
    .restart local v7    # "packageName":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 682
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 683
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    move v10, v0

    .line 683
    .restart local v10    # "j":I
    :goto_17b
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_18b

    .line 684
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 685
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v11    # "action":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_17b

    .line 688
    .end local v10    # "j":I
    :cond_18b
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_13f .. :try_end_18e} :catch_1b0

    .line 689
    :try_start_18e
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-boolean v11, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v11, :cond_19c

    .line 692
    iget-object v11, p0, Lcom/android/server/AlarmManagerService$Alignment;->mAlarmSpecialList:Ljava/util/HashMap;

    invoke-virtual {p0, v11, v4}, Lcom/android/server/AlarmManagerService$Alignment;->dumpConfigList(Ljava/util/HashMap;Ljava/io/PrintWriter;)V

    .line 694
    :cond_19c
    monitor-exit v10

    .line 675
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_15e

    .line 694
    .restart local v6    # "joWhite":Lorg/json/JSONObject;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "jaAction":Lorg/json/JSONArray;
    :catchall_1a0
    move-exception v0

    monitor-exit v10
    :try_end_1a2
    .catchall {:try_start_18e .. :try_end_1a2} :catchall_1a0

    :try_start_1a2
    throw v0

    .line 697
    .end local v5    # "i":I
    .end local v6    # "joWhite":Lorg/json/JSONObject;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "jaAction":Lorg/json/JSONArray;
    :cond_1a3
    nop

    .line 598
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jaWhite":Lorg/json/JSONArray;
    :cond_1a4
    :goto_1a4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_32

    .line 700
    .end local v1    # "index":I
    :cond_1a8
    :goto_1a8
    const-string v0, "AlarmManager_ALIGNMENT"

    const-string v1, "[OnlineConfig] FrequentBlackListConfigUpdater updated complete !"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Lorg/json/JSONException; {:try_start_1a2 .. :try_end_1af} :catch_1b0

    .line 704
    goto :goto_1cb

    .line 701
    :catch_1b0
    move-exception v0

    .line 702
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AlarmManager_ALIGNMENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1cb
    return-void
.end method

.method public setOnelineConfig(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mOnlineConfigEnabled:Z

    .line 299
    return-void
.end method

.method public setWindowLength(J)V
    .registers 5
    .param p1, "windowLength"    # J

    .line 293
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    return-void

    .line 294
    :cond_7
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLength:J

    .line 295
    return-void
.end method

.method public windowLengthOverride(J)J
    .registers 5
    .param p1, "windowLength"    # J

    .line 341
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    .line 342
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alignment;->mWindowLengthOverride:J

    return-wide v0
.end method
