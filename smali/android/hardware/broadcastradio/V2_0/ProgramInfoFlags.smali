.class public final Landroid/hardware/broadcastradio/V2_0/ProgramInfoFlags;
.super Ljava/lang/Object;
.source "ProgramInfoFlags.java"


# static fields
.field public static final LIVE:I = 0x1

.field public static final MUTED:I = 0x2

.field public static final STEREO:I = 0x20

.field public static final TRAFFIC_ANNOUNCEMENT:I = 0x8

.field public static final TRAFFIC_PROGRAM:I = 0x4

.field public static final TUNED:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    nop

    .line 64
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    const-string v1, "LIVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 69
    const-string v1, "MUTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v2, v2, 0x2

    .line 72
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 73
    const-string v1, "TRAFFIC_PROGRAM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v2, v2, 0x4

    .line 76
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 77
    const-string v1, "TRAFFIC_ANNOUNCEMENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v2, v2, 0x8

    .line 80
    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 81
    const-string v1, "TUNED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v2, v2, 0x10

    .line 84
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    .line 85
    const-string v1, "STEREO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v2, v2, 0x20

    .line 88
    :cond_5
    if-eq p0, v2, :cond_6

    .line 89
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

    .line 91
    :cond_6
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 40
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 41
    const-string p0, "LIVE"

    return-object p0

    .line 43
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 44
    const-string p0, "MUTED"

    return-object p0

    .line 46
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 47
    const-string p0, "TRAFFIC_PROGRAM"

    return-object p0

    .line 49
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 50
    const-string p0, "TRAFFIC_ANNOUNCEMENT"

    return-object p0

    .line 52
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 53
    const-string p0, "TUNED"

    return-object p0

    .line 55
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 56
    const-string p0, "STEREO"

    return-object p0

    .line 58
    :cond_5
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
