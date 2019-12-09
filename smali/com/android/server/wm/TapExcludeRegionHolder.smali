.class Lcom/android/server/wm/TapExcludeRegionHolder;
.super Ljava/lang/Object;
.source "TapExcludeRegionHolder.java"


# instance fields
.field private mTapExcludeRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 53
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method updateRegion(IIIII)V
    .locals 1

    .line 32
    if-lez p4, :cond_2

    if-gtz p5, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 39
    if-nez v0, :cond_1

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    :cond_1
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object p2, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    return-void

    .line 34
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRects:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    return-void
.end method
