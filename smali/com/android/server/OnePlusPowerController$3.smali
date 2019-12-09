.class Lcom/android/server/OnePlusPowerController$3;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 444
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 6

    .line 447
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 449
    :try_start_7
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v1

    # setter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$502(I)I

    .line 450
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm triggered, mSleepState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 457
    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v2

    const/16 v3, 0x15be

    if-ne v2, v3, :cond_72

    .line 458
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_97

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mDozeState:I
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_97

    .line 459
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_97

    .line 461
    :cond_72
    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v2

    const/16 v3, 0x1e6c

    if-ne v2, v3, :cond_97

    .line 462
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_97

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$200(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 463
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 467
    :cond_97
    :goto_97
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$3;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 468
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_7 .. :try_end_a0} :catchall_9e

    throw v1
.end method
