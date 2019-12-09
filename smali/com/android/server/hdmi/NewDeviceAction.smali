.class final Lcom/android/server/hdmi/NewDeviceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "NewDeviceAction.java"


# static fields
.field static final STATE_WAITING_FOR_DEVICE_VENDOR_ID:I = 0x2

.field static final STATE_WAITING_FOR_SET_OSD_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NewDeviceAction"


# instance fields
.field private final mDeviceLogicalAddress:I

.field private final mDevicePhysicalAddress:I

.field private final mDeviceType:I

.field private mDisplayName:Ljava/lang/String;

.field private mTimeoutRetry:I

.field private mVendorId:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 67
    iput p2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 68
    iput p3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 69
    iput p4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    .line 70
    const p1, 0xffffff

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 71
    return-void
.end method

.method private addDeviceInfo()V
    .locals 8

    .line 167
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInDeviceList(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "NewDeviceAction"

    const-string v1, "Device not found (%02x, %04x)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 173
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getDefaultDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    .line 175
    :cond_1
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v3, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 177
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v4, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getPortId(I)I

    move-result v4

    iget v5, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceType:I

    iget v6, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    iget-object v7, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->processDelayedMessages(I)V

    .line 184
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 188
    :cond_2
    return-void
.end method

.method private mayProcessCommandIfCached(II)Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageCache;->getMessage(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result p1

    return p1

    .line 146
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private requestOsdName(Z)V
    .locals 1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 83
    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    .line 84
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v0, 0x47

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    return-void

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result p1

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 90
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    .line 91
    return-void
.end method

.method private requestVendorId(Z)V
    .locals 1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    .line 154
    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    .line 156
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/16 v0, 0x87

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->mayProcessCommandIfCached(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->getSourceAddress()I

    move-result p1

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/NewDeviceAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 162
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/NewDeviceAction;->addTimer(II)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 4

    .line 192
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 196
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge p1, v1, :cond_1

    .line 197
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 198
    return-void

    .line 201
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    goto :goto_0

    .line 202
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 203
    iget p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mTimeoutRetry:I

    if-ge p1, v1, :cond_3

    .line 204
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 205
    return-void

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 211
    :cond_4
    :goto_0
    return-void

    .line 193
    :cond_5
    :goto_1
    return-void
.end method

.method isActionOf(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Z
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 99
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 101
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    .line 103
    iget v2, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 104
    return v3

    .line 107
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 108
    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/NewDeviceAction;->mDisplayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    const-string v0, "NewDeviceAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get OSD name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 115
    return v2

    .line 116
    :cond_1
    if-nez v0, :cond_5

    .line 117
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 118
    const/16 v0, 0x46

    if-ne p1, v0, :cond_2

    .line 119
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/NewDeviceAction;->requestVendorId(Z)V

    .line 120
    return v2

    .line 122
    :cond_2
    goto :goto_1

    .line 123
    :cond_3
    iget v1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 124
    const/16 v1, 0x87

    if-ne v0, v1, :cond_4

    .line 125
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/NewDeviceAction;->mVendorId:I

    .line 126
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 128
    return v2

    .line 129
    :cond_4
    if-nez v0, :cond_5

    .line 130
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 131
    const/16 v0, 0x8c

    if-ne p1, v0, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/android/server/hdmi/NewDeviceAction;->addDeviceInfo()V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/hdmi/NewDeviceAction;->finish()V

    .line 134
    return v2

    .line 138
    :cond_5
    :goto_1
    return v3
.end method

.method public start()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/NewDeviceAction;->requestOsdName(Z)V

    .line 76
    return v0
.end method