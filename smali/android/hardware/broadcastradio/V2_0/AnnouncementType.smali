.class public final Landroid/hardware/broadcastradio/V2_0/AnnouncementType;
.super Ljava/lang/Object;
.source "AnnouncementType.java"


# static fields
.field public static final EMERGENCY:B = 0x1t

.field public static final EVENT:B = 0x6t

.field public static final MISC:B = 0x8t

.field public static final NEWS:B = 0x5t

.field public static final SPORT:B = 0x7t

.field public static final TRAFFIC:B = 0x3t

.field public static final WARNING:B = 0x2t

.field public static final WEATHER:B = 0x4t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(B)Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    nop

    .line 60
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    const-string v1, "EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    int-to-byte v1, v2

    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 65
    const-string v2, "WARNING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 68
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 69
    const-string v2, "TRAFFIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    .line 72
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 73
    const-string v2, "WEATHER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    .line 76
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 77
    const-string v2, "NEWS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    .line 80
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 81
    const-string v2, "EVENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    .line 84
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 85
    const-string v2, "SPORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    .line 88
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 89
    const-string v2, "MISC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 92
    :cond_7
    if-eq p0, v1, :cond_8

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_8
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(B)Ljava/lang/String;
    .locals 2

    .line 30
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 31
    const-string p0, "EMERGENCY"

    return-object p0

    .line 33
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 34
    const-string p0, "WARNING"

    return-object p0

    .line 36
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 37
    const-string p0, "TRAFFIC"

    return-object p0

    .line 39
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 40
    const-string p0, "WEATHER"

    return-object p0

    .line 42
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 43
    const-string p0, "NEWS"

    return-object p0

    .line 45
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 46
    const-string p0, "EVENT"

    return-object p0

    .line 48
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 49
    const-string p0, "SPORT"

    return-object p0

    .line 51
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 52
    const-string p0, "MISC"

    return-object p0

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method