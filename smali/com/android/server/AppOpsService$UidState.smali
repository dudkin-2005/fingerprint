.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidState"
.end annotation


# instance fields
.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingAskOp:I

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public receivedPendingAskResponse:Z

.field public startNesting:I

.field public state:I

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    .line 328
    iput v0, p0, Lcom/android/server/AppOpsService$UidState;->pendingState:I

    .line 343
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 344
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 366
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 367
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 368
    if-eqz p2, :cond_1

    .line 369
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-nez v0, :cond_1

    if-ltz v1, :cond_1

    .line 370
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$ModeCallback;

    iget v3, v3, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 372
    iput-boolean v2, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 373
    nop

    .line 369
    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 378
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 348
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 349
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 381
    nop

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 386
    if-nez v2, :cond_0

    .line 387
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 384
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_6

    .line 394
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_6

    .line 395
    iget-object v3, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 396
    invoke-virtual {v3}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_5

    .line 397
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Op;

    iget v5, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, v1, :cond_4

    .line 398
    if-nez v2, :cond_3

    .line 399
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 401
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/server/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v2}, Lcom/android/server/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 396
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 394
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 406
    :cond_6
    iput-object v2, p0, Lcom/android/server/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 407
    return-void
.end method

.method evalMode(I)I
    .locals 1

    .line 357
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 358
    iget p1, p0, Lcom/android/server/AppOpsService$UidState;->state:I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 359
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 358
    :goto_0
    return p1

    .line 361
    :cond_1
    return p1
.end method

.method public isDefault()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 353
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 352
    :goto_1
    return v0
.end method
