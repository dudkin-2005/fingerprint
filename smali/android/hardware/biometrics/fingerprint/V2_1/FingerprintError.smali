.class public final Landroid/hardware/biometrics/fingerprint/V2_1/FingerprintError;
.super Ljava/lang/Object;
.source "FingerprintError.java"


# static fields
.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_LOCKOUT:I = 0x7

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final ERROR_VENDOR:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    nop

    .line 66
    const-string v1, "ERROR_NO_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 68
    const-string v1, "ERROR_HW_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 71
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 72
    const-string v1, "ERROR_UNABLE_TO_PROCESS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v2, v2, 0x2

    .line 75
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 76
    const-string v1, "ERROR_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v2, v2, 0x3

    .line 79
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 80
    const-string v1, "ERROR_NO_SPACE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v2, v2, 0x4

    .line 83
    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 84
    const-string v1, "ERROR_CANCELED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v2, v2, 0x5

    .line 87
    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 88
    const-string v1, "ERROR_UNABLE_TO_REMOVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v2, v2, 0x6

    .line 91
    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    .line 92
    const-string v1, "ERROR_LOCKOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v2, v2, 0x7

    .line 95
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 96
    const-string v1, "ERROR_VENDOR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v2, v2, 0x8

    .line 99
    :cond_7
    if-eq p0, v2, :cond_8

    .line 100
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

    .line 102
    :cond_8
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string p0, "ERROR_NO_ERROR"

    return-object p0

    .line 36
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 37
    const-string p0, "ERROR_HW_UNAVAILABLE"

    return-object p0

    .line 39
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 40
    const-string p0, "ERROR_UNABLE_TO_PROCESS"

    return-object p0

    .line 42
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 43
    const-string p0, "ERROR_TIMEOUT"

    return-object p0

    .line 45
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 46
    const-string p0, "ERROR_NO_SPACE"

    return-object p0

    .line 48
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 49
    const-string p0, "ERROR_CANCELED"

    return-object p0

    .line 51
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 52
    const-string p0, "ERROR_UNABLE_TO_REMOVE"

    return-object p0

    .line 54
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 55
    const-string p0, "ERROR_LOCKOUT"

    return-object p0

    .line 57
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 58
    const-string p0, "ERROR_VENDOR"

    return-object p0

    .line 60
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
