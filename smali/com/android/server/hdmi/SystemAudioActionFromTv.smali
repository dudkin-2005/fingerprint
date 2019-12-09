.class final Lcom/android/server/hdmi/SystemAudioActionFromTv;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromTv.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->getSourceAddress()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 41
    return-void
.end method


# virtual methods
.method start()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->removeSystemAudioActionInProgress()V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;->sendSystemAudioModeRequest()V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
