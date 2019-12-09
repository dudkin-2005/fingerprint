.class public Lcom/android/server/wm/TaskStack;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/BoundsAnimationTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Lcom/android/server/wm/BoundsAnimationTarget;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field private final mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field private mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

.field private mAnimationBackgroundSurfaceIsShown:Z

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimatingToFullscreen:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private mCancelCurrentBoundsAnimation:Z

.field mDeferRemoval:Z

.field private mDensity:I

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mMinimizeAmount:F

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private mRotation:I

.field final mStackId:I

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field final mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/StackWindowController;)V
    .locals 2

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 115
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 116
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 134
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 157
    new-instance v0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 162
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 163
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskStack;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 164
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x105008e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 166
    const/16 p1, 0x791c

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 167
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .locals 7

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1200
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    move v4, v2

    goto :goto_1

    .line 1200
    :cond_1
    :goto_0
    nop

    .line 1201
    move v4, v1

    :goto_1
    if-eqz p1, :cond_5

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 1205
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1206
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1210
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1211
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1213
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p1

    .line 1214
    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    if-le p1, v5, :cond_3

    .line 1215
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1218
    :cond_3
    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    .line 1220
    nop

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 1222
    nop

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v5

    .line 1225
    if-ne v0, v3, :cond_4

    .line 1229
    nop

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v0

    .line 1231
    nop

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    .line 1231
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1234
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float p1, p1

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    sub-float/2addr p1, v3

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1237
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1238
    goto :goto_2

    .line 1240
    :cond_4
    sub-int v0, v5, v4

    .line 1247
    nop

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 1249
    nop

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    .line 1250
    invoke-virtual {p0, v2, v6}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v2

    .line 1252
    nop

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p1

    add-int/2addr v2, v5

    .line 1252
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1255
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1259
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    sub-int v3, p1, v3

    int-to-float v3, v3

    mul-float/2addr v5, v3

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    float-to-int v0, v5

    add-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 1264
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1266
    :goto_2
    return v1

    .line 1202
    :cond_5
    :goto_3
    return v2
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .locals 5

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1271
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1272
    return v1

    .line 1275
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1278
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1279
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v4, p1

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1281
    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1284
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v4, p1

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1287
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1288
    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v4, p1

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v1, v4

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 1294
    :cond_3
    :goto_0
    return v3
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 245
    move v0, v1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 247
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 245
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 249
    :cond_2
    return-void
.end method

.method private calculateBoundsForWindowModeChange()Landroid/graphics/Rect;
    .locals 7

    .line 818
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    .line 819
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 820
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 821
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 857
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 828
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 829
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 830
    if-eqz v1, :cond_4

    .line 831
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 832
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 833
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 839
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 841
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 844
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 846
    :goto_2
    move v6, v1

    goto :goto_3

    .line 844
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 846
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 847
    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 846
    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 848
    return-object v0
.end method

.method private canSpecifyOrientation()Z
    .locals 3

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v1

    .line 1794
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    return v2
.end method

.method private computeMaxPosition(I)I
    .locals 2

    .line 686
    :goto_0
    if-lez p1, :cond_3

    .line 687
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 688
    nop

    .line 689
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 690
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 691
    :goto_2
    if-nez v0, :cond_2

    .line 692
    goto :goto_3

    .line 694
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 695
    goto :goto_0

    .line 696
    :cond_3
    :goto_3
    return p1
.end method

