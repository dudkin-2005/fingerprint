.class Lcom/android/server/am/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final ALLOW_RESTART:Z = true

.field private static final BOUNDS_CONFLICT_MIN_DISTANCE:I = 0x4

.field private static final MARGIN_SIZE_DENOMINATOR:I = 0x4

.field private static final MINIMAL_STEP:I = 0x1

.field private static final SHIFT_POLICY_DIAGONAL_DOWN:I = 0x1

.field private static final SHIFT_POLICY_HORIZONTAL_LEFT:I = 0x3

.field private static final SHIFT_POLICY_HORIZONTAL_RIGHT:I = 0x2

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final WINDOW_SIZE_DENOMINATOR:I = 0x2


# instance fields
.field private final mAvailableRect:Landroid/graphics/Rect;

.field private final mTmpOriginal:Landroid/graphics/Rect;

.field private final mTmpProposal:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    return-void
.end method

.method private static boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 287
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 288
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 290
    invoke-static {p0, v2}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-static {p0, v2}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    invoke-static {p0, v2}, Lcom/android/server/am/TaskLaunchParamsModifier;->closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    return v1

    .line 286
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 297
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static final closeLeftBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 311
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 312
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 311
    :goto_0
    return p0
.end method

.method private static final closeLeftTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 301
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    .line 302
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 301
    :goto_0
    return p0
.end method

.method private static final closeRightBottomCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 316
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    .line 317
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 316
    :goto_0
    return p0
.end method

.method private static final closeRightTopCorner(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 306
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    .line 307
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 306
    :goto_0
    return p0
.end method

.method private getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    .line 171
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v0

    .line 172
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v1, :cond_0

    .line 173
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 175
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 176
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr p2, p1

    float-to-int v0, p2

    .line 178
    :cond_1
    return v0
.end method

.method private getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I
    .locals 3

    .line 160
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v0

    .line 161
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-lez v1, :cond_0

    .line 162
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 164
    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 165
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr p2, p1

    float-to-int v0, p2

    .line 167
    :cond_1
    return v0
.end method

.method static getFreeformHeight(Landroid/graphics/Rect;)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static getFreeformStartLeft(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 129
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method static getFreeformStartTop(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 134
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method static getFreeformWidth(Landroid/graphics/Rect;)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static getHorizontalStep(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static getVerticalStep(Landroid/graphics/Rect;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZI",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 226
    nop

    .line 227
    const/4 v0, 0x0

    :cond_0
    invoke-static {p3, p1}, Lcom/android/server/am/TaskLaunchParamsModifier;->boundsConflict(Landroid/graphics/Rect;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 231
    invoke-direct {p0, p3, p2, p5}, Lcom/android/server/am/TaskLaunchParamsModifier;->shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    if-nez p4, :cond_1

    .line 235
    iget-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    goto :goto_0

    .line 240
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 241
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 242
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    .line 240
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    const/4 v0, 0x1

    .line 245
    :cond_2
    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 246
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpOriginal:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 251
    nop

    .line 254
    :cond_4
    :goto_0
    invoke-virtual {p6, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 255
    return-void
.end method

.method private positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    iget p4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p3

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    iget-object v6, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 187
    return-void
.end method

.method private positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    iget p4, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    iget-object v6, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 195
    return-void
.end method

.method private positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartLeft(Landroid/graphics/Rect;)I

    move-result v0

    .line 216
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformStartTop(Landroid/graphics/Rect;)I

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    invoke-virtual {v2, v0, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v6, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 221
    return-void
.end method

.method private positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 199
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p3

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p4

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    iget-object v3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 203
    return-void
.end method

.method private positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            "II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 207
    iget-object v1, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p4

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget-object v3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mTmpProposal:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskLaunchParamsModifier;->position(Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/graphics/Rect;ZILandroid/graphics/Rect;)V

    .line 211
    return-void
.end method

.method private shiftStartingPoint(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2

    .line 269
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getHorizontalStep(Landroid/graphics/Rect;)I

    move-result v0

    .line 270
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getVerticalStep(Landroid/graphics/Rect;)I

    move-result p2

    .line 272
    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    .line 280
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 274
    :pswitch_0
    neg-int p2, v0

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    goto :goto_0

    .line 277
    :pswitch_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 278
    nop

    .line 283
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shiftedTooFar(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    .line 264
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-gt p3, v2, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 260
    :pswitch_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 262
    :pswitch_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 264
    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 6

    .line 84
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    iget-object p3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    iget-object v5, p7, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 94
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformWidth(Landroid/graphics/Rect;)I

    move-result v3

    iget-object p2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    .line 96
    invoke-static {p2}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFreeformHeight(Landroid/graphics/Rect;)I

    move-result v4

    .line 95
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 97
    return p1

    .line 100
    :cond_1
    iget-object p3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalWidth(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v3

    .line 101
    iget-object p3, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3}, Lcom/android/server/am/TaskLaunchParamsModifier;->getFinalHeight(Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)I

    move-result v4

    .line 102
    iget p3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 p3, p3, 0x70

    .line 103
    iget p4, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 p4, p4, 0x7

    .line 104
    const/16 p5, 0x30

    const/4 p6, 0x5

    if-ne p3, p5, :cond_3

    .line 105
    if-ne p4, p6, :cond_2

    .line 106
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionTopLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 110
    :cond_3
    const/16 p5, 0x50

    if-ne p3, p5, :cond_5

    .line 111
    if-ne p4, p6, :cond_4

    .line 112
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomRight(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionBottomLeft(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_0

    .line 119
    :cond_5
    const-string p3, "ActivityManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Received unsupported gravity: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", positioning in the center instead."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/android/server/am/TaskLaunchParamsModifier;->mAvailableRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->positionCenter(Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 124
    :goto_0
    return p1

    .line 85
    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
