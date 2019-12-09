.class public final Landroid/hardware/broadcastradio/V2_0/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANTENNA_DISCONNECTED_TIMEOUT_MS:I = 0x64

.field public static final INVALID_IMAGE:I = 0x0

.field public static final LIST_COMPLETE_TIMEOUT_MS:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    nop

    .line 30
    const-string v1, "INVALID_IMAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    and-int/lit8 v1, p0, 0x64

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 32
    const-string v1, "ANTENNA_DISCONNECTED_TIMEOUT_MS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v1, 0x493e0

    and-int v3, p0, v1

    if-ne v3, v1, :cond_1

    .line 36
    const-string v3, "LIST_COMPLETE_TIMEOUT_MS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    or-int/2addr v2, v1

    .line 39
    :cond_1
    if-eq p0, v2, :cond_2

    .line 40
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

    .line 42
    :cond_2
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 15
    if-nez p0, :cond_0

    .line 16
    const-string p0, "INVALID_IMAGE"

    return-object p0

    .line 18
    :cond_0
    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    .line 19
    const-string p0, "ANTENNA_DISCONNECTED_TIMEOUT_MS"

    return-object p0

    .line 21
    :cond_1
    const v0, 0x493e0

    if-ne p0, v0, :cond_2

    .line 22
    const-string p0, "LIST_COMPLETE_TIMEOUT_MS"

    return-object p0

    .line 24
    :cond_2
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
