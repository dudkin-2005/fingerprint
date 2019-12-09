.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 594
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    .line 595
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_190

    goto/16 :goto_18e

    .line 707
    :pswitch_8
    const-string v0, "StorageManagerService"

    const-string v1, "Aborting idle maintenance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    goto/16 :goto_18e

    .line 702
    :pswitch_1a
    const-string v0, "StorageManagerService"

    const-string v1, "Running idle maintenance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 704
    goto/16 :goto_18e

    .line 698
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1700(Lcom/android/server/StorageManagerService;)V

    .line 699
    goto/16 :goto_18e

    .line 693
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 694
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    # invokes: Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$1600(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    goto/16 :goto_18e

    .line 662
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :pswitch_42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 663
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    .line 664
    goto/16 :goto_18e

    .line 687
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 688
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 690
    goto/16 :goto_18e

    .line 667
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 668
    .local v0, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "envState":Ljava/lang/String;
    const-string v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " broadcasting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {v1}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_18e

    .line 674
    # getter for: Lcom/android/server/StorageManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_bd

    const-string v3, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendBroadcastAsUser: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_bd
    new-instance v3, Landroid/content/Intent;

    .line 676
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 677
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 678
    const/high16 v4, 0x5000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 680
    iget-object v4, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 681
    .end local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_18e

    .line 649
    .end local v0    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v1    # "envState":Ljava/lang/String;
    .end local v2    # "action":Ljava/lang/String;
    :pswitch_e3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 650
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService;->access$1300(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 651
    const-string v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    goto/16 :goto_18e

    .line 655
    :cond_110
    :try_start_110
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v3, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v4, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IVold;->mount(Ljava/lang/String;II)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_11f} :catch_121

    .line 658
    goto/16 :goto_18e

    .line 656
    :catch_121
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_18e

    .line 610
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_128
    const-string v0, "StorageManagerService"

    const-string v2, "Running fstrim idle maintenance"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_12f
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v0, v2, v3}, Lcom/android/server/StorageManagerService;->access$1002(Lcom/android/server/StorageManagerService;J)J

    .line 615
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1100(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLastMaintenance:J
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$1000(Lcom/android/server/StorageManagerService;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_147} :catch_148

    .line 618
    goto :goto_150

    .line 616
    :catch_148
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "Unable to record last fstrim!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_150
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 625
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 626
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_18e

    .line 627
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_18e

    .line 632
    .end local v0    # "callback":Ljava/lang/Runnable;
    :pswitch_160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/IStorageShutdownObserver;

    .line 633
    .local v0, "obs":Landroid/os/storage/IStorageShutdownObserver;
    move v2, v1

    .line 635
    .local v2, "success":Z
    :try_start_165
    iget-object v3, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IVold;->shutdown()V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_16e} :catch_170

    .line 636
    const/4 v2, 0x1

    .line 639
    goto :goto_176

    .line 637
    :catch_170
    move-exception v3

    .line 638
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StorageManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_176
    if-eqz v0, :cond_18e

    .line 642
    if-eqz v2, :cond_17b

    goto :goto_17c

    :cond_17b
    const/4 v1, -0x1

    :goto_17c
    :try_start_17c
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_180

    .line 644
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v2    # "success":Z
    :goto_17f
    goto :goto_18e

    .line 643
    .restart local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .restart local v2    # "success":Z
    :catch_180
    move-exception v1

    goto :goto_17f

    .line 606
    .end local v0    # "obs":Landroid/os/storage/IStorageShutdownObserver;
    .end local v2    # "success":Z
    :pswitch_182
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleDaemonConnected()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$900(Lcom/android/server/StorageManagerService;)V

    .line 607
    goto :goto_18e

    .line 602
    :pswitch_188
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->handleSystemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;)V

    .line 603
    nop

    .line 713
    :cond_18e
    :goto_18e
    return-void

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_188
        :pswitch_182
        :pswitch_160
        :pswitch_128
        :pswitch_e3
        :pswitch_64
        :pswitch_51
        :pswitch_42
        :pswitch_33
        :pswitch_2c
        :pswitch_1a
        :pswitch_8
    .end packed-switch
.end method
