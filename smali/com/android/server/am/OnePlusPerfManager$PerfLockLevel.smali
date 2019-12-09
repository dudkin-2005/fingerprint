.class public Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfLockLevel"
.end annotation


# instance fields
.field private mParam:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "param"    # Ljava/lang/String;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->readParam(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private readParam(Ljava/lang/String;)V
    .registers 8
    .param p1, "param"    # Ljava/lang/String;

    .line 557
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 558
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 560
    .local v1, "size":I
    :try_start_e
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    .line 561
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_26

    .line 562
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPerfManager;->numberStringToInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_23} :catch_27

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 566
    .end local v2    # "i":I
    :cond_26
    goto :goto_4a

    .line 564
    :catch_27
    move-exception v2

    .line 565
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception readParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ex->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method


# virtual methods
.method public getParam()[I
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfLockLevel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v1, v1

    if-lez v1, :cond_3b

    .line 576
    const/4 v1, 0x0

    .line 576
    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2b

    .line 577
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 580
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_3b
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
