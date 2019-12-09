.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 501
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 502
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 503
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 508
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    .line 510
    .local v1, "enabled":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_cc

    goto :goto_55

    :sswitch_13
    const-string/jumbo v3, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x2

    goto :goto_56

    :sswitch_1e
    const-string/jumbo v3, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    move v3, v2

    goto :goto_56

    :sswitch_29
    const-string/jumbo v3, "mhl_power_charge_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x5

    goto :goto_56

    :sswitch_34
    const-string/jumbo v3, "mhl_input_switching_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x4

    goto :goto_56

    :sswitch_3f
    const-string/jumbo v3, "hdmi_system_audio_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x3

    goto :goto_56

    :sswitch_4a
    const-string/jumbo v3, "hdmi_control_enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v3, -0x1

    :goto_56
    packed-switch v3, :pswitch_data_e6

    goto/16 :goto_cb

    .line 538
    :pswitch_5b
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    const/16 v3, 0x66

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Z)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_cb

    .line 535
    :pswitch_6b
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    .line 536
    goto :goto_cb

    .line 530
    :pswitch_71
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 531
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioControlFeatureEnabled(Z)V

    goto :goto_cb

    .line 521
    :pswitch_83
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 522
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v4

    .line 523
    .local v4, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-eqz v4, :cond_ac

    .line 524
    invoke-virtual {v4, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    .line 526
    .end local v3    # "type":I
    .end local v4    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_ac
    goto :goto_8d

    .line 528
    :cond_ad
    goto :goto_cb

    .line 515
    :pswitch_ae
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 516
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 518
    :cond_bf
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(IZ)V

    .line 519
    goto :goto_cb

    .line 512
    :pswitch_c5
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    .line 513
    nop

    .line 541
    :cond_cb
    :goto_cb
    return-void

    :sswitch_data_cc
    .sparse-switch
        -0x77ca2448 -> :sswitch_4a
        -0x58c072d3 -> :sswitch_3f
        -0x4b40ad13 -> :sswitch_34
        -0x34cb9782 -> :sswitch_29
        0x2b4f3cc8 -> :sswitch_1e
        0x610a030f -> :sswitch_13
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_ae
        :pswitch_83
        :pswitch_71
        :pswitch_6b
        :pswitch_5b
    .end packed-switch
.end method
