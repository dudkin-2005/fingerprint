.class public Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfInfo"
.end annotation


# instance fields
.field public mLevel:Ljava/lang/String;

.field public mPerfLock:I

.field public mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 492
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "perfLock"    # I
    .param p3, "level"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 492
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    .line 496
    iput p2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 497
    iput-object p3, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    .line 498
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerfInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
