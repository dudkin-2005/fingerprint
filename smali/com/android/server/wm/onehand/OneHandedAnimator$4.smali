.class Lcom/android/server/wm/onehand/OneHandedAnimator$4;
.super Landroid/content/BroadcastReceiver;
.source "OneHandedAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;->registerObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 431
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 432
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 433
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    const-string p1, "OneHandAnimator"

    const-string p2, "ACTION_SCREEN_OFF"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    goto/16 :goto_3

    .line 438
    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 439
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 440
    const-string p1, "OneHandAnimator"

    const-string p2, "ACTION_BATTERY_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$800(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 443
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    goto/16 :goto_3

    .line 446
    :cond_3
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$000()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 448
    const-string p1, "OneHandAnimator"

    const-string p2, "ACTION_DREAMING_STARTED"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    goto/16 :goto_3

    .line 452
    :cond_5
    const-string v0, "com.android.server.wm.onehand.intent.action.ONEHAND_TRIGGER_EVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 453
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$000()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 454
    const-string p1, "OneHandAnimator"

    const-string v0, "ACTION_ONEHAND_TRIGGER_EVENT"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_6
    nop

    .line 458
    nop

    .line 459
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$200(Lcom/android/server/wm/onehand/OneHandedAnimator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 461
    if-nez v0, :cond_7

    .line 462
    monitor-exit p1

    return-void

    .line 465
    :cond_7
    const-string v0, "alignment_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 469
    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v5}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$900(Lcom/android/server/wm/onehand/OneHandedAnimator;)Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 470
    if-ne v0, v4, :cond_8

    .line 471
    monitor-exit p1

    return-void

    .line 474
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedXAdj(Landroid/content/Context;I)I

    move-result v2

    .line 475
    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v4}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedYAdj(Landroid/content/Context;I)I

    move-result v4

    .line 477
    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSavedShrinkingScale()F

    move-result v5

    .line 478
    if-nez v0, :cond_9

    .line 479
    const/16 v0, 0x53

    goto :goto_0

    :cond_9
    const/16 v0, 0x55

    .line 481
    :goto_0
    const-string/jumbo v6, "vertical_position"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 482
    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v4}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$300(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    .line 483
    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v4}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$400(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const-string/jumbo v6, "vertical_position"

    .line 484
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sub-int/2addr v4, p2

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 485
    invoke-static {p2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$400(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, v5

    float-to-int p2, p2

    sub-int/2addr v4, p2

    .line 488
    :cond_a
    new-instance p2, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p2, v2, v4, v5, v0}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(IIFI)V

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p2, v3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/onehand/OneHandedMode;->getGravity()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveGravity(Landroid/content/Context;I)V

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;

    move-result-object v0

    iget p2, p2, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-static {v0, p2}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveYAdj(Landroid/content/Context;I)V

    .line 493
    goto :goto_1

    .line 496
    :cond_b
    move v1, v3

    .line 505
    :goto_1
    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    .line 497
    :cond_c
    if-eq v0, v4, :cond_d

    .line 498
    monitor-exit p1

    return-void

    .line 501
    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 502
    goto :goto_2

    .line 505
    :cond_e
    move v1, v3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    if-eqz v3, :cond_f

    .line 509
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1000(Lcom/android/server/wm/onehand/OneHandedAnimator;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushEnter()V

    .line 511
    :cond_f
    if-eqz v1, :cond_10

    .line 513
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1000(Lcom/android/server/wm/onehand/OneHandedAnimator;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushExitByHomeButtonTouch()V

    goto :goto_3

    .line 505
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 516
    :cond_10
    :goto_3
    return-void
.end method
