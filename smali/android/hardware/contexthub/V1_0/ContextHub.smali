.class public final Landroid/hardware/contexthub/V1_0/ContextHub;
.super Ljava/lang/Object;
.source "ContextHub.java"


# instance fields
.field public chreApiMajorVersion:B

.field public chreApiMinorVersion:B

.field public chrePatchVersion:S

.field public chrePlatformId:J

.field public final connectedSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/PhysicalSensor;",
            ">;"
        }
    .end annotation
.end field

.field public hubId:I

.field public maxSupportedMsgLen:I

.field public name:Ljava/lang/String;

.field public peakMips:F

.field public peakPowerDrawMw:F

.field public platformVersion:I

.field public sleepPowerDrawMw:F

.field public stoppedPowerDrawMw:F

.field public toolchain:Ljava/lang/String;

.field public toolchainVersion:I

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 156
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 157
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 158
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 157
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 163
    new-instance v4, Landroid/hardware/contexthub/V1_0/ContextHub;

    invoke-direct {v4}, Landroid/hardware/contexthub/V1_0/ContextHub;-><init>()V

    .line 164
    mul-int/lit8 v5, v3, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/contexthub/V1_0/ContextHub;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 165
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;)V"
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 233
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 234
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 235
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x78

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 236
    :goto_0
    if-ge v2, v1, :cond_0

    .line 237
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/V1_0/ContextHub;

    mul-int/lit8 v5, v2, 0x78

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 242
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 243
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 25
    return v0

    .line 27
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    if-eq v2, v3, :cond_2

    .line 31
    return v1

    .line 33
    :cond_2
    check-cast p1, Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 34
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 35
    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 41
    return v1

    .line 43
    :cond_5
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    if-eq v2, v3, :cond_6

    .line 44
    return v1

    .line 46
    :cond_6
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    if-eq v2, v3, :cond_7

    .line 47
    return v1

    .line 49
    :cond_7
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    if-eq v2, v3, :cond_8

    .line 50
    return v1

    .line 52
    :cond_8
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 53
    return v1

    .line 55
    :cond_9
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_a

    .line 56
    return v1

    .line 58
    :cond_a
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_b

    .line 59
    return v1

    .line 61
    :cond_b
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    .line 62
    return v1

    .line 64
    :cond_c
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 65
    return v1

    .line 67
    :cond_d
    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    iget v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    if-eq v2, v3, :cond_e

    .line 68
    return v1

    .line 70
    :cond_e
    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    iget-wide v4, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 71
    return v1

    .line 73
    :cond_f
    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    iget-byte v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    if-eq v2, v3, :cond_10

    .line 74
    return v1

    .line 76
    :cond_10
    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    iget-byte v3, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    if-eq v2, v3, :cond_11

    .line 77
    return v1

    .line 79
    :cond_11
    iget-short v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    iget-short p1, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    if-eq v2, p1, :cond_12

    .line 80
    return v1

    .line 82
    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 88
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    .line 94
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    .line 95
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    .line 96
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    .line 97
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    .line 101
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    .line 102
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    .line 103
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 87
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 174
    const-wide/16 v4, 0x0

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 176
    iget-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    .line 177
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 176
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 181
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 183
    iget-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    .line 184
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 183
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 188
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 190
    iget-object v8, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    .line 191
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 190
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 195
    const-wide/16 v6, 0x30

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    .line 196
    const-wide/16 v6, 0x34

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    .line 197
    const-wide/16 v6, 0x38

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    .line 198
    const-wide/16 v6, 0x3c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    .line 199
    const-wide/16 v6, 0x40

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    .line 200
    const-wide/16 v6, 0x44

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    .line 201
    const-wide/16 v6, 0x48

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v6

    iput v6, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    .line 203
    const-wide/16 v6, 0x50

    add-long v6, p3, v6

    const-wide/16 v8, 0x8

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 204
    mul-int/lit8 v9, v8, 0x60

    int-to-long v11, v9

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v4

    .line 204
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 208
    iget-object v5, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 209
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    .line 210
    new-instance v6, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    invoke-direct {v6}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;-><init>()V

    .line 211
    mul-int/lit8 v7, v5, 0x60

    int-to-long v9, v7

    move-object/from16 v7, p1

    invoke-virtual {v6, v7, v4, v9, v10}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 212
    iget-object v9, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const-wide/16 v4, 0x60

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    .line 216
    const-wide/16 v4, 0x68

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    .line 217
    const-wide/16 v4, 0x70

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    .line 218
    const-wide/16 v4, 0x71

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    .line 219
    const-wide/16 v4, 0x72

    add-long v2, p3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v1

    iput-short v1, v0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    .line 220
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 147
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 148
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/ContextHub;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 149
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .toolchain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .platformVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .toolchainVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .hubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .peakMips = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .stoppedPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .sleepPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .peakPowerDrawMw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .connectedSensors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .maxSupportedMsgLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .chrePlatformId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .chreApiMajorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .chreApiMinorVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-byte v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .chrePatchVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-short v1, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10

    .line 247
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 248
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 249
    const-wide/16 v2, 0x20

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 250
    const-wide/16 v2, 0x30

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    const-wide/16 v2, 0x34

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 252
    const-wide/16 v2, 0x38

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 253
    const-wide/16 v2, 0x3c

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 254
    const-wide/16 v2, 0x40

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 255
    const-wide/16 v2, 0x44

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 256
    const-wide/16 v2, 0x48

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 258
    iget-object v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 259
    const-wide/16 v3, 0x50

    add-long/2addr v3, p2

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 260
    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 261
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x60

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 262
    :goto_0
    if-ge v7, v2, :cond_0

    .line 263
    iget-object v6, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->connectedSensors:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/contexthub/V1_0/PhysicalSensor;

    mul-int/lit8 v8, v7, 0x60

    int-to-long v8, v8

    invoke-virtual {v6, v5, v8, v9}, Landroid/hardware/contexthub/V1_0/PhysicalSensor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 262
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    :cond_0
    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 267
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 268
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 269
    const-wide/16 v0, 0x70

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 270
    const-wide/16 v0, 0x71

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 271
    const-wide/16 v0, 0x72

    add-long/2addr p2, v0

    iget-short v0, p0, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 272
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 223
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 224
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 226
    return-void
.end method
