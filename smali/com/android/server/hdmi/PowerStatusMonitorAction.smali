.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field private static final INVALID_POWER_STATUS:I = -0x2

.field private static final MONITIROING_INTERNAL_MS:I = 0xea60

.field private static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field private final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 52
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 76
    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 78
    return v3

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 81
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 82
    return v1
.end method

.method private handleTimeout()V
    .locals 4

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 100
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 104
    return-void
.end method

.method private queryPowerStatus()V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 117
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->getSourceAddress()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    new-instance v3, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 130
    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    .line 135
    const/4 v1, 0x2

    const v2, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 136
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    .line 137
    return-void
.end method

.method private resetPowerStatus(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 109
    iget-object v1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private updatePowerStatus(IIZ)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    .line 142
    if-eqz p3, :cond_0

    .line 143
    iget-object p2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 0

    .line 87
    iget p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    .line 90
    goto :goto_0

    .line 92
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    .line 95
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 66
    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1

    .line 70
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method start()Z
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    .line 61
    const/4 v0, 0x1

    return v0
.end method
