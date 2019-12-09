.class Lcom/android/server/IpSecService$RefcountedResourceArray;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefcountedResourceArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/IpSecService$IResource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    .line 536
    iput-object p1, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mTypeName:Ljava/lang/String;

    .line 537
    return-void
.end method


# virtual methods
.method getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$RefcountedResource;

    .line 555
    if-eqz v0, :cond_0

    .line 560
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mTypeName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "No such %s found for given id: %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object p1

    return-object p1
.end method

.method put(ILcom/android/server/IpSecService$RefcountedResource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;)V"
        }
    .end annotation

    .line 564
    const-string v0, "Null resources cannot be added"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    return-void
.end method

.method remove(I)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 570
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
