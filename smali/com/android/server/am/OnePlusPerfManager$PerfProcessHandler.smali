.class Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 691
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    .line 692
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 693
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 696
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 697
    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_39

    .line 705
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    # invokes: Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->access$300(Lcom/android/server/am/OnePlusPerfManager;)V

    goto :goto_39

    .line 702
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->access$200(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V

    .line 703
    goto :goto_39

    .line 699
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->access$100(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V

    .line 700
    nop

    .line 708
    :goto_39
    return-void

    nop

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
        :pswitch_1f
    .end packed-switch
.end method
