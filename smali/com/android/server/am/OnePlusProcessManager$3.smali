.class Lcom/android/server/am/OnePlusProcessManager$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 1630
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1632
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1634
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenStateReceiver: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    :cond_1f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    .line 1636
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1637
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1638
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 1639
    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 1640
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3300()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    add-long/2addr v3, v5

    .line 1641
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3200()Landroid/app/PendingIntent;

    move-result-object v5

    .line 1640
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_ee

    .line 1642
    :cond_4c
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1645
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1646
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1647
    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    .line 1648
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3300()Landroid/app/AlarmManager;

    move-result-object v1

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3200()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_ee

    .line 1649
    :cond_6e
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 1651
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3500(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1652
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3600(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1653
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->hanleBlackSensor()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3700(Lcom/android/server/am/OnePlusProcessManager;)V

    goto :goto_ee

    .line 1654
    :cond_88
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1655
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1656
    return-void

    .line 1659
    :cond_97
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1660
    .local v1, "plugged":I
    if-eqz v1, :cond_a2

    move v4, v2

    goto :goto_a3

    :cond_a2
    move v4, v3

    :goto_a3
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$402(Z)Z

    .line 1661
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1662
    const-string/jumbo v3, "mCharging"

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcess(Ljava/lang/String;)V

    .line 1663
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3902(Z)Z

    goto :goto_ee

    .line 1664
    :cond_b6
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 1665
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$3902(Z)Z

    .line 1667
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1668
    nop

    .line 1668
    .local v3, "i":I
    :goto_c5
    :try_start_c5
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e9

    .line 1669
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1670
    .local v4, "uid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v7, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1668
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    .line 1672
    .end local v3    # "i":I
    .end local v4    # "uid":Ljava/lang/Integer;
    :cond_e9
    monitor-exit v2

    goto :goto_ee

    :catchall_eb
    move-exception v3

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_eb

    throw v3

    .line 1675
    .end local v1    # "plugged":I
    :cond_ee
    :goto_ee
    return-void
.end method
