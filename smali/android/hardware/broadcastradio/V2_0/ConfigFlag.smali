.class public final Landroid/hardware/broadcastradio/V2_0/ConfigFlag;
.super Ljava/lang/Object;
.source "ConfigFlag.java"


# static fields
.field public static final DAB_DAB_LINKING:I = 0x6

.field public static final DAB_DAB_SOFT_LINKING:I = 0x8

.field public static final DAB_FM_LINKING:I = 0x7

.field public static final DAB_FM_SOFT_LINKING:I = 0x9

.field public static final FORCE_ANALOG:I = 0x2

.field public static final FORCE_DIGITAL:I = 0x3

.field public static final FORCE_MONO:I = 0x1

.field public static final RDS_AF:I = 0x4

.field public static final RDS_REG:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    nop

    .line 92
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 93
    const-string v1, "FORCE_MONO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 96
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 97
    const-string v1, "FORCE_ANALOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v2, v2, 0x2

    .line 100
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 101
    const-string v1, "FORCE_DIGITAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v2, v2, 0x3

    .line 104
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 105
    const-string v1, "RDS_AF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v2, v2, 0x4

    .line 108
    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 109
    const-string v1, "RDS_REG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v2, v2, 0x5

    .line 112
    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 113
    const-string v1, "DAB_DAB_LINKING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v2, v2, 0x6

    .line 116
    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 117
    const-string v1, "DAB_FM_LINKING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v2, v2, 0x7

    .line 120
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 121
    const-string v1, "DAB_DAB_SOFT_LINKING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v2, v2, 0x8

    .line 124
    :cond_7
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 125
    const-string v1, "DAB_FM_SOFT_LINKING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v2, v2, 0x9

    .line 128
    :cond_8
    if-eq p0, v2, :cond_9

    .line 129
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

    .line 131
    :cond_9
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 60
    const-string p0, "FORCE_MONO"

    return-object p0

    .line 62
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 63
    const-string p0, "FORCE_ANALOG"

    return-object p0

    .line 65
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 66
    const-string p0, "FORCE_DIGITAL"

    return-object p0

    .line 68
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 69
    const-string p0, "RDS_AF"

    return-object p0

    .line 71
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 72
    const-string p0, "RDS_REG"

    return-object p0

    .line 74
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 75
    const-string p0, "DAB_DAB_LINKING"

    return-object p0

    .line 77
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 78
    const-string p0, "DAB_FM_LINKING"

    return-object p0

    .line 80
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 81
    const-string p0, "DAB_DAB_SOFT_LINKING"

    return-object p0

    .line 83
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 84
    const-string p0, "DAB_FM_SOFT_LINKING"

    return-object p0

    .line 86
    :cond_8
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
