.class public final Landroid/hardware/broadcastradio/V2_0/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final INVALID_ARGUMENTS:I = 0x3

.field public static final INVALID_STATE:I = 0x4

.field public static final NOT_SUPPORTED:I = 0x5

.field public static final OK:I = 0x0

.field public static final TIMEOUT:I = 0x6

.field public static final UNKNOWN_ERROR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    nop

    .line 40
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 42
    const-string v1, "UNKNOWN_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 46
    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v2, v2, 0x2

    .line 49
    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 50
    const-string v1, "INVALID_ARGUMENTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v2, v2, 0x3

    .line 53
    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 54
    const-string v1, "INVALID_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v2, v2, 0x4

    .line 57
    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 58
    const-string v1, "NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v2, v2, 0x5

    .line 61
    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 62
    const-string v1, "TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v2, v2, 0x6

    .line 65
    :cond_5
    if-eq p0, v2, :cond_6

    .line 66
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

    .line 68
    :cond_6
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string p0, "OK"

    return-object p0

    .line 16
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 17
    const-string p0, "UNKNOWN_ERROR"

    return-object p0

    .line 19
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 20
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    .line 22
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 23
    const-string p0, "INVALID_ARGUMENTS"

    return-object p0

    .line 25
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 26
    const-string p0, "INVALID_STATE"

    return-object p0

    .line 28
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 29
    const-string p0, "NOT_SUPPORTED"

    return-object p0

    .line 31
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 32
    const-string p0, "TIMEOUT"

    return-object p0

    .line 34
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
