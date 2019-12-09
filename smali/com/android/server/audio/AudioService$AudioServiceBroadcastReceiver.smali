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
    .locals 0

    .line 6620
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0

    .line 6620
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 6623
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6628
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6629
    const-string p1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6632
    packed-switch p1, :pswitch_data_0

    .line 6647
    goto :goto_0

    .line 6643
    :pswitch_0
    const/16 v3, 0x9

    .line 6644
    goto :goto_0

    .line 6640
    :pswitch_1
    const/16 v3, 0x8

    .line 6641
    goto :goto_0

    .line 6637
    :pswitch_2
    const/4 v3, 0x6

    .line 6638
    goto :goto_0

    .line 6634
    :pswitch_3
    const/4 v3, 0x7

    .line 6635
    nop

    .line 6651
    :goto_0
    if-eq p1, v2, :cond_1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6653
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$9900(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v2, :cond_1

    .line 6654
    :cond_0
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$10000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;

    move-result-object p2

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string v1, "ACTION_DOCK_EVENT intent"

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 6656
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6658
    :cond_1
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$9902(Lcom/android/server/audio/AudioService;I)I

    .line 6659
    goto/16 :goto_5

    :cond_2
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6660
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 6661
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V

    .line 6662
    goto/16 :goto_5

    :cond_3
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    .line 6663
    nop

    .line 6664
    nop

    .line 6665
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 6666
    :try_start_0
    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6668
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x4

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6669
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v2, :cond_4

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6670
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v5, :cond_4

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6671
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p2

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6672
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p2

    const/4 v6, 0x5

    if-ne p2, v6, :cond_5

    .line 6673
    :cond_4
    nop

    .line 6675
    move p2, v5

    goto :goto_1

    :cond_5
    move p2, v3

    :goto_1
    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    .line 6677
    :pswitch_4
    nop

    .line 6678
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6679
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 6680
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6682
    :cond_6
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 6683
    nop

    .line 6711
    move v3, v5

    goto/16 :goto_4

    .line 6702
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-eq p1, v2, :cond_9

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6703
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-eq p1, v0, :cond_9

    .line 6704
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v6}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    goto :goto_3

    .line 6685
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1, v3}, Lcom/android/server/audio/AudioService;->setBluetoothScoOn(Z)V

    .line 6686
    nop

    .line 6688
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 6689
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6690
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6691
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)I

    move-result v4

    .line 6690
    invoke-static {p1, v0, v4}, Lcom/android/server/audio/AudioService;->access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6692
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v2}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6693
    nop

    .line 6694
    nop

    .line 6711
    move p2, v3

    goto :goto_4

    .line 6698
    :cond_7
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)I

    move-result v0

    if-ne v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v5, v3

    :goto_2
    invoke-virtual {p1, v3, v5}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 6699
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v3}, Lcom/android/server/audio/AudioService;->access$2902(Lcom/android/server/audio/AudioService;I)I

    .line 6700
    goto :goto_4

    .line 6708
    :cond_9
    :goto_3
    nop

    .line 6711
    move p2, v3

    move v3, v4

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6712
    if-eqz p2, :cond_a

    .line 6713
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v3}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;I)V

    .line 6716
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6717
    const-string p2, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6718
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$10100(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    .line 6720
    :cond_a
    goto/16 :goto_5

    .line 6711
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 6720
    :cond_b
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6721
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 6722
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 6724
    :cond_c
    const-string/jumbo p1, "screen_state=on"

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6725
    :cond_d
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6726
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$10200(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 6728
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 6730
    :cond_e
    const-string/jumbo p1, "screen_state=off"

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6731
    :cond_f
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6732
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->access$10300(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 6733
    :cond_10
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 6734
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$10400(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 6737
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v6

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6745
    :cond_11
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v5}, Lcom/android/server/audio/AudioService;->access$10402(Lcom/android/server/audio/AudioService;Z)Z

    .line 6747
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$10500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 6750
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1, v5}, Lcom/android/server/audio/AudioService;->access$10600(Lcom/android/server/audio/AudioService;Z)V

    .line 6752
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 6757
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p1

    aget-object v8, p1, v2

    const/4 v9, 0x0

    .line 6752
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_5

    .line 6758
    :cond_12
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6760
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6761
    if-ltz p1, :cond_13

    .line 6763
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 6764
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p2}, Lcom/android/server/audio/AudioService;->access$10700(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V

    .line 6766
    :cond_13
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    const-string v0, "no_record_audio"

    invoke-virtual {p2, v0, v5, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6768
    goto :goto_5

    :cond_14
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6770
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6771
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p2

    const-string v0, "no_record_audio"

    invoke-virtual {p2, v0, v3, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 6773
    goto :goto_5

    :cond_15
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6774
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 6775
    const/16 p2, 0xa

    if-eq p1, p2, :cond_16

    const/16 p2, 0xd

    if-ne p1, p2, :cond_19

    .line 6777
    :cond_16
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->disconnectAllBluetoothProfiles()V

    goto :goto_5

    .line 6779
    :cond_17
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 6780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6781
    :cond_18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->access$10800(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 6783
    :cond_19
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
