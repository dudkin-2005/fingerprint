.class public final Landroid/hardware/weaver/V1_0/WeaverReadResponse;
.super Ljava/lang/Object;
.source "WeaverReadResponse.java"


# instance fields
.field public timeout:I

.field public final value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

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
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 62
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 63
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 64
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 63
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 69
    new-instance v4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    invoke-direct {v4}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;-><init>()V

    .line 70
    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
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
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 107
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 108
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 109
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    :goto_0
    if-ge v2, v1, :cond_0

    .line 111
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 15
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    if-eq v2, v3, :cond_2

    .line 21
    return v1

    .line 23
    :cond_2
    check-cast p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 24
    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    iget v3, p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-eq v2, v3, :cond_3

    .line 25
    return v1

    .line 27
    :cond_3
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 28
    return v1

    .line 30
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 80
    const-wide/16 v4, 0x0

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 82
    const-wide/16 v6, 0x8

    add-long v2, p3, v6

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 83
    mul-int/lit8 v7, v6, 0x1

    int-to-long v9, v7

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v2, v4

    .line 83
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 87
    iget-object v2, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 88
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    .line 90
    mul-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    .line 91
    iget-object v4, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 53
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 54
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ".timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 8

    .line 121
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 123
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 124
    const-wide/16 v3, 0x8

    add-long/2addr p2, v3

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 125
    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 126
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 127
    :goto_0
    if-ge v5, v2, :cond_0

    .line 128
    mul-int/lit8 v4, v5, 0x1

    int-to-long v6, v4

    iget-object v4, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_0
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 132
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 97
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 100
    return-void
.end method
