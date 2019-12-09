.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcasts"
.end annotation


# instance fields
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 1260
    return-void
.end method

.method private getOrAllocate(I)Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1310
    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1312
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1314
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1306
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1263
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 1264
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public packagesForUserId(I)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    return-object p1
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    move-result-object p1

    .line 1269
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1281
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 1274
    if-eqz p1, :cond_0

    .line 1275
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    .line 1297
    nop

    .line 1298
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1299
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    return v1
.end method

.method public userIdAt(I)I
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public userIdCount()I
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
