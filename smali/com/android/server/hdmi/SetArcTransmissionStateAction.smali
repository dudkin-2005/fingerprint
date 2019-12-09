.class final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SetArcTransmissionStateAction.java"


# static fields
.field private static final STATE_WAITING_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetArcTransmissionStateAction"


# instance fields
.field private final mAvrAddress:I

.field private final mEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 49
    const/4 p1, 0x5

    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    .line 50
    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 51
    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    return-void
.end method

.method private sendReportArcInitiated()V
    .locals 2

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 102
    return-void
.end method

.method private setArcStatus(Z)V
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    move-result v0

    .line 106
    const-string v1, "SetArcTransmissionStateAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change arc status [old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result p1

    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 142
    return-void

    .line 138
    :cond_1
    :goto_0
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 118
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 119
    return v2

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 123
    if-nez v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 125
    const/16 v0, 0xc1

    if-ne p1, v0, :cond_1

    .line 126
    const-string p1, "Feature aborted for <Report Arc Initiated>"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 129
    return v1

    .line 132
    :cond_1
    return v2
.end method

.method start()Z
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    .line 68
    iput v1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    .line 69
    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->addTimer(II)V

    .line 70
    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    .line 75
    :goto_0
    return v1
.end method
