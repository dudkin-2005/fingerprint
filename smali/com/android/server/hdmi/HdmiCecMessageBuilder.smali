.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 265
    nop

    .line 266
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    .line 265
    const/16 v0, 0xf

    const/16 v1, 0x82

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 199
    const/16 p2, 0x9e

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 553
    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 541
    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 565
    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 579
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 592
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 182
    const/16 p1, 0xf

    const/16 v1, 0x87

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    const/4 p3, 0x1

    aput-byte p2, v0, p3

    .line 60
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 382
    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 322
    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 93
    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 82
    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 71
    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 428
    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 277
    nop

    .line 278
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    .line 277
    const/4 v0, 0x0

    const/16 v1, 0x9d

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 493
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 482
    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 232
    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 243
    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 349
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 352
    const/16 p2, 0x8e

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    .line 161
    const/16 p1, 0xf

    const/16 p2, 0x84

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 337
    const/16 p2, 0x90

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 210
    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 221
    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v0, p2

    .line 310
    const/16 p1, 0xf

    const/16 p2, 0x80

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 517
    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 505
    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 529
    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 108
    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 112
    new-array v0, v1, [B

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 118
    const/16 p1, 0xf

    const/16 v1, 0x32

    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .line 138
    const/16 v0, 0x47

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    const/4 p0, 0x0

    return-object p0
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 291
    nop

    .line 292
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    .line 291
    const/16 v0, 0xf

    const/16 v1, 0x86

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 439
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 366
    const/16 v0, 0x70

    if-eqz p3, :cond_0

    .line 367
    nop

    .line 368
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p2

    .line 367
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 370
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 254
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 394
    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 406
    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 417
    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    .line 451
    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5

    .line 465
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 466
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 467
    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 468
    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x2

    aput-byte p2, v0, v2

    .line 469
    array-length p2, p3

    invoke-static {p3, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 470
    const/16 p2, 0xa0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    .line 39
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    .line 40
    array-length v1, p2

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 41
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v1
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3

    .line 596
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method
