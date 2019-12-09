.class public final Landroid/hardware/health/V1_0/BatteryHealth;
.super Ljava/lang/Object;
.source "BatteryHealth.java"


# static fields
.field public static final COLD:I = 0x7

.field public static final DEAD:I = 0x4

.field public static final GOOD:I = 0x2

.field public static final OVERHEAT:I = 0x3

.field public static final OVER_VOLTAGE:I = 0x5

.field public static final UNKNOWN:I = 0x1

.field public static final UNSPECIFIED_FAILURE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    nop

    .line 43
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 44
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 48
    const-string v1, "GOOD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    or-int/lit8 v2, v2, 0x2

    .line 51
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 52
    const-string v1, "OVERHEAT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    or-int/lit8 v2, v2, 0x3

    .line 55
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 56
    const-string v1, "DEAD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    or-int/lit8 v2, v2, 0x4

    .line 59
    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 60
    const-string v1, "OVER_VOLTAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/lit8 v2, v2, 0x5

    .line 63
    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 64
    const-string v1, "UNSPECIFIED_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/lit8 v2, v2, 0x6

    .line 67
    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 68
    const-string v1, "COLD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v2, v2, 0x7

    .line 71
    :cond_6
    if-eq p0, v2, :cond_7

    .line 72
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

    .line 74
    :cond_7
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 16
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 17
    const-string p0, "UNKNOWN"

    return-object p0

    .line 19
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 20
    const-string p0, "GOOD"

    return-object p0

    .line 22
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 23
    const-string p0, "OVERHEAT"

    return-object p0

    .line 25
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 26
    const-string p0, "DEAD"

    return-object p0

    .line 28
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 29
    const-string p0, "OVER_VOLTAGE"

    return-object p0

    .line 31
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 32
    const-string p0, "UNSPECIFIED_FAILURE"

    return-object p0

    .line 34
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 35
    const-string p0, "COLD"

    return-object p0

    .line 37
    :cond_6
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
