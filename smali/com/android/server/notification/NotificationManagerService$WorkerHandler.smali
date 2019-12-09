.class public Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5753
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5754
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5755
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 5760
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 5766
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)V

    .line 5767
    goto :goto_36

    .line 5778
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8500(Lcom/android/server/notification/NotificationManagerService;I)V

    goto :goto_36

    .line 5775
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8400(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 5776
    goto :goto_36

    .line 5772
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$8300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5773
    goto :goto_36

    .line 5769
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$8200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5770
    goto :goto_36

    .line 5763
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 5764
    nop

    .line 5781
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_18
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method protected scheduleSendRankingUpdate()V
    .registers 3

    .line 5784
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 5785
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5786
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5788
    .end local v0    # "m":Landroid/os/Message;
    :cond_e
    return-void
.end method
