.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 73
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "other"    # Landroid/graphics/Rect;

    .line 194
    if-eq p0, p1, :cond_1f

    if-eqz p0, :cond_12

    .line 195
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1f

    :cond_12
    if-eqz p1, :cond_1d

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 194
    :goto_20
    return v0
.end method


# virtual methods
.method diffOverrideBounds(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 268
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_8
    const/4 v0, 0x0

    .line 274
    .local v0, "boundsChange":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 276
    .local v1, "existingBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_1b

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1b

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1d

    .line 278
    :cond_1b
    or-int/lit8 v0, v0, 0x1

    .line 281
    :cond_1d
    if-eqz p1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_35

    .line 283
    :cond_33
    or-int/lit8 v0, v0, 0x2

    .line 286
    :cond_35
    return v0
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 501
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "childPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4a
    if-ltz v1, :cond_72

    .line 506
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 507
    .local v2, "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 505
    .end local v2    # "cc":Lcom/android/server/wm/ConfigurationContainer;, "TE;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_4a

    .line 510
    .end local v1    # "i":I
    :cond_72
    return-void
.end method

.method public equivalentOverrideBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 187
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getActivityType()I
    .registers 2

    .line 359
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 3

    .line 205
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 210
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 211
    return-void
.end method

.method protected abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 96
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 146
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 513
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideBounds()Landroid/graphics/Rect;
    .registers 3

    .line 218
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOverrideBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 236
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 237
    return-void
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 114
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .registers 2

    .line 290
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 2

    .line 295
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 7
    .param p1, "other"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 399
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 400
    .local v0, "thisType":I
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    .line 402
    .local v1, "otherType":I
    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 403
    return v2

    .line 405
    :cond_c
    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne v0, v3, :cond_11

    .line 407
    return v4

    .line 410
    :cond_11
    if-eqz v0, :cond_18

    if-nez v1, :cond_16

    goto :goto_18

    :cond_16
    move v2, v4

    nop

    :cond_18
    :goto_18
    return v2
.end method

.method public hasOverrideBounds()Z
    .registers 2

    .line 228
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public inFreeformWindowingMode()Z
    .registers 3

    .line 353
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inMultiWindowMode()Z
    .registers 3

    .line 310
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 311
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 312
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public inPinnedWindowingMode()Z
    .registers 3

    .line 349
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenPrimaryWindowingMode()Z
    .registers 3

    .line 334
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public inSplitScreenSecondaryWindowingMode()Z
    .registers 3

    .line 327
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 328
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 330
    .local v0, "windowingMode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 3

    .line 318
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 319
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 321
    .local v0, "windowingMode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method public isActivityTypeAssistant()Z
    .registers 3

    .line 386
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeHome()Z
    .registers 3

    .line 378
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeRecents()Z
    .registers 3

    .line 382
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isActivityTypeStandard()Z
    .registers 3

    .line 390
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .registers 3

    .line 394
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 395
    .local v0, "activityType":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    nop

    :cond_c
    :goto_c
    return v1
.end method

.method isAlwaysOnTop()Z
    .registers 2

    .line 517
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method public isCompatible(II)Z
    .registers 8
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 427
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 428
    .local v0, "thisActivityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 429
    .local v1, "thisWindowingMode":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_e

    move v4, v3

    goto :goto_f

    :cond_e
    move v4, v2

    .line 430
    .local v4, "sameActivityType":Z
    :goto_f
    if-ne v1, p1, :cond_13

    move v2, v3

    nop

    .line 432
    .local v2, "sameWindowingMode":Z
    :cond_13
    if-eqz v4, :cond_18

    if-eqz v2, :cond_18

    .line 433
    return v3

    .line 436
    :cond_18
    if-eqz p2, :cond_1c

    if-ne p2, v3, :cond_22

    .line 437
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_23

    .line 439
    :cond_22
    return v4

    .line 443
    :cond_23
    return v2
.end method

.method public matchParentBounds()Z
    .registers 2

    .line 176
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 104
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_20

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    .line 108
    .local v1, "child":Lcom/android/server/wm/ConfigurationContainer;
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    .end local v1    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 110
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .registers 4

    .line 156
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 157
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_17

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_1e

    .line 161
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 163
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_30

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    .line 165
    .local v2, "child":Lcom/android/server/wm/ConfigurationContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 163
    .end local v2    # "child":Lcom/android/server/wm/ConfigurationContainer;
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 167
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 125
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 129
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    goto :goto_1c

    :cond_1a
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 134
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_31
    if-ltz v1, :cond_43

    .line 137
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Lcom/android/server/wm/ConfigurationContainerListener;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 139
    .end local v1    # "i":I
    :cond_43
    return-void
.end method

.method protected onParentChanged()V
    .registers 3

    .line 462
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    .line 465
    .local v0, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v0, :cond_e

    .line 467
    iget-object v1, v0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 471
    :cond_e
    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 447
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 448
    return-void

    .line 450
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, v0}, Lcom/android/server/wm/ConfigurationContainerListener;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    return-void
.end method

.method public setActivityType(I)V
    .registers 6
    .param p1, "activityType"    # I

    .line 364
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 365
    .local v0, "currentActivityType":I
    if-ne v0, p1, :cond_7

    .line 366
    return-void

    .line 368
    :cond_7
    if-nez v0, :cond_1f

    .line 372
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 373
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 374
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    return-void

    .line 369
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change activity type once set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBounds(IIII)I
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 263
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 248
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 250
    .local v0, "boundsChange":I
    if-nez v0, :cond_7

    .line 251
    return v0

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    return v0
.end method

.method public setWindowingMode(I)V
    .registers 4
    .param p1, "windowingMode"    # I

    .line 300
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 345
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result v0

    return v0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/ConfigurationContainerListener;

    .line 455
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 485
    .local p0, "this":Lcom/android/server/wm/ConfigurationContainer;, "Lcom/android/server/wm/ConfigurationContainer<TE;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 486
    .local v0, "token":J
    if-eqz p4, :cond_a

    iget-boolean v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v2, :cond_14

    .line 487
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 489
    :cond_14
    if-nez p4, :cond_2a

    .line 490
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 491
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Configuration;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 493
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 494
    return-void
.end method
