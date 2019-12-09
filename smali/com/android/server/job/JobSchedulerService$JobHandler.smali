.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1591
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1592
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1596
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1597
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_0

    .line 1598
    monitor-exit v0

    return-void

    .line 1600
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 1656
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1657
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1658
    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 1659
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v3, "app uid idle"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1661
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1662
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1663
    monitor-exit p1

    .line 1664
    goto/16 :goto_3

    .line 1663
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 1649
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1650
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1651
    :try_start_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1652
    monitor-exit v1

    .line 1653
    goto/16 :goto_3

    .line 1652
    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 1637
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1638
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1639
    :cond_3
    move v3, v2

    :goto_1
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v4, 0x12

    invoke-virtual {p1, v1, v4}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1640
    if-eqz v3, :cond_4

    .line 1641
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v3, "uid gone"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1643
    :cond_4
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1644
    :try_start_5
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v3}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1645
    monitor-exit p1

    .line 1646
    goto :goto_3

    .line 1645
    :catchall_2
    move-exception v1

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1

    .line 1631
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1632
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1633
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1634
    goto :goto_3

    .line 1623
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1624
    goto :goto_3

    .line 1626
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    const/4 v2, 0x0

    const-string v3, "app no longer allowed to run"

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1628
    goto :goto_3

    .line 1613
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1614
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean p1, p1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz p1, :cond_5

    .line 1616
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_3

    .line 1619
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;)V

    .line 1621
    goto :goto_3

    .line 1602
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 1605
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService;->access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1606
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1607
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1609
    :cond_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->access$300(Lcom/android/server/job/JobSchedulerService;)V

    .line 1611
    :goto_2
    nop

    .line 1668
    :goto_3
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->access$700(Lcom/android/server/job/JobSchedulerService;)V

    .line 1670
    monitor-exit v0

    .line 1671
    return-void

    .line 1670
    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
