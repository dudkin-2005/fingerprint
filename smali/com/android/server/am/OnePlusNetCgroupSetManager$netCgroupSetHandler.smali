.class Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;
.super Landroid/os/Handler;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "netCgroupSetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 353
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 355
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 359
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_1e

    :cond_8
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] netCgroupSetHandler handleMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1e
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_64

    goto :goto_62

    .line 380
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->getLaunchers()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    .line 381
    goto :goto_62

    .line 377
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$700(Lcom/android/server/am/OnePlusNetCgroupSetManager;II)V

    .line 378
    goto :goto_62

    .line 374
    :pswitch_36
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUidsTouchWin(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$600(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)V

    .line 375
    goto :goto_62

    .line 371
    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$500(Lcom/android/server/am/OnePlusNetCgroupSetManager;Ljava/util/HashSet;II)V

    .line 372
    goto :goto_62

    .line 368
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$400(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    .line 369
    goto :goto_62

    .line 365
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$400(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    .line 366
    goto :goto_62

    .line 362
    :pswitch_59
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    # invokes: Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$400(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V

    .line 363
    nop

    .line 385
    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_3e
        :pswitch_36
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method
