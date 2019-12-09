.class Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 7624
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .line 7624
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 7627
    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 7632
    .local v4, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v0, :cond_4f

    .line 7633
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7636
    .local v0, "dockState":I
    packed-switch v0, :pswitch_data_3b2

    .line 7651
    goto :goto_28

    .line 7647
    :pswitch_1e
    const/16 v5, 0x9

    .line 7648
    .local v5, "config":I
    goto :goto_28

    .line 7644
    .end local v5    # "config":I
    :pswitch_21
    const/16 v5, 0x8

    .line 7645
    .restart local v5    # "config":I
    goto :goto_28

    .line 7641
    .end local v5    # "config":I
    :pswitch_24
    const/4 v5, 0x6

    .line 7642
    .restart local v5    # "config":I
    goto :goto_28

    .line 7638
    .end local v5    # "config":I
    :pswitch_26
    const/4 v5, 0x7

    .line 7639
    .restart local v5    # "config":I
    nop

    .line 7651
    :goto_28
    nop

    .line 7655
    if-eq v0, v6, :cond_48

    if-nez v0, :cond_35

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7657
    # getter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;)I

    move-result v7

    if-eq v7, v6, :cond_48

    .line 7658
    :cond_35
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$10900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object v7

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string v9, "ACTION_DOCK_EVENT intent"

    invoke-direct {v8, v6, v5, v9}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7660
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7662
    :cond_48
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mDockState:I
    invoke-static {v6, v0}, Lcom/android/server/audio/AudioService;->access$10802(Lcom/android/server/audio/AudioService;I)I

    .line 7663
    .end local v0    # "dockState":I
    .end local v5    # "config":I
    goto/16 :goto_3af

    :cond_4f
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 7664
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 7665
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In onReceive(), calling setBtScoActiveDevice() with btDevice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7667
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 7668
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_3af

    :cond_7c
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v7, 0xa

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v0, :cond_21d

    .line 7669
    const/4 v10, 0x0

    .line 7670
    .local v10, "broadcast":Z
    const/4 v11, -0x1

    .line 7671
    .local v11, "scoAudioState":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v12

    monitor-enter v12

    .line 7672
    :try_start_91
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7674
    .local v0, "btState":I
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v13, 0x5

    const/4 v14, 0x4

    if-nez v8, :cond_c6

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7675
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v6, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7676
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v9, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7677
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-eq v8, v14, :cond_c5

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7678
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-ne v8, v13, :cond_c6

    .line 7679
    :cond_c5
    const/4 v10, 0x1

    .line 7681
    :cond_c6
    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_3be

    goto/16 :goto_1d9

    .line 7686
    :pswitch_cc
    iget-object v15, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z
    invoke-static {v15}, Lcom/android/server/audio/AudioService;->access$11000(Lcom/android/server/audio/AudioService;)Z

    move-result v15

    if-ne v15, v9, :cond_127

    .line 7687
    iget-object v15, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z
    invoke-static {v15, v5}, Lcom/android/server/audio/AudioService;->access$11002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7688
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v5

    const/4 v15, 0x6

    aget-object v5, v5, v15

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v9, v15}, Lcom/android/server/audio/AudioService;->access$5500(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/2addr v5, v13

    div-int/2addr v5, v7

    .line 7689
    .local v5, "currentBtScoVol":I
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v15

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v7

    const-string v9, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7690
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v9

    aget-object v9, v9, v15

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v9}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v9

    # invokes: Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v7, v9}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7691
    const-string v7, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setMode() revert sco volume to  "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7695
    .end local v5    # "currentBtScoVol":I
    :cond_127
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v7, 0xc

    .line 7696
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7695
    # invokes: Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    invoke-static {v5, v3, v7}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 7697
    const/4 v11, 0x1

    .line 7698
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_14b

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7699
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v14, :cond_14b

    .line 7700
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7702
    :cond_14b
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 7703
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1db

    .line 7728
    :pswitch_15a
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v6, :cond_1d9

    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7729
    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v5

    if-eq v5, v14, :cond_1d9

    .line 7730
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v8}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    goto :goto_1d9

    .line 7707
    :pswitch_170
    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7708
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7707
    # invokes: Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    invoke-static {v8, v3, v7}, Lcom/android/server/audio/AudioService;->access$11100(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_1db

    .line 7709
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, v5}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 7710
    const/4 v11, 0x0

    .line 7712
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1bc

    .line 7713
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    if-eqz v7, :cond_1bc

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_1bc

    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7714
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7715
    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioMode:I
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)I

    move-result v9

    .line 7714
    # invokes: Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    invoke-static {v7, v8, v9}, Lcom/android/server/audio/AudioService;->access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v7

    if-eqz v7, :cond_1bc

    .line 7716
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7717
    const/4 v5, 0x0

    .line 7718
    .end local v10    # "broadcast":Z
    .local v5, "broadcast":Z
    nop

    .line 7738
    move v10, v5

    goto :goto_1db

    .line 7722
    .end local v5    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_1bc
    iget-object v7, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v8

    if-ne v8, v6, :cond_1c8

    const/4 v6, 0x1

    goto :goto_1c9

    :cond_1c8
    move v6, v5

    :goto_1c9
    invoke-virtual {v7, v5, v6}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 7723
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$3102(Lcom/android/server/audio/AudioService;I)I

    .line 7724
    const-string v5, "AudioService"

    const-string v6, "Audio-path brought-down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1db

    .line 7734
    :cond_1d9
    :goto_1d9
    const/4 v0, 0x0

    .line 7738
    .end local v10    # "broadcast":Z
    .local v0, "broadcast":Z
    move v10, v0

    .line 7738
    .end local v0    # "broadcast":Z
    .restart local v10    # "broadcast":Z
    :cond_1db
    :goto_1db
    monitor-exit v12
    :try_end_1dc
    .catchall {:try_start_91 .. :try_end_1dc} :catchall_21a

    .line 7739
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In onReceive(), mScoAudioState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mScoAudioState:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", broadcast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    if-eqz v10, :cond_218

    .line 7742
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v11}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;I)V

    .line 7745
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7746
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7747
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v5, v0}, Lcom/android/server/audio/AudioService;->access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 7749
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_218
    goto/16 :goto_3af

    .line 7738
    .restart local v10    # "broadcast":Z
    .restart local v11    # "scoAudioState":I
    :catchall_21a
    move-exception v0

    :try_start_21b
    monitor-exit v12
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_21a

    throw v0

    .line 7749
    .end local v10    # "broadcast":Z
    .end local v11    # "scoAudioState":I
    :cond_21d
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 7750
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 7751
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 7753
    :cond_230
    const-string/jumbo v0, "screen_state=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_3af

    .line 7754
    :cond_238
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 7755
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_24b

    .line 7757
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 7759
    :cond_24b
    const-string/jumbo v0, "screen_state=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_3af

    .line 7760
    :cond_253
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    .line 7761
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_3af

    .line 7762
    :cond_262
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 7763
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_282

    .line 7766
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7774
    :cond_282
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$11502(Lcom/android/server/audio/AudioService;Z)Z

    .line 7776
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 7779
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$11700(Lcom/android/server/audio/AudioService;Z)V

    .line 7781
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v7

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 7786
    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v12, v0, v6

    const/4 v13, 0x0

    .line 7781
    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_3af

    .line 7787
    :cond_2af
    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 7789
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7790
    .local v0, "userId":I
    if-ltz v0, :cond_2cc

    .line 7792
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 7793
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v6, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 7795
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2cc
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const-string/jumbo v6, "no_record_audio"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 7797
    .end local v0    # "userId":I
    goto/16 :goto_3af

    :cond_2d9
    const-string v0, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 7799
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7800
    .restart local v0    # "userId":I
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    const-string/jumbo v7, "no_record_audio"

    invoke-virtual {v6, v7, v5, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 7802
    .end local v0    # "userId":I
    goto/16 :goto_3af

    :cond_2f3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30e

    .line 7803
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7804
    .local v0, "state":I
    if-eq v0, v7, :cond_307

    const/16 v5, 0xd

    if-ne v0, v5, :cond_3af

    .line 7806
    :cond_307
    iget-object v5, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    goto/16 :goto_3af

    .line 7808
    .end local v0    # "state":I
    :cond_30e
    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3aa

    const-string v0, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 7809
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_320

    goto/16 :goto_3aa

    .line 7811
    :cond_320
    const-string v0, "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 7815
    const-string v0, "AudioService"

    const-string v5, "ACTION_SHUTDOWN_MUTE_MUSIC Intent received"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7817
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x24

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7819
    const-string v0, "AudioService"

    const-string v5, "ACTION_SHUTDOWN_MUTE_MUSIC Intent received returned"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3af

    .line 7821
    :cond_347
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_365

    .line 7822
    const-string v0, "dev_shutdown=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 7825
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3af

    .line 7827
    :cond_365
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_384

    .line 7830
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/audio/AudioService;->mBootCompelet:Z
    invoke-static {v0, v5}, Lcom/android/server/audio/AudioService;->access$12002(Lcom/android/server/audio/AudioService;Z)Z

    .line 7831
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3af

    .line 7833
    :cond_384
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3af

    .line 7836
    const-string v0, "AudioService"

    const-string v5, "ACTION_LOCALE_CHANGED Intent received"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7837
    invoke-static {}, Lcom/android/server/audio/AudioService;->isEnableEU()Z

    move-result v0

    if-eqz v0, :cond_3af

    .line 7838
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3af

    .line 7810
    :cond_3aa
    :goto_3aa
    iget-object v0, v1, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->access$11900(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 7842
    :cond_3af
    :goto_3af
    return-void

    nop

    nop

    :pswitch_data_3b2
    .packed-switch 0x1
        :pswitch_26
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3be
    .packed-switch 0xa
        :pswitch_170
        :pswitch_15a
        :pswitch_cc
    .end packed-switch
.end method
