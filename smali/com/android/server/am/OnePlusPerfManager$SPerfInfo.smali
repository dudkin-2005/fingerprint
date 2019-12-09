.class public Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPerfInfo"
.end annotation


# instance fields
.field public mLevel:Ljava/lang/String;

.field public mMode:I

.field public mPkgName:Ljava/lang/String;

.field public mTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "level"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 514
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 515
    # getter for: Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 518
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 519
    iput p2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 520
    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 521
    iput p4, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 522
    return-void
.end method


# virtual methods
.method public resetValue()V
    .registers 2

    .line 532
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 534
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 535
    # getter for: Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 536
    return-void
.end method

.method public setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V
    .registers 3
    .param p1, "spi"    # Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 525
    iget-object v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    .line 526
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 527
    iget-object v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 528
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 529
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SPerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
