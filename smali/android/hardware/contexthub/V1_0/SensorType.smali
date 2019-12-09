.class public final Landroid/hardware/contexthub/V1_0/SensorType;
.super Ljava/lang/Object;
.source "SensorType.java"


# static fields
.field public static final ACCELEROMETER:I = 0x1

.field public static final AMBIENT_LIGHT_SENSOR:I = 0x6

.field public static final AUDIO:I = 0x300

.field public static final BAROMETER:I = 0x4

.field public static final BLE:I = 0x500

.field public static final CAMERA:I = 0x400

.field public static final GPS:I = 0x100

.field public static final GYROSCOPE:I = 0x2

.field public static final INSTANT_MOTION_DETECT:I = 0x8

.field public static final MAGNETOMETER:I = 0x3

.field public static final PRIVATE_SENSOR_BASE:I = 0x10000

.field public static final PROXIMITY_SENSOR:I = 0x5

.field public static final RESERVED:I = 0x0

.field public static final STATIONARY_DETECT:I = 0x7

.field public static final WIFI:I = 0x200

.field public static final WWAN:I = 0x600


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    nop

    .line 76
    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 78
    const-string v1, "ACCELEROMETER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 82
    const-string v1, "GYROSCOPE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v2, v2, 0x2

    .line 85
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 86
    const-string v1, "MAGNETOMETER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v2, v2, 0x3

    .line 89
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 90
    const-string v1, "BAROMETER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v2, v2, 0x4

    .line 93
    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 94
    const-string v1, "PROXIMITY_SENSOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v2, v2, 0x5

    .line 97
    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 98
    const-string v1, "AMBIENT_LIGHT_SENSOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v2, v2, 0x6

    .line 101
    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 102
    const-string v1, "STATIONARY_DETECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v2, v2, 0x7

    .line 105
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 106
    const-string v1, "INSTANT_MOTION_DETECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v2, v2, 0x8

    .line 109
    :cond_7
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    .line 110
    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit16 v2, v2, 0x100

    .line 113
    :cond_8
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_9

    .line 114
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit16 v2, v2, 0x200

    .line 117
    :cond_9
    and-int/lit16 v1, p0, 0x300

    const/16 v3, 0x300

    if-ne v1, v3, :cond_a

    .line 118
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit16 v2, v2, 0x300

    .line 121
    :cond_a
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_b

    .line 122
    const-string v1, "CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit16 v2, v2, 0x400

    .line 125
    :cond_b
    and-int/lit16 v1, p0, 0x500

    const/16 v3, 0x500

    if-ne v1, v3, :cond_c

    .line 126
    const-string v1, "BLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit16 v2, v2, 0x500

    .line 129
    :cond_c
    and-int/lit16 v1, p0, 0x600

    const/16 v3, 0x600

    if-ne v1, v3, :cond_d

    .line 130
    const-string v1, "WWAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit16 v2, v2, 0x600

    .line 133
    :cond_d
    const/high16 v1, 0x10000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_e

    .line 134
    const-string v3, "PRIVATE_SENSOR_BASE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/2addr v2, v1

    .line 137
    :cond_e
    if-eq p0, v2, :cond_f

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_f
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 22
    if-nez p0, :cond_0

    .line 23
    const-string p0, "RESERVED"

    return-object p0

    .line 25
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 26
    const-string p0, "ACCELEROMETER"

    return-object p0

    .line 28
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 29
    const-string p0, "GYROSCOPE"

    return-object p0

    .line 31
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 32
    const-string p0, "MAGNETOMETER"

    return-object p0

    .line 34
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 35
    const-string p0, "BAROMETER"

    return-object p0

    .line 37
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 38
    const-string p0, "PROXIMITY_SENSOR"

    return-object p0

    .line 40
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 41
    const-string p0, "AMBIENT_LIGHT_SENSOR"

    return-object p0

    .line 43
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 44
    const-string p0, "STATIONARY_DETECT"

    return-object p0

    .line 46
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 47
    const-string p0, "INSTANT_MOTION_DETECT"

    return-object p0

    .line 49
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 50
    const-string p0, "GPS"

    return-object p0

    .line 52
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 53
    const-string p0, "WIFI"

    return-object p0

    .line 55
    :cond_a
    const/16 v0, 0x300

    if-ne p0, v0, :cond_b

    .line 56
    const-string p0, "AUDIO"

    return-object p0

    .line 58
    :cond_b
    const/16 v0, 0x400

    if-ne p0, v0, :cond_c

    .line 59
    const-string p0, "CAMERA"

    return-object p0

    .line 61
    :cond_c
    const/16 v0, 0x500

    if-ne p0, v0, :cond_d

    .line 62
    const-string p0, "BLE"

    return-object p0

    .line 64
    :cond_d
    const/16 v0, 0x600

    if-ne p0, v0, :cond_e

    .line 65
    const-string p0, "WWAN"

    return-object p0

    .line 67
    :cond_e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_f

    .line 68
    const-string p0, "PRIVATE_SENSOR_BASE"

    return-object p0

    .line 70
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