.method private computeMinPosition(II)I
    .locals 2

    .line 667
    :goto_0
    if-ge p1, p2, :cond_3

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 669
    nop

    .line 670
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 671
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 672
    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    .line 673
    goto :goto_3

    .line 675
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 676
    goto :goto_0

    .line 677
    :cond_3
    :goto_3
    return p1
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .locals 2

    .line 636
    const/4 v0, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 637
    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    move p1, v0

    goto :goto_1

    .line 637
    :cond_1
    :goto_0
    nop

    .line 639
    const/4 p1, 0x1

    :goto_1
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowList;->size()I

    move-result p3

    .line 640
    nop

    .line 641
    if-eqz p4, :cond_2

    .line 643
    move v1, p3

    goto :goto_2

    .line 641
    :cond_2
    add-int/lit8 v1, p3, -0x1

    .line 643
    :goto_2
    if-eqz p1, :cond_3

    .line 644
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v0

    goto :goto_3

    .line 646
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v1

    .line 650
    :goto_3
    const/high16 p1, -0x80000000

    if-ne p2, p1, :cond_4

    if-nez v0, :cond_4

    .line 651
    return p1

    .line 652
    :cond_4
    const p1, 0x7fffffff

    if-ne p2, p1, :cond_6

    .line 653
    if-eqz p4, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    :goto_4
    if-ne v1, p3, :cond_6

    .line 654
    return p1

    .line 657
    :cond_6
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getDockSide(Landroid/graphics/Rect;)I
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 1470
    const/4 p1, -0x1

    return p1

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method private getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I
    .locals 2

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    const/4 p1, -0x1

    return p1

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1481
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result p1

    return p1
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    .line 952
    move v9, v7

    goto :goto_0

    .line 950
    :cond_0
    nop

    .line 952
    move v9, v6

    :goto_0
    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 953
    if-eqz v3, :cond_6

    .line 954
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 955
    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 956
    return-void

    .line 962
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 963
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v11, v2, Landroid/view/DisplayInfo;->rotation:I

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v14, v3

    move-object v15, v4

    invoke-interface/range {v10 .. v15}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 965
    new-instance v10, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 969
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    iget-object v8, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v2, v10

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 970
    invoke-virtual {v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 972
    if-eqz p5, :cond_4

    .line 973
    if-eqz v9, :cond_3

    .line 974
    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 976
    :cond_3
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 979
    :cond_4
    if-eqz v9, :cond_5

    .line 980
    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 982
    :cond_5
    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 985
    :goto_2
    return-void

    .line 989
    :cond_6
    if-nez p5, :cond_8

    .line 990
    if-eqz v9, :cond_7

    .line 991
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 993
    :cond_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 996
    :cond_8
    if-eqz v9, :cond_9

    .line 997
    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 999
    :cond_9
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1002
    :goto_3
    xor-int/lit8 v0, p5, 0x1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 1003
    return-void
.end method

.method private hideAnimationSurface()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 271
    return-void
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1299
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1298
    :goto_0
    return v0
.end method

.method static synthetic lambda$onAnimationStart$1(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1643
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method static synthetic lambda$updateBoundsForWindowModeChange$0(Lcom/android/server/wm/WindowState;)V
    .locals 1

    .line 809
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 810
    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .locals 3

    .line 620
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result p1

    .line 622
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 628
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowList;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    if-ne p1, p3, :cond_0

    .line 629
    move p3, p4

    goto :goto_0

    .line 628
    :cond_0
    nop

    .line 629
    move p3, v0

    :goto_0
    const/16 v1, 0x791a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p4

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 630
    return-void
.end method

.method private repositionPrimarySplitScreenStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 3

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 521
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    .line 522
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 539
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 540
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 541
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 529
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 530
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 531
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 532
    goto :goto_0

    .line 534
    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 535
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 536
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 537
    goto :goto_0

    .line 524
    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 525
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 526
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 527
    nop

    .line 544
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 220
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    .line 221
    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_3

    .line 225
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 231
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 232
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 234
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 235
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 290
    nop

    .line 291
    nop

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    goto :goto_0

    .line 298
    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne p1, v0, :cond_1

    .line 299
    return v1

    .line 302
    :cond_1
    invoke-super {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 304
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p2, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAnimationBackgroundBounds()V

    .line 308
    :cond_2
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 309
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    .line 311
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 313
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 314
    return p1
.end method

.method private showAnimationSurface(F)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 278
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 280
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 282
    return-void
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    .line 552
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 553
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v2

    .line 554
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v12

    .line 555
    move-object/from16 v13, p1

    invoke-static {v13, v12, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 557
    iget v9, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 558
    iget v10, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 561
    iget v4, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 562
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v11, v3, Landroid/content/res/Configuration;->orientation:I

    .line 563
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v7, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v5, v9

    move v6, v10

    move-object v8, v13

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 565
    new-instance v15, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 566
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v3, 0x1

    if-ne v11, v3, :cond_0

    .line 568
    :goto_0
    move v8, v3

    goto :goto_1

    .line 566
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 568
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    move-object v3, v15

    move v5, v9

    move v6, v10

    move v7, v2

    move-object v9, v13

    move v10, v11

    move v11, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    .line 569
    invoke-virtual {v15, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 572
    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v6, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    move v4, v12

    move-object v5, v13

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 575
    return-void
.end method

.method private updateAdjustedBounds()V
    .locals 4

    .line 1326
    nop

    .line 1327
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1328
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    goto :goto_0

    .line 1329
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_0

    .line 1332
    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 1333
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1335
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1337
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v2, p0, :cond_3

    .line 1338
    move v1, v3

    goto :goto_1

    .line 1337
    :cond_3
    nop

    .line 1338
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 1339
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    .line 1341
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1343
    :cond_4
    return-void
.end method

.method private updateAnimationBackgroundBounds()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 258
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 259
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 262
    return-void
.end method

.method private updateBoundsForWindowModeChange()V
    .locals 3

    .line 803
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->calculateBoundsForWindowModeChange()Landroid/graphics/Rect;

    move-result-object v0

    .line 805
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskStack$0Cm5zc_NsRa5nGarFvrp2KYfUYU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$0Cm5zc_NsRa5nGarFvrp2KYfUYU;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 813
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 814
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 815
    return-void
.end method

.method private updateSurfaceBounds()V
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 746
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 747
    return-void
.end method

.method private updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 768
    return-void

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 773
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 775
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v2

    .line 776
    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 777
    add-int/2addr v0, v3

    .line 779
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_1

    .line 780
    return-void

    .line 782
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 783
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 784
    return-void
.end method

.method private useCurrentBounds()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 335
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .locals 2

    .line 579
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 580
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .locals 2

    .line 591
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 594
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to add taskId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to stackId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", but it is already attached to stackId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget p1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 601
    :cond_1
    :goto_0
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 605
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 606
    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 4

    .line 1346
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1350
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 1351
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1352
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1353
    return-void

    .line 1347
    :cond_3
    :goto_2
    return-void
.end method

.method beginImeAdjustAnimation()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1177
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1178
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1179
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    .line 1175
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1182
    :cond_1
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 1

    .line 1776
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    const/4 v0, 0x1

    return v0

    .line 1779
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_1

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1783
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .locals 2

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1746
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1748
    :cond_2
    return v1
.end method

.method dim(F)V
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1824
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1825
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeferRemoval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinimizeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedForIme=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustImeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustDividerAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1413
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1412
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1415
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_4

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWindowAnimationBackgroundSurface is shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1419
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1420
    const-string v0, "  Exiting application tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 1422
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 1423
    const-string v2, "  Exiting App #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1424
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1425
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 1426
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1421
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1429
    :cond_5
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const-string v0, "AnimatingApps:"

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method endImeAdjustAnimation()V
    .locals 4

    .line 1188
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 1189
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1188
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1191
    :cond_0
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 1434
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    return v0

    .line 1440
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0

    .line 175
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .locals 5

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1522
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1523
    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 1527
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1528
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1529
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1530
    return-void

    .line 1538
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1539
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v4, p3

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1540
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 1543
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1545
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1546
    iput-object v2, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 1547
    return-void

    .line 1551
    :cond_2
    return-void

    .line 1526
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1554
    :cond_4
    return-void
.end method

.method getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 407
    return-void

    .line 409
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 410
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    return-object v0

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    return-void
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 506
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 507
    return-void
.end method

.method getController()Lcom/android/server/wm/StackWindowController;
    .locals 1

    .line 1021
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 415
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .locals 1

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 391
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .locals 1

    .line 1194
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method getMinimizeDistance()I
    .locals 3

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1307
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1308
    return v1

    .line 1311
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    return v1

    .line 1315
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1318
    :cond_2
    return v1

    .line 1316
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .locals 1

    .line 1788
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 326
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    return-void
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 2

    .line 1834
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v0

    .line 1836
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1837
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1838
    return-void
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 6

    .line 875
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 880
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 884
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 890
    :goto_0
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 891
    return-void

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 897
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    return-void

    .line 901
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p1, :cond_3

    goto :goto_2

    .line 906
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 907
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 908
    if-eqz p1, :cond_8

    .line 913
    if-nez p4, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p3

    if-nez p3, :cond_4

    .line 917
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 918
    return-void

    .line 921
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result p3

    .line 922
    const/4 p4, -0x1

    if-ne p3, p4, :cond_5

    .line 924
    const-string p3, "WindowManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get valid docked side for docked stack="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 926
    return-void

    .line 929
    :cond_5
    iget-object p4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 930
    iget-object p4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 931
    const/4 p1, 0x2

    const/4 p4, 0x1

    if-eq p3, p1, :cond_7

    if-ne p3, p4, :cond_6

    goto :goto_1

    :cond_6
    const/4 p4, 0x0

    nop

    .line 932
    :cond_7
    :goto_1
    move v5, p4

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 933
    invoke-virtual {p1}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 932
    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 935
    return-void

    .line 910
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 902
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 903
    return-void
.end method

.method getStackOutset()I
    .locals 2

    .line 754
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 755
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 763
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method hasTaskForUser(I)Z
    .locals 3

    .line 1485
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1486
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1487
    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p1, :cond_0

    .line 1488
    return v1

    .line 1485
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1491
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isAdjustedForIme()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .locals 2

    .line 1357
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimatingBounds()Z
    .locals 1

    .line 1756
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .locals 1

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAnimatingForIme()Z
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceScaled()Z
    .locals 1

    .line 1752
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method isTaskAnimating()Z
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1367
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    return v1

    .line 1365
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1371
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .locals 1

    .line 1760
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method onAllWindowsDrawn()V
    .locals 1

    .line 1625
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_0

    .line 1626
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    .line 1630
    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .locals 2

    .line 1670
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    nop

    .line 1675
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    .line 1676
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1679
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1683
    :cond_0
    if-eqz p2, :cond_1

    .line 1684
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1688
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1692
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V

    .line 1693
    if-eqz p3, :cond_2

    .line 1694
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :cond_2
    goto :goto_1

    .line 1697
    :catch_0
    move-exception p1

    .line 1700
    :goto_1
    goto :goto_2

    .line 1702
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1704
    :goto_2
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationStart(ZZ)V
    .locals 3

    .line 1635
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1636
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 1637
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1638
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 1642
    if-eqz p1, :cond_0

    .line 1643
    sget-object v2, Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1646
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationStarted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1653
    goto :goto_0

    .line 1651
    :catch_0
    move-exception v0

    .line 1655
    :goto_0
    nop

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    .line 1657
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1662
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1665
    :cond_1
    return-void

    .line 1646
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 729
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 733
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result p1

    .line 736
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 740
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsForWindowModeChange()V

    .line 741
    return-void

    .line 737
    :cond_1
    :goto_0
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 792
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 794
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsForWindowModeChange()V

    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation background stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 799
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 800
    return-void

    .line 789
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onDisplayChanged: Already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onParentSet()V
    .locals 2

    .line 1035
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    const/16 v0, 0x791e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1043
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1045
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 1048
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1050
    return-void

    .line 1038
    :cond_2
    :goto_0
    return-void
.end method

.method public onPipAnimationEndResize()V
    .locals 2

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1711
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1712
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1713
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    .line 1711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1716
    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .locals 1

    .line 1768
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_0

    .line 1769
    const/4 v0, 0x1

    return v0

    .line 1771
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .locals 1

    .line 610
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 611
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    .line 72
    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 204
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    .line 1807
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 1808
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1809
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1812
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1813
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1816
    :cond_0
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .locals 4

    .line 708
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 709
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 718
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 719
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 720
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 721
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 717
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 724
    :cond_3
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .locals 1

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 1028
    return-void

    .line 1030
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1031
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .locals 3

    .line 1133
    if-eqz p1, :cond_1

    .line 1134
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1135
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1137
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1138
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-nez v0, :cond_0

    .line 1139
    return-void

    .line 1141
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1142
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1143
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_0

    .line 1145
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1147
    :goto_0
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1054
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->hideAnimationSurface()V

    .line 1055
    return-void
.end method

.method resetDockedStackToMiddle()V
    .locals 4

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 1012
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1013
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1014
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/StackWindowController;->requestResize(Landroid/graphics/Rect;)V

    .line 1017
    return-void

    .line 1007
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1089
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1090
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 1091
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1092
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1093
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1094
    invoke-virtual {p0, p2, p2, p1}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1096
    :cond_1
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .locals 1

    .line 1156
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1157
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1158
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1159
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    return p1

    .line 1161
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 2

    .line 1058
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1059
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 1061
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    .line 1063
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->showAnimationSurface(F)V

    .line 1065
    :cond_1
    return-void
.end method

.method setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 371
    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 372
    if-eqz p2, :cond_0

    .line 373
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 377
    :goto_0
    if-eqz p1, :cond_1

    .line 378
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 380
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 383
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 192
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 194
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 195
    if-eqz p3, :cond_0

    .line 196
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 195
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    .line 192
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 198
    :cond_1
    return v0
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1611
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v1, :cond_0

    .line 1612
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1614
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1617
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1620
    goto :goto_0

    .line 1618
    :catch_0
    move-exception p1

    .line 1621
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1614
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1558
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 1559
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1560
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1561
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1562
    goto :goto_2

    .line 1578
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1579
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1581
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1584
    :goto_1
    if-ne v1, p1, :cond_2

    .line 1587
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1590
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    .line 1591
    if-ne v1, p1, :cond_3

    if-eqz v2, :cond_5

    .line 1592
    :cond_3
    if-eqz v2, :cond_4

    .line 1595
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v2, p2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1601
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1603
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1558
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1606
    :cond_6
    return-void
.end method

.method public shouldDeferStartOnMoveToFullscreen()Z
    .locals 3

    .line 1725
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1726
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1727
    return v1

    .line 1729
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1730
    if-nez v0, :cond_1

    .line 1731
    return v1

    .line 1733
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1734
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 1737
    :cond_2
    iget-boolean v0, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    xor-int/2addr v0, v1

    return v0

    .line 1735
    :cond_3
    :goto_0
    return v1
.end method

.method shouldIgnoreInput()Z
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1166
    :goto_1
    return v0
.end method

.method stopDimming()V
    .locals 2

    .line 1828
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1830
    return-void
.end method

.method switchUser()V
    .locals 5

    .line 1070
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1072
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1074
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1075
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1076
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1077
    add-int/lit8 v0, v0, -0x1

    .line 1072
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    :cond_2
    return-void
.end method

.method taskIdFromPoint(II)I
    .locals 4

    .line 1495
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1496
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1501
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1502
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1503
    if-nez v3, :cond_1

    .line 1504
    goto :goto_1

    .line 1510
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1511
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1512
    iget p1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return p1

    .line 1500
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1516
    :cond_3
    return v1

    .line 1497
    :cond_4
    :goto_2
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .locals 1

    .line 1115
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1122
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1117
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1118
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1119
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    return p1
.end method

.method updateBoundsAfterConfigChange()Z
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 448
    return v1

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 455
    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 463
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 464
    return v2

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 471
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v4, v0, :cond_2

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v4, v3, :cond_2

    .line 473
    return v1

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 478
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 480
    return v1

    .line 483
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 484
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v0, v6}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->repositionPrimarySplitScreenStackAfterRotation(Landroid/graphics/Rect;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    .line 492
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 493
    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    goto :goto_0

    .line 495
    :cond_4
    move v1, v2

    goto :goto_1

    .line 494
    :cond_5
    :goto_0
    nop

    .line 495
    :goto_1
    nop

    .line 492
    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 497
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 500
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    return v2
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    :cond_1
    if-eqz p1, :cond_2

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 427
    return-void

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 429
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 430
    return-void

    .line 433
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 434
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 436
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v1, p1, :cond_4

    iget p1, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne p1, v0, :cond_4

    .line 437
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 441
    :cond_4
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 4

    .line 1377
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1378
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1379
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1381
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/Task;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1380
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1383
    :cond_0
    const-wide v0, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p4

    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1385
    const-wide v0, 0x10800000006L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1386
    const-wide v0, 0x10800000007L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1387
    const-wide v0, 0x10200000008L

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1388
    const-wide v0, 0x10800000009L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1389
    const-wide v0, 0x1020000000aL

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1390
    const-wide v0, 0x1020000000bL

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1391
    iget-object p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1392
    const-wide v0, 0x1080000000dL

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1393
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1394
    return-void
.end method
