.class public Lcom/android/server/OnePlusPowerController$Cluster;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field private mCluster:[[D

.field private mSize:I

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "dataNum"    # I
    .param p3, "dimNum"    # I

    .line 1855
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    filled-new-array {p2, p3}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    .line 1859
    return-void
.end method


# virtual methods
.method public getCluster()[[D
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 1848
    iget v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    return v0
.end method

.method public setCluster([[D)V
    .registers 2
    .param p1, "cluster"    # [[D

    .line 1844
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    .line 1845
    return-void
.end method

.method public setSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 1852
    iput p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    .line 1853
    return-void
.end method
