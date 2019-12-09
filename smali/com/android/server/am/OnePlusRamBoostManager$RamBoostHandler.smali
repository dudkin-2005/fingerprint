.class public Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
.super Landroid/os/Handler;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RamBoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 323
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 324
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 328
    # getter for: Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1d
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x5265c00

    packed-switch v0, :pswitch_data_c6

    :pswitch_25
    goto/16 :goto_c4

    .line 382
    :pswitch_27
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    goto/16 :goto_c4

    .line 378
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchPreload()I
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 379
    goto/16 :goto_c4

    .line 372
    :pswitch_36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 373
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchRecord(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I

    .line 375
    goto/16 :goto_c4

    .line 364
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 365
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "codePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "codePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1000(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I

    .line 369
    goto :goto_c4

    .line 360
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "codePath":Ljava/lang/String;
    :pswitch_66
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->readXML()I
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$800(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    .line 362
    goto :goto_c4

    .line 357
    :pswitch_72
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$700(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 358
    goto :goto_c4

    .line 354
    :pswitch_78
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 355
    goto :goto_c4

    .line 348
    :pswitch_7e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    .restart local v1    # "pid":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->resumeHotCount(I)Z
    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$600(Lcom/android/server/am/OnePlusRamBoostManager;I)Z

    .line 351
    goto :goto_c4

    .line 340
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    :pswitch_8f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 341
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 342
    .restart local v1    # "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "hotCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "hotCount":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$500(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 345
    goto :goto_c4

    .line 334
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "hotCount":Ljava/lang/String;
    :pswitch_ae
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateOnlineConfig()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchPreload()I
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 337
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 338
    goto :goto_c4

    .line 331
    :pswitch_be
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->updateOnlineConfig()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 332
    nop

    .line 386
    :goto_c4
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_be
        :pswitch_ae
        :pswitch_8f
        :pswitch_7e
        :pswitch_78
        :pswitch_72
        :pswitch_66
        :pswitch_48
        :pswitch_36
        :pswitch_2f
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method
