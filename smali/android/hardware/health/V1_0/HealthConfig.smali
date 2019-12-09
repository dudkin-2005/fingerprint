.class public final Landroid/hardware/health/V1_0/HealthConfig;
.super Ljava/lang/Object;
.source "HealthConfig.java"


# instance fields
.field public batteryCapacityPath:Ljava/lang/String;

.field public batteryChargeCounterPath:Ljava/lang/String;

.field public batteryCurrentAvgPath:Ljava/lang/String;

.field public batteryCurrentNowPath:Ljava/lang/String;

.field public batteryCycleCountPath:Ljava/lang/String;

.field public batteryFullChargePath:Ljava/lang/String;

.field public batteryHealthPath:Ljava/lang/String;

.field public batteryPresentPath:Ljava/lang/String;

.field public batteryStatusPath:Ljava/lang/String;

.field public batteryTechnologyPath:Ljava/lang/String;

.field public batteryTemperaturePath:Ljava/lang/String;

.field public batteryVoltagePath:Ljava/lang/String;

.field public periodicChoresIntervalFast:I

.field public periodicChoresIntervalSlow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

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
            "Landroid/hardware/health/V1_0/HealthConfig;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 206
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 207
    mul-int/lit16 v3, v2, 0xc8

    int-to-long v5, v3

    .line 208
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 207
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 213
    new-instance v4, Landroid/hardware/health/V1_0/HealthConfig;

    invoke-direct {v4}, Landroid/hardware/health/V1_0/HealthConfig;-><init>()V

    .line 214
    mul-int/lit16 v5, v3, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/health/V1_0/HealthConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 215
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
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
            "Landroid/hardware/health/V1_0/HealthConfig;",
            ">;)V"
        }
    .end annotation

    .line 320
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 322
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 324
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 325
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0xc8

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 326
    :goto_0
    if-ge v2, v1, :cond_0

    .line 327
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/health/V1_0/HealthConfig;

    mul-int/lit16 v5, v2, 0xc8

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/health/V1_0/HealthConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 332
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 333
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 90
    return v1

    .line 92
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V1_0/HealthConfig;

    if-eq v2, v3, :cond_2

    .line 93
    return v1

    .line 95
    :cond_2
    check-cast p1, Landroid/hardware/health/V1_0/HealthConfig;

    .line 96
    iget v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    if-eq v2, v3, :cond_3

    .line 97
    return v1

    .line 99
    :cond_3
    iget v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    if-eq v2, v3, :cond_4

    .line 100
    return v1

    .line 102
    :cond_4
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 103
    return v1

    .line 105
    :cond_5
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 106
    return v1

    .line 108
    :cond_6
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 109
    return v1

    .line 111
    :cond_7
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 112
    return v1

    .line 114
    :cond_8
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 115
    return v1

    .line 117
    :cond_9
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 118
    return v1

    .line 120
    :cond_a
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 121
    return v1

    .line 123
    :cond_b
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 124
    return v1

    .line 126
    :cond_c
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 127
    return v1

    .line 129
    :cond_d
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 130
    return v1

    .line 132
    :cond_e
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 133
    return v1

    .line 135
    :cond_f
    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 136
    return v1

    .line 138
    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 143
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    .line 146
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    .line 147
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    .line 149
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    .line 150
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    .line 152
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    .line 153
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    .line 154
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    .line 156
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    .line 157
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 224
    const-wide/16 v4, 0x0

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    .line 225
    const-wide/16 v6, 0x4

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    .line 226
    const-wide/16 v6, 0x8

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    .line 228
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    .line 229
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 228
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 233
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    .line 235
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    .line 236
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 235
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 240
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    .line 242
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    .line 243
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 242
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 247
    const-wide/16 v6, 0x38

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    .line 249
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    .line 250
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 249
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 254
    const-wide/16 v6, 0x48

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    .line 256
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    .line 257
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 256
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 261
    const-wide/16 v6, 0x58

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    .line 263
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    .line 264
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 263
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 268
    const-wide/16 v6, 0x68

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    .line 270
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    .line 271
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 270
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 275
    const-wide/16 v6, 0x78

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    .line 277
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    .line 278
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 277
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 282
    const-wide/16 v6, 0x88

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    .line 284
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    .line 285
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 284
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 289
    const-wide/16 v6, 0x98

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    .line 291
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    .line 292
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 291
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 296
    const-wide/16 v6, 0xa8

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    .line 298
    iget-object v8, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    .line 299
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v4

    .line 298
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 303
    const-wide/16 v6, 0xb8

    add-long v2, p3, v6

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    .line 305
    iget-object v0, v0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v7, v0

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v2, v4

    .line 305
    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 310
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 197
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 198
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 199
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ".periodicChoresIntervalFast = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", .periodicChoresIntervalSlow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", .batteryStatusPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", .batteryHealthPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", .batteryPresentPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", .batteryCapacityPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", .batteryVoltagePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", .batteryTemperaturePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", .batteryTechnologyPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", .batteryCurrentNowPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", .batteryCurrentAvgPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", .batteryChargeCounterPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ", .batteryFullChargePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", .batteryCycleCountPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 337
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalFast:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 338
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->periodicChoresIntervalSlow:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 339
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryStatusPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 340
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryHealthPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 341
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryPresentPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 342
    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCapacityPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 343
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryVoltagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 344
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTemperaturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 345
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryTechnologyPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 346
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentNowPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 347
    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCurrentAvgPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 348
    const-wide/16 v0, 0x98

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryChargeCounterPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 349
    const-wide/16 v0, 0xa8

    add-long/2addr v0, p2

    iget-object v2, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryFullChargePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 350
    const-wide/16 v0, 0xb8

    add-long/2addr p2, v0

    iget-object v0, p0, Landroid/hardware/health/V1_0/HealthConfig;->batteryCycleCountPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 351
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 313
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 314
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/health/V1_0/HealthConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 316
    return-void
.end method
