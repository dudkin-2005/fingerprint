.class public final Landroid/hardware/weaver/V1_0/WeaverConfig;
.super Ljava/lang/Object;
.source "WeaverConfig.java"


# instance fields
.field public keySize:I

.field public slots:I

.field public valueSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Landroid/hardware/weaver/V1_0/WeaverConfig;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 71
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 72
    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 73
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 72
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 78
    new-instance v4, Landroid/hardware/weaver/V1_0/WeaverConfig;

    invoke-direct {v4}, Landroid/hardware/weaver/V1_0/WeaverConfig;-><init>()V

    .line 79
    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/weaver/V1_0/WeaverConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 80
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
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
            "Landroid/hardware/weaver/V1_0/WeaverConfig;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 105
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 106
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 107
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0xc

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    :goto_0
    if-ge v2, v1, :cond_0

    .line 109
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/weaver/V1_0/WeaverConfig;

    mul-int/lit8 v5, v2, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/weaver/V1_0/WeaverConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 114
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 115
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 17
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 18
    return v0

    .line 20
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 21
    return v1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/weaver/V1_0/WeaverConfig;

    if-eq v2, v3, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    check-cast p1, Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 27
    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    iget v3, p1, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-eq v2, v3, :cond_3

    .line 28
    return v1

    .line 30
    :cond_3
    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    iget v3, p1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-eq v2, v3, :cond_4

    .line 31
    return v1

    .line 33
    :cond_4
    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    iget p1, p1, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    if-eq v2, p1, :cond_5

    .line 34
    return v1

    .line 36
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    .line 89
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    .line 90
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    .line 91
    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    .line 92
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 62
    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 63
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/weaver/V1_0/WeaverConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 64
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ".slots = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", .keySize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", .valueSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 119
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 120
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 121
    const-wide/16 v0, 0x8

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 122
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 95
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 96
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/weaver/V1_0/WeaverConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 98
    return-void
.end method