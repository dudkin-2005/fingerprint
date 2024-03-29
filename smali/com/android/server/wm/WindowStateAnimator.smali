.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field mAnimLayer:I

.field mAnimationIsEntrance:Z

.field private mAnimationStartDelayed:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAttrType:I

.field mChildrenDetached:Z

.field final mContext:Landroid/content/Context;

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastClipRect:Landroid/graphics/Rect;

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastDtDx:F

.field private mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field mLastLayer:I

.field private mOffsetPositionForStackResize:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field mPipAnimationStarted:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field private mTmpAnimatingBounds:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field mTmpFinalClipRect:Landroid/graphics/Rect;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpSize:Landroid/graphics/Rect;

.field private mTmpSourceBounds:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field final mWin:Lcom/android/server/wm/WindowState;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 135
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 136
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpFinalClipRect:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 142
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 143
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 144
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 152
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 153
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 168
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 212
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 213
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 219
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 227
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 229
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 233
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 240
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    .line 243
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 245
    .local v0, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 246
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 247
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 248
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 250
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 251
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 252
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 253
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 254
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 255
    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"    # Z

    .line 880
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_24

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyCrop: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_24
    if-eqz p1, :cond_39

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_3e

    .line 888
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    .line 890
    :cond_3e
    :goto_3e
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 828
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 829
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 830
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 832
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 833
    return v2

    .line 836
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 837
    return v2

    .line 842
    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_1d

    .line 843
    return v2

    .line 846
    :cond_1d
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v3, :cond_41

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating crop win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mLastCrop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_41
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    .line 851
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v3, :cond_74

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying decor to crop win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mDecorFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mSystemDecorRect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 855
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_8a

    if-eqz v3, :cond_88

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v4

    if-eqz v4, :cond_88

    goto :goto_8a

    :cond_88
    move v4, v2

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v4, v5

    .line 856
    .local v4, "fullscreen":Z
    :goto_8b
    nop

    .line 857
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v6

    if-nez v6, :cond_9a

    move v2, v5

    nop

    .line 861
    .local v2, "isFreeformResizing":Z
    :cond_9a
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 862
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_ca

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Initial clip rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " fullscreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_ca
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    .line 869
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 871
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v6, :cond_ff

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Clip rect after stack adjustment="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_ff
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 876
    return v5
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 582
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1d

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_6b

    .line 590
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 591
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-nez v0, :cond_32

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 595
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 596
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 597
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 598
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_6b

    .line 599
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 607
    :goto_6b
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7d

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 610
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_8e

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 615
    :cond_8e
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 619
    return-void
.end method

.method private getLayerStack()I
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .registers 5

    .line 1333
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1334
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1337
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .line 1338
    .local v0, "shown":Z
    if-nez v0, :cond_1c

    .line 1339
    const/4 v1, 0x0

    return v1

    .line 1343
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v2, :cond_32

    .line 1344
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V

    .line 1345
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    .line 1348
    :cond_32
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 13
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .line 1383
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v0, p2, :cond_e

    .line 1386
    const/4 v0, 0x1

    return v0

    .line 1389
    :cond_e
    const/16 v0, 0x7db

    if-eqz p2, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_2f

    .line 1390
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1391
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1392
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1399
    :cond_2f
    const-string v1, "WSA#applyAnimationLocked"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_134

    .line 1401
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v4, p1}, Lcom/android/server/policy/WindowManagerPolicy;->selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 1402
    .local v1, "anim":I
    const/4 v4, -0x1

    .line 1403
    .local v4, "attr":I
    const/4 v5, 0x0

    .line 1404
    .local v5, "a":Landroid/view/animation/Animation;
    const/4 v6, -0x1

    if-eqz v1, :cond_59

    .line 1405
    if-eq v1, v6, :cond_56

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    goto :goto_57

    :cond_56
    const/4 v7, 0x0

    :goto_57
    move-object v5, v7

    goto :goto_74

    .line 1407
    :cond_59
    packed-switch p1, :pswitch_data_154

    goto :goto_65

    .line 1418
    :pswitch_5d
    const/4 v4, 0x3

    goto :goto_65

    .line 1415
    :pswitch_5f
    const/4 v4, 0x2

    .line 1416
    goto :goto_65

    .line 1412
    :pswitch_61
    const/4 v4, 0x1

    .line 1413
    goto :goto_65

    .line 1409
    :pswitch_63
    const/4 v4, 0x0

    .line 1410
    nop

    .line 1421
    :goto_65
    if-ltz v4, :cond_74

    .line 1422
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v5

    .line 1428
    :cond_74
    :goto_74
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->mSkipAppAnimation:Z

    if-nez v7, :cond_7c

    if-ne v1, v6, :cond_91

    :cond_7c
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v0, :cond_91

    .line 1429
    const-string v6, "WindowManager"

    const-string v7, "GestureButton: applyAnimation: set null for TYPE_INPUT_METHOD"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v5, 0x0

    .line 1431
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1436
    :cond_91
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mIsQuickReplyImWindow:Z

    if-eqz v6, :cond_b5

    .line 1437
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickReply: applyAnimation: set null for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/4 v5, 0x0

    .line 1439
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1442
    :cond_b5
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v6, :cond_108

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyAnimation: win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " attr=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " transit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " isEntrance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " Callers "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x3

    .line 1447
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1442
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_108
    if-eqz v5, :cond_133

    .line 1449
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v6, :cond_12c

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded animation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_12c
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1451
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1453
    .end local v1    # "anim":I
    .end local v4    # "attr":I
    .end local v5    # "a":Landroid/view/animation/Animation;
    :cond_133
    goto :goto_139

    .line 1454
    :cond_134
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1457
    :goto_139
    if-nez p2, :cond_14c

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_14c

    .line 1458
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1461
    :cond_14c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    return v0

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_63
        :pswitch_61
        :pswitch_5f
        :pswitch_5d
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    .line 1355
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_7

    .line 1356
    return-void

    .line 1359
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v0, :cond_10

    .line 1360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1361
    const/4 v0, 0x1

    .local v0, "transit":I
    goto :goto_11

    .line 1363
    .end local v0    # "transit":I
    :cond_10
    const/4 v0, 0x3

    .line 1365
    .restart local v0    # "transit":I
    :goto_11
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1367
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1368
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2c

    .line 1369
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1371
    :cond_2c
    return-void
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .registers 4

    .line 265
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_1c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelExitAnimationForNextAnimationLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    .line 275
    .local v0, "isSelfAnimating":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 276
    if-eqz v0, :cond_2e

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 279
    :cond_2e
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .registers 5

    .line 365
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_31

    .line 367
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cur mDrawState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_31
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v0, v1, :cond_3c

    .line 371
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_3c
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_58

    .line 374
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_58
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 379
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_6d

    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_6d

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v1, :cond_73

    .line 380
    :cond_6d
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v0

    .line 382
    :cond_73
    return v0
.end method

.method computeShownFrameLocked()V
    .registers 15

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 725
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 726
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 727
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    .line 728
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    .line 730
    .local v4, "screenAnimation":Z
    :goto_19
    if-eqz v4, :cond_119

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 733
    .local v5, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 734
    .local v6, "tmpFloats":[F
    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 737
    .local v7, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 745
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 746
    .local v8, "w":F
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    .line 747
    .local v9, "h":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-ltz v11, :cond_51

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_51

    .line 748
    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v11, v8

    add-float/2addr v12, v10

    div-float v13, v11, v9

    add-float/2addr v10, v13

    div-float v13, v8, v11

    div-float v11, v9, v11

    invoke-virtual {v7, v12, v10, v13, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_54

    .line 750
    :cond_51
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 752
    .end local v8    # "w":F
    .end local v9    # "h":F
    :goto_54
    goto :goto_58

    .line 753
    :cond_55
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 756
    :goto_58
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v8, v8, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v9, v9, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 760
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 770
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 771
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 772
    aget v2, v6, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 773
    const/4 v2, 0x3

    aget v2, v6, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 774
    aget v2, v6, v3

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 775
    const/4 v2, 0x4

    aget v2, v6, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 782
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 783
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 784
    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_b5

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 785
    invoke-virtual {v2, v3, v8, v9, v10}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 787
    :cond_b5
    if-eqz v4, :cond_c4

    .line 788
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 794
    :cond_c4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v2, :cond_cc

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_118

    :cond_cc
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v8

    if-eqz v2, :cond_de

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v2, v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-nez v2, :cond_118

    .line 795
    :cond_de
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computeShownFrameLocked: Animating "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mAlpha="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " screen="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    if-eqz v4, :cond_10b

    .line 798
    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_10e

    :cond_10b
    const-string/jumbo v8, "null"

    :goto_10e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_118
    return-void

    .line 800
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v6    # "tmpFloats":[F
    .end local v7    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_119
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v3, :cond_126

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v3, :cond_126

    .line 801
    return-void

    .line 802
    :cond_126
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 808
    return-void

    .line 811
    :cond_12f
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v3, :cond_153

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeShownFrameLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " not attached, mAlpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_153
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 816
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 817
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 818
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 819
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 820
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 821
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .registers 25
    .param p1, "windowType"    # I
    .param p2, "ownerUid"    # I

    move-object/from16 v11, p0

    .line 461
    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 463
    .local v12, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_b

    .line 464
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 466
    :cond_b
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 468
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    .line 469
    const v0, 0x6bd83

    .line 472
    .end local p1    # "windowType":I
    .local v0, "windowType":I
    move v14, v0

    goto :goto_20

    .line 472
    .end local v0    # "windowType":I
    .restart local p1    # "windowType":I
    :cond_1e
    move/from16 v14, p1

    .line 472
    .end local p1    # "windowType":I
    .local v14, "windowType":I
    :goto_20
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 474
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_46

    :cond_2b
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 479
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 481
    const/4 v0, 0x4

    .line 482
    .local v0, "flags":I
    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 484
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 485
    or-int/lit16 v0, v0, 0x80

    .line 488
    .end local v0    # "flags":I
    .local v1, "flags":I
    :cond_5b
    move v1, v0

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    invoke-direct {v11, v12, v15}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 490
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 491
    .local v10, "width":I
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 493
    .local v9, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_d0

    .line 494
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating surface in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_d0
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 505
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 506
    iget v0, v12, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string v2, "createSurfaceLocked"

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 513
    :cond_e2
    const/16 v16, 0x0

    const/4 v8, 0x1

    :try_start_e5
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_ee

    move v0, v8

    goto :goto_ef

    :cond_ee
    move v0, v13

    .line 514
    .local v0, "isHwAccelerated":Z
    :goto_ef
    if-eqz v0, :cond_f3

    const/4 v2, -0x3

    goto :goto_f5

    :cond_f3
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_f5
    move v7, v2

    .line 515
    .local v7, "format":I
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2
    :try_end_fc
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e5 .. :try_end_fc} :catch_310
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fc} :catch_300

    if-nez v2, :cond_12e

    :try_start_fe
    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_12e

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_12e

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_12e

    iget-object v2, v15, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_12e

    .line 524
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2
    :try_end_11a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_fe .. :try_end_11a} :catch_126
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_11a} :catch_11f

    if-nez v2, :cond_12e

    .line 525
    or-int/lit16 v1, v1, 0x400

    goto :goto_12e

    .line 551
    .end local v0    # "isHwAccelerated":Z
    .end local v7    # "format":I
    :catch_11f
    move-exception v0

    move v4, v1

    move v5, v9

    move v2, v10

    move-object v3, v15

    goto/16 :goto_305

    .line 546
    :catch_126
    move-exception v0

    move v4, v1

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v15, v8

    goto/16 :goto_316

    .line 528
    .end local v1    # "flags":I
    .restart local v0    # "isHwAccelerated":Z
    .local v6, "flags":I
    .restart local v7    # "format":I
    :cond_12e
    :goto_12e
    move v6, v1

    :try_start_12f
    new-instance v5, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 529
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_13d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12f .. :try_end_13d} :catch_2f9
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_13d} :catch_2f3

    move-object v1, v5

    move v4, v10

    move-object v13, v5

    move v5, v9

    move/from16 v17, v6

    move v6, v7

    .line 529
    .end local v6    # "flags":I
    .local v17, "flags":I
    move/from16 v18, v0

    move v0, v7

    move/from16 v7, v17

    .line 529
    .end local v7    # "format":I
    .local v0, "format":I
    .local v18, "isHwAccelerated":Z
    move-object/from16 v19, v15

    move v15, v8

    move-object v8, v11

    .line 529
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v19, "attrs":Landroid/view/WindowManager$LayoutParams;
    move/from16 v20, v9

    move v9, v14

    .line 529
    .end local v9    # "height":I
    .local v20, "height":I
    move/from16 v21, v10

    move/from16 v10, p2

    .line 529
    .end local v10    # "width":I
    .local v21, "width":I
    :try_start_154
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 532
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 533
    iput v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    .line 535
    invoke-virtual {v12, v15}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 537
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z
    :try_end_164
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_154 .. :try_end_164} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_164} :catch_2df

    if-nez v1, :cond_186

    :try_start_166
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z
    :try_end_168
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_166 .. :try_end_168} :catch_17b
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_168} :catch_170

    if-eqz v1, :cond_16b

    goto :goto_186

    .line 555
    .end local v0    # "format":I
    .end local v18    # "isHwAccelerated":Z
    :cond_16b
    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_1d8

    .line 551
    :catch_170
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v2, v21

    goto/16 :goto_305

    .line 546
    :catch_17b
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v2, v21

    goto/16 :goto_316

    .line 538
    .restart local v0    # "format":I
    .restart local v18    # "isHwAccelerated":Z
    :cond_186
    :goto_186
    :try_start_186
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CREATE SURFACE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN SESSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_186 .. :try_end_1b4} :catch_2e9
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1b4} :catch_2df

    move-object/from16 v3, v19

    :try_start_1b6
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1b6 .. :try_end_1c0} :catch_2d7
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c0} :catch_2cf

    .line 543
    move/from16 v4, v17

    :try_start_1c2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 543
    .end local v17    # "flags":I
    .local v4, "flags":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1c2 .. :try_end_1d8} :catch_2c8
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1d8} :catch_2c2

    .line 555
    .end local v0    # "format":I
    .end local v18    # "isHwAccelerated":Z
    :goto_1d8
    nop

    .line 557
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_217

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", set left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_217
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_26c

    .line 562
    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v21    # "width":I
    .local v2, "width":I
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .end local v20    # "height":I
    .local v5, "height":I
    const-string v1, "), layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_270

    .line 570
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :cond_26c
    move/from16 v5, v20

    move/from16 v2, v21

    .line 570
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    :goto_270
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2a3

    .line 571
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE pid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " format="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " layer="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 575
    :cond_2a3
    iput-boolean v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 577
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_2bf

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created surface "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_2bf
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 551
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2c2
    move-exception v0

    move/from16 v5, v20

    move/from16 v2, v21

    .line 551
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    goto :goto_305

    .line 546
    .end local v2    # "width":I
    .end local v5    # "height":I
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2c8
    move-exception v0

    move/from16 v5, v20

    move/from16 v2, v21

    .line 546
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    goto/16 :goto_316

    .line 551
    .end local v2    # "width":I
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v17    # "flags":I
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2cf
    move-exception v0

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v2, v21

    .line 551
    .end local v17    # "flags":I
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_305

    .line 546
    .end local v2    # "width":I
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v17    # "flags":I
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2d7
    move-exception v0

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v2, v21

    .line 546
    .end local v17    # "flags":I
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_316

    .line 551
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v17    # "flags":I
    .restart local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2df
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v2, v21

    .line 551
    .end local v17    # "flags":I
    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_305

    .line 546
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v17    # "flags":I
    .restart local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "height":I
    .restart local v21    # "width":I
    :catch_2e9
    move-exception v0

    move/from16 v4, v17

    move-object/from16 v3, v19

    move/from16 v5, v20

    move/from16 v2, v21

    .line 546
    .end local v17    # "flags":I
    .end local v19    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v20    # "height":I
    .end local v21    # "width":I
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_316

    .line 551
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v6    # "flags":I
    .restart local v9    # "height":I
    .restart local v10    # "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2f3
    move-exception v0

    move v4, v6

    move v5, v9

    move v2, v10

    move-object v3, v15

    .line 551
    .end local v6    # "flags":I
    .end local v9    # "height":I
    .end local v10    # "width":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_305

    .line 546
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v6    # "flags":I
    .restart local v9    # "height":I
    .restart local v10    # "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2f9
    move-exception v0

    move v4, v6

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v15, v8

    .line 546
    .end local v6    # "flags":I
    .end local v9    # "height":I
    .end local v10    # "width":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    goto :goto_316

    .line 551
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v1    # "flags":I
    .restart local v9    # "height":I
    .restart local v10    # "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_300
    move-exception v0

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v4, v1

    .line 552
    .end local v1    # "flags":I
    .end local v9    # "height":I
    .end local v10    # "width":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    :goto_305
    const-string v1, "WindowManager"

    const-string v6, "Exception creating surface (parent dead?)"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 554
    return-object v16

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "width":I
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "height":I
    .restart local v1    # "flags":I
    .restart local v9    # "height":I
    .restart local v10    # "width":I
    .restart local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_310
    move-exception v0

    move v5, v9

    move v2, v10

    move-object v3, v15

    move v15, v8

    move v4, v1

    .line 547
    .end local v1    # "flags":I
    .end local v9    # "height":I
    .end local v10    # "width":I
    .end local v15    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v2    # "width":I
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v5    # "height":I
    :goto_316
    const-string v1, "WindowManager"

    const-string v6, "OutOfResourcesException creating surface"

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v6, "create"

    invoke-virtual {v1, v11, v6, v15}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 549
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 550
    return-object v16
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 5

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_28

    .line 703
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_18

    .line 705
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v1, "DESTROY PENDING"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 707
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 710
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_28

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_28} :catch_29

    .line 718
    :cond_28
    goto :goto_60

    .line 714
    :catch_29
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 721
    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    .line 412
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_5

    .line 413
    return-void

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_32

    .line 422
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 423
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 429
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 431
    return-void
.end method

.method destroySurface()V
    .registers 7

    .line 1543
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_b

    .line 1544
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_17
    .catchall {:try_start_2 .. :try_end_b} :catchall_15

    .line 1550
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1551
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1552
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1553
    goto :goto_4b

    .line 1550
    :catchall_15
    move-exception v2

    goto :goto_4c

    .line 1546
    :catch_17
    move-exception v2

    .line 1547
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_18
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_15

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_b

    .line 1554
    :goto_4b
    return-void

    .line 1550
    :goto_4c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1551
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1552
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    throw v2
.end method

.method destroySurfaceLocked()V
    .registers 7

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 627
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 628
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_f

    .line 629
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 633
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v2, :cond_14

    .line 634
    return-void

    .line 641
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 646
    :cond_1d
    :try_start_1d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_4b

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_4b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v2, :cond_7a

    .line 649
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v2, v4, :cond_90

    .line 650
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_75

    .line 655
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v2, :cond_69

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_69

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_70

    .line 657
    :cond_69
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY PENDING"

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 659
    :cond_70
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 661
    :cond_75
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_90

    .line 668
    :cond_7a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-nez v2, :cond_86

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_86

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_8d

    .line 670
    :cond_86
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v4, "DESTROY"

    invoke-static {v2, v4, v3}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 673
    :cond_8d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 677
    :cond_90
    :goto_90
    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v2, :cond_9b

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_9b} :catch_9c

    .line 683
    :cond_9b
    goto :goto_d3

    .line 680
    :catch_9c
    move-exception v2

    .line 681
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_d3
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 689
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_e1

    .line 690
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 692
    :cond_e1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 693
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 694
    return-void
.end method

.method detachChildren()V
    .registers 2

    .line 1616
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    .line 1617
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    .line 1619
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 1620
    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .registers 2

    .line 189
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    packed-switch v0, :pswitch_data_1c

    .line 195
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_c
    const-string v0, "HAS_DRAWN"

    return-object v0

    .line 193
    :pswitch_f
    const-string v0, "READY_TO_SHOW"

    return-object v0

    .line 192
    :pswitch_12
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 191
    :pswitch_15
    const-string v0, "DRAW_PENDING"

    return-object v0

    .line 190
    :pswitch_18
    const-string v0, "NO_SURFACE"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1477
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_11

    .line 1478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1480
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1a

    .line 1481
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1483
    :cond_1a
    if-eqz p3, :cond_66

    .line 1484
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1487
    const-string v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1489
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 1490
    const-string v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1492
    :cond_63
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1495
    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_78

    .line 1496
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1499
    :cond_78
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_98

    .line 1500
    :cond_80
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1501
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1503
    :cond_98
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_ac

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_ac

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ce

    .line 1504
    :cond_ac
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1505
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1506
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1508
    :cond_ce
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_112

    .line 1509
    :cond_da
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1510
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1511
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1512
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1513
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1515
    :cond_112
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_124

    .line 1516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimationStartDelayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1518
    :cond_124
    return-void
.end method

.method finishDrawingLocked()Z
    .registers 6

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 342
    .local v0, "startingWindow":Z
    :goto_d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_37

    if-eqz v0, :cond_37

    .line 343
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing drawing window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_37
    const/4 v2, 0x0

    .line 349
    .local v2, "layoutNeeded":Z
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v1, :cond_8c

    .line 350
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_6a

    .line 351
    :cond_48
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_6a
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_88

    if-eqz v0, :cond_88

    .line 354
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_88
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 357
    const/4 v2, 0x1

    .line 360
    :cond_8c
    return v2
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1129
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_c

    .line 1130
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 1132
    :cond_c
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1134
    :goto_15
    return-void
.end method

.method getLayer()I
    .registers 2

    .line 1623
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    return v0
.end method

.method getShown()Z
    .registers 2

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_b

    .line 1536
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 1538
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"    # Ljava/lang/String;

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_13

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_13

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 332
    :cond_13
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 337
    return-void
.end method

.method isAnimationSet()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isForceScaled()Z
    .registers 3

    .line 1608
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1609
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1610
    const/4 v1, 0x1

    return v1

    .line 1612
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method markPreservedSurfaceForDestroy()V
    .registers 3

    .line 434
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 435
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_19
    return-void
.end method

.method onAnimationFinished()V
    .registers 7

    .line 283
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_3c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation done in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": exiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reportedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v0, v1, :cond_49

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 292
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 294
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_65

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_65

    .line 297
    if-eqz v0, :cond_65

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 302
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 304
    .local v1, "displayId":I
    const/16 v2, 0x8

    .line 305
    .local v2, "pendingLayoutChanges":I
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 306
    or-int/lit8 v2, v2, 0x4

    .line 308
    :cond_7e
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 309
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_96

    .line 310
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v4, "WindowStateAnimator"

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 311
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    .line 310
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 313
    :cond_96
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a3

    .line 314
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 316
    :cond_a3
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .registers 14
    .param p1, "recoveringMemory"    # Z

    .line 1137
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1138
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 1142
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1143
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_2f

    .line 1144
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Orientation change skips hidden "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_2f
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1148
    :cond_32
    return-void

    .line 1151
    :cond_33
    const/4 v1, 0x0

    .line 1153
    .local v1, "displayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1157
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4b

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v3, :cond_4b

    .line 1159
    const-string/jumbo v3, "prepareSurfaceLocked"

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto/16 :goto_224

    .line 1160
    :cond_4b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_1f0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_59

    goto/16 :goto_1f0

    .line 1173
    :cond_59
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v3, v5, :cond_c0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_9c

    goto :goto_c0

    .line 1235
    :cond_9c
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_bd

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1236
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareSurface: No changes in animation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_bd
    const/4 v1, 0x1

    goto/16 :goto_224

    .line 1182
    :cond_c0
    :goto_c0
    const/4 v1, 0x1

    .line 1183
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1184
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    .line 1185
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1186
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1187
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1188
    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1189
    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1190
    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1191
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_164

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "controller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "alpha="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " layer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " matrix=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1199
    :cond_164
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v7, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v7, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v8, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v8

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v8, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v9, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v9

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v9, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v10

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v10, v3

    .line 1200
    move v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v3

    .line 1207
    .local v3, "prepared":Z
    if-eqz v3, :cond_1e5

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1e5

    .line 1208
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v5, :cond_1e5

    .line 1209
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1211
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1212
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1213
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v5, :cond_1af

    .line 1214
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 1219
    :cond_1af
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1221
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v5, :cond_1e5

    .line 1222
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showSurfaceRobustlyLocked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v7

    .line 1222
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_1e5

    .line 1227
    :cond_1e2
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1231
    :cond_1e5
    :goto_1e5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 1232
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1234
    .end local v3    # "prepared":Z
    :cond_1ef
    goto :goto_224

    .line 1161
    :cond_1f0
    :goto_1f0
    const-string/jumbo v3, "prepareSurfaceLocked"

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1162
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1168
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_224

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-eqz v3, :cond_224

    .line 1169
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1170
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_224

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Orientation change skips hidden "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_224
    :goto_224
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_274

    .line 1242
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_257

    .line 1243
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1244
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1245
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_274

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation continue waiting for draw in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_274

    .line 1248
    :cond_257
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1249
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_274

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation change complete in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_274
    :goto_274
    if-eqz v1, :cond_27a

    .line 1254
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1256
    :cond_27a
    return-void
.end method

.method preserveSurfaceLocked()V
    .registers 5

    .line 386
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 394
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 396
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 397
    return-void

    .line 399
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "SET FREEZE LAYER"

    invoke-static {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 400
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_24

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 406
    :cond_24
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 407
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 409
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "secure"    # Z

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1532
    return-void
.end method

.method resetDrawState()V
    .registers 3

    .line 445
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_a

    .line 448
    return-void

    .line 451
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    goto :goto_22

    .line 456
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 458
    :goto_22
    return-void
.end method

.method seamlesslyRotateWindow(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 34
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    move-object/from16 v0, p0

    .line 1558
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1559
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_c2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_10

    goto/16 :goto_c2

    .line 1563
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 1564
    .local v2, "cropRect":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    .line 1565
    .local v3, "displayRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    .line 1566
    .local v4, "frameRect":Landroid/graphics/RectF;
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 1568
    .local v5, "transform":Landroid/graphics/Matrix;
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v12, v6

    .line 1569
    .local v12, "x":F
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v13, v6

    .line 1570
    .local v13, "y":F
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v14, v6

    .line 1571
    .local v14, "width":F
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v15, v6

    .line 1573
    .local v15, "height":F
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1574
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v11, v6

    .line 1575
    .local v11, "displayWidth":F
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v10, v6

    .line 1579
    .local v10, "displayHeight":F
    move/from16 v9, p2

    move/from16 v8, p3

    invoke-static {v8, v9}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v16

    .line 1580
    .local v16, "deltaRotation":I
    move/from16 v6, v16

    move v7, v12

    move v8, v13

    move v9, v11

    move/from16 v17, v10

    .end local v10    # "displayHeight":F
    .local v17, "displayHeight":F
    move/from16 v18, v11

    move-object v11, v5

    .end local v11    # "displayWidth":F
    .local v18, "displayWidth":F
    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    .line 1589
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1590
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1592
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    .line 1593
    .local v6, "DsDx":F
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    .line 1594
    .local v9, "DtDx":F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    aget v7, v10, v7

    .line 1595
    .local v7, "DtDy":F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    .line 1596
    .local v10, "DsDy":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/16 v19, 0x2

    aget v11, v11, v19

    .line 1597
    .local v11, "nx":F
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    const/16 v19, 0x5

    aget v8, v8, v19

    .line 1598
    .local v8, "ny":F
    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .end local v2    # "cropRect":Landroid/graphics/Rect;
    .local v20, "cropRect":Landroid/graphics/Rect;
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v4, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v11, v8, v4}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    .line 1599
    .end local v3    # "displayRect":Landroid/graphics/Rect;
    .end local v4    # "frameRect":Landroid/graphics/RectF;
    .local v28, "displayRect":Landroid/graphics/Rect;
    .local v29, "frameRect":Landroid/graphics/RectF;
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v23, v6, v4

    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v24, v9, v4

    iget v4, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v25, v7, v4

    iget v4, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v26, v10, v4

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    .line 1601
    return-void

    .line 1560
    .end local v5    # "transform":Landroid/graphics/Matrix;
    .end local v6    # "DsDx":F
    .end local v7    # "DtDy":F
    .end local v8    # "ny":F
    .end local v9    # "DtDx":F
    .end local v10    # "DsDy":F
    .end local v11    # "nx":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "width":F
    .end local v15    # "height":F
    .end local v16    # "deltaRotation":I
    .end local v17    # "displayHeight":F
    .end local v18    # "displayWidth":F
    .end local v20    # "cropRect":Landroid/graphics/Rect;
    .end local v28    # "displayRect":Landroid/graphics/Rect;
    .end local v29    # "frameRect":Landroid/graphics/RectF;
    :cond_c2
    :goto_c2
    move-object/from16 v3, p1

    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .registers 2
    .param p1, "offsetPositionForStackResize"    # Z

    .line 1627
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    .line 1628
    return-void
.end method

.method setOpaqueLocked(Z)V
    .registers 3
    .param p1, "isOpaque"    # Z

    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1312
    return-void

    .line 1314
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1315
    return-void
.end method

.method setSecureLocked(Z)V
    .registers 3
    .param p1, "isSecure"    # Z

    .line 1318
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1319
    return-void

    .line 1321
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1322
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 35
    .param p1, "recoveringMemory"    # Z

    move-object/from16 v0, p0

    .line 893
    move/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_9

    .line 894
    return-void

    .line 897
    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 898
    .local v8, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 899
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 901
    .local v10, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 902
    invoke-direct {v0, v8, v9}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 904
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 905
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 907
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 908
    .local v11, "wasForceScaled":Z
    iget-boolean v12, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 917
    .local v12, "wasSeamlesslyRotated":Z
    iget-boolean v3, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v3, :cond_33

    iget-boolean v3, v8, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v3, :cond_31

    goto :goto_33

    :cond_31
    move v3, v2

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v3, 0x1

    :goto_34
    move v14, v3

    .line 918
    .local v14, "relayout":Z
    if-eqz v14, :cond_4c

    .line 919
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 920
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 919
    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/wm/WindowSurfaceController;->setSizeInTransaction(IIZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_4e

    .line 922
    :cond_4c
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 924
    :goto_4e
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v3, :cond_58

    const/4 v3, 0x1

    goto :goto_59

    :cond_58
    move v3, v2

    :goto_59
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 928
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v4, :cond_67

    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v4, :cond_67

    const/4 v4, 0x1

    goto :goto_68

    :cond_67
    move v4, v2

    :goto_68
    invoke-virtual {v3, v8, v4}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 930
    const/4 v3, 0x0

    .line 931
    .local v3, "clipRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 932
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 935
    :cond_76
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v4

    int-to-float v15, v4

    .line 936
    .local v15, "surfaceWidth":F
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v4

    int-to-float v6, v4

    .line 938
    .local v6, "surfaceHeight":F
    iget-object v5, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 940
    .local v5, "insets":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v4

    if-eqz v4, :cond_250

    .line 941
    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    .line 942
    .local v4, "hInsets":I
    iget v2, v5, Landroid/graphics/Rect;->top:I

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    .line 943
    .local v2, "vInsets":I
    int-to-float v1, v4

    sub-float v1, v15, v1

    .line 944
    .local v1, "surfaceContentWidth":F
    int-to-float v13, v2

    sub-float v13, v6, v13

    .line 945
    .local v13, "surfaceContentHeight":F
    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .end local v2    # "vInsets":I
    .local v16, "vInsets":I
    if-nez v2, :cond_ab

    .line 946
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v17, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto :goto_ad

    .line 949
    :cond_ab
    move/from16 v17, v4

    .end local v4    # "hInsets":I
    .local v17, "hInsets":I
    :goto_ad
    const/4 v2, 0x0

    .line 950
    .local v2, "posX":I
    const/4 v4, 0x0

    .line 951
    .local v4, "posY":I
    move/from16 v18, v12

    iget-object v12, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .end local v12    # "wasSeamlesslyRotated":Z
    .local v18, "wasSeamlesslyRotated":Z
    move/from16 v19, v11

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .end local v11    # "wasForceScaled":Z
    .local v19, "wasForceScaled":Z
    invoke-virtual {v12, v11}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 953
    const/4 v11, 0x0

    .line 954
    .local v11, "allowStretching":Z
    iget-object v12, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v20, v11

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .end local v11    # "allowStretching":Z
    .local v20, "allowStretching":Z
    invoke-virtual {v12, v11}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    .line 962
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_fd

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-gtz v11, :cond_e0

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 963
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_fd

    :cond_e0
    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 964
    invoke-virtual {v11}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v11

    if-nez v11, :cond_fd

    .line 965
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v12, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v12, v12, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 966
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 967
    const/4 v11, 0x1

    .line 972
    .end local v20    # "allowStretching":Z
    .restart local v11    # "allowStretching":Z
    move/from16 v20, v11

    .end local v11    # "allowStretching":Z
    .restart local v20    # "allowStretching":Z
    :cond_fd
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 973
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 974
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 976
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1e2

    .line 979
    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 983
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 984
    .local v11, "finalWidth":F
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    .line 985
    .local v12, "initialWidth":F
    move-object/from16 v21, v10

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .end local v10    # "task":Lcom/android/server/wm/Task;
    .local v21, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v1, v10

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 986
    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .local v22, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v10, v3

    .line 987
    .local v10, "tw":F
    move v3, v10

    .line 988
    .local v3, "th":F
    sub-float v23, v11, v12

    mul-float v23, v23, v10

    add-float v23, v12, v23

    move/from16 v24, v3

    div-float v3, v23, v12

    .end local v3    # "th":F
    .local v24, "th":F
    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 989
    if-eqz v20, :cond_184

    .line 990
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 991
    .local v3, "finalHeight":F
    move/from16 v25, v11

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .end local v11    # "finalWidth":F
    .local v25, "finalWidth":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    .line 992
    .local v11, "initialHeight":F
    move/from16 v26, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .end local v12    # "initialWidth":F
    .local v26, "initialWidth":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v13, v12

    move/from16 v27, v14

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 993
    .end local v14    # "relayout":Z
    .local v27, "relayout":Z
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v13, v14

    div-float/2addr v12, v14

    .line 994
    .end local v24    # "th":F
    .local v12, "th":F
    sub-float v14, v3, v11

    mul-float/2addr v14, v10

    add-float/2addr v14, v11

    div-float/2addr v14, v11

    iput v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 996
    .end local v3    # "finalHeight":F
    .end local v11    # "initialHeight":F
    goto :goto_190

    .line 997
    .end local v25    # "finalWidth":F
    .end local v26    # "initialWidth":F
    .end local v27    # "relayout":Z
    .local v11, "finalWidth":F
    .local v12, "initialWidth":F
    .restart local v14    # "relayout":Z
    .restart local v24    # "th":F
    :cond_184
    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v14

    .end local v11    # "finalWidth":F
    .end local v12    # "initialWidth":F
    .end local v14    # "relayout":Z
    .restart local v25    # "finalWidth":F
    .restart local v26    # "initialWidth":F
    .restart local v27    # "relayout":Z
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1001
    move/from16 v12, v24

    .end local v24    # "th":F
    .local v12, "th":F
    :goto_190
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v3, v10

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v3, v11

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 1002
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v12

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v3, v11

    float-to-int v3, v3

    sub-int/2addr v4, v3

    .line 1010
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 1011
    .end local v22    # "clipRect":Landroid/graphics/Rect;
    .local v3, "clipRect":Landroid/graphics/Rect;
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v14

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    iget v14, v5, Landroid/graphics/Rect;->top:I

    move/from16 v28, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .end local v2    # "posX":I
    .local v28, "posX":I
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v2

    int-to-float v2, v14

    mul-float/2addr v2, v12

    float-to-int v2, v2

    iget v14, v5, Landroid/graphics/Rect;->left:I

    move/from16 v29, v4

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .end local v4    # "posY":I
    .local v29, "posY":I
    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float v4, v15, v4

    mul-float/2addr v4, v10

    sub-float v4, v15, v4

    float-to-int v4, v4

    add-int/2addr v14, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    move/from16 v30, v10

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .end local v10    # "tw":F
    .local v30, "tw":F
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    mul-float/2addr v10, v12

    sub-float v10, v6, v10

    float-to-int v10, v10

    add-int/2addr v4, v10

    invoke-virtual {v3, v11, v2, v14, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1017
    .end local v12    # "th":F
    .end local v25    # "finalWidth":F
    .end local v26    # "initialWidth":F
    .end local v30    # "tw":F
    goto :goto_201

    .line 1020
    .end local v21    # "task":Lcom/android/server/wm/Task;
    .end local v27    # "relayout":Z
    .end local v28    # "posX":I
    .end local v29    # "posY":I
    .restart local v2    # "posX":I
    .restart local v4    # "posY":I
    .local v10, "task":Lcom/android/server/wm/Task;
    .restart local v14    # "relayout":Z
    :cond_1e2
    move-object/from16 v22, v3

    move-object/from16 v21, v10

    move/from16 v27, v14

    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v14    # "relayout":Z
    .restart local v21    # "task":Lcom/android/server/wm/Task;
    .restart local v22    # "clipRect":Landroid/graphics/Rect;
    .restart local v27    # "relayout":Z
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 1021
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v13

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 1026
    const/4 v3, 0x0

    .line 1032
    .end local v22    # "clipRect":Landroid/graphics/Rect;
    .restart local v3    # "clipRect":Landroid/graphics/Rect;
    move/from16 v28, v2

    move/from16 v29, v4

    .end local v2    # "posX":I
    .end local v4    # "posY":I
    .restart local v28    # "posX":I
    .restart local v29    # "posY":I
    :goto_201
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v4, v10, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v2, v28, v2

    .line 1033
    .end local v28    # "posX":I
    .restart local v2    # "posX":I
    iget v4, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v11, v10, v11

    mul-float/2addr v4, v11

    float-to-int v4, v4

    sub-int v4, v29, v4

    .line 1042
    .end local v29    # "posY":I
    .restart local v4    # "posY":I
    int-to-float v11, v2

    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v14, v10, v14

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    float-to-int v2, v11

    .line 1043
    int-to-float v11, v4

    iget v12, v5, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v10, v14

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-int v4, v11

    .line 1045
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    move/from16 v31, v1

    move/from16 v32, v2

    int-to-double v1, v4

    .line 1046
    .end local v1    # "surfaceContentWidth":F
    .end local v2    # "posX":I
    .local v31, "surfaceContentWidth":F
    .local v32, "posX":I
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1045
    invoke-virtual {v10, v11, v1, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1054
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v1, :cond_24c

    .line 1055
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1056
    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1058
    .end local v4    # "posY":I
    .end local v13    # "surfaceContentHeight":F
    .end local v16    # "vInsets":I
    .end local v17    # "hInsets":I
    .end local v20    # "allowStretching":Z
    .end local v31    # "surfaceContentWidth":F
    .end local v32    # "posX":I
    :cond_24c
    nop

    .line 1102
    move-object v10, v3

    goto/16 :goto_2c7

    .line 1059
    .end local v18    # "wasSeamlesslyRotated":Z
    .end local v19    # "wasForceScaled":Z
    .end local v21    # "task":Lcom/android/server/wm/Task;
    .end local v27    # "relayout":Z
    .restart local v10    # "task":Lcom/android/server/wm/Task;
    .local v11, "wasForceScaled":Z
    .local v12, "wasSeamlesslyRotated":Z
    .restart local v14    # "relayout":Z
    :cond_250
    move-object/from16 v22, v3

    move-object/from16 v21, v10

    move/from16 v19, v11

    move/from16 v18, v12

    move/from16 v27, v14

    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "wasForceScaled":Z
    .end local v12    # "wasSeamlesslyRotated":Z
    .end local v14    # "relayout":Z
    .restart local v18    # "wasSeamlesslyRotated":Z
    .restart local v19    # "wasForceScaled":Z
    .restart local v21    # "task":Lcom/android/server/wm/Task;
    .restart local v22    # "clipRect":Landroid/graphics/Rect;
    .restart local v27    # "relayout":Z
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1061
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_2c4

    .line 1063
    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1064
    .local v1, "xOffset":I
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1065
    .local v2, "yOffset":I
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_2ba

    .line 1066
    if-eqz v27, :cond_283

    .line 1071
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 1072
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1073
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v10

    .line 1072
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1093
    move-object/from16 v4, v22

    goto :goto_2bc

    .line 1075
    :cond_283
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1076
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v10, 0x0

    iput v10, v4, Landroid/graphics/Point;->x:I

    .line 1077
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iput v10, v4, Landroid/graphics/Point;->y:I

    .line 1078
    if-eqz v3, :cond_299

    .line 1079
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1082
    :cond_299
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v1, v4

    .line 1083
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v2, v4

    .line 1087
    if-eqz v22, :cond_2ba

    .line 1088
    move-object/from16 v4, v22

    iget v10, v4, Landroid/graphics/Rect;->right:I

    .end local v22    # "clipRect":Landroid/graphics/Rect;
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 1089
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v11

    iput v10, v4, Landroid/graphics/Rect;->bottom:I

    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    goto :goto_2bc

    .line 1093
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v22    # "clipRect":Landroid/graphics/Rect;
    :cond_2ba
    move-object/from16 v4, v22

    .end local v22    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_2bc
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v10, v1

    int-to-float v11, v2

    invoke-virtual {v3, v10, v11, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .end local v1    # "xOffset":I
    .end local v2    # "yOffset":I
    goto :goto_2c6

    .line 1102
    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .restart local v22    # "clipRect":Landroid/graphics/Rect;
    :cond_2c4
    move-object/from16 v4, v22

    .end local v22    # "clipRect":Landroid/graphics/Rect;
    .restart local v4    # "clipRect":Landroid/graphics/Rect;
    :goto_2c6
    move-object v10, v4

    .end local v4    # "clipRect":Landroid/graphics/Rect;
    .local v10, "clipRect":Landroid/graphics/Rect;
    :goto_2c7
    if-eqz v19, :cond_2cd

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v1, :cond_2d3

    :cond_2cd
    if-eqz v18, :cond_2df

    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_2df

    .line 1104
    :cond_2d3
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->setGeometryAppliesWithResizeInTransaction(Z)V

    .line 1105
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1108
    :cond_2df
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_310

    .line 1109
    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1110
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v12, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v11, v12

    move-object v12, v5

    move v5, v11

    .end local v5    # "insets":Landroid/graphics/Rect;
    .local v12, "insets":Landroid/graphics/Rect;
    move v11, v6

    move v6, v7

    .end local v6    # "surfaceHeight":F
    .local v11, "surfaceHeight":F
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    goto :goto_312

    .line 1116
    .end local v11    # "surfaceHeight":F
    .end local v12    # "insets":Landroid/graphics/Rect;
    .restart local v5    # "insets":Landroid/graphics/Rect;
    .restart local v6    # "surfaceHeight":F
    :cond_310
    move-object v12, v5

    move v11, v6

    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "surfaceHeight":F
    .restart local v11    # "surfaceHeight":F
    .restart local v12    # "insets":Landroid/graphics/Rect;
    :goto_312
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_323

    .line 1117
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1118
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1121
    :cond_323
    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 1259
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_d

    .line 1260
    const-string v0, "WindowManager"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void

    .line 1263
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1264
    return-void
.end method

.method setWallpaperOffset(II)Z
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 1267
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v0, p2, :cond_a

    .line 1268
    return v1

    .line 1270
    :cond_a
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1271
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1274
    const/4 v0, 0x1

    :try_start_f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_1a

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1276
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1277
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_2a} :catch_40
    .catchall {:try_start_f .. :try_end_2a} :catchall_3e

    .line 1282
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1283
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3d

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_3d
    return v0

    .line 1282
    :catchall_3e
    move-exception v1

    goto :goto_82

    .line 1278
    :catch_40
    move-exception v1

    .line 1279
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_41
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error positioning surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pos=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_41 .. :try_end_6e} :catchall_3e

    .line 1282
    .end local v1    # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1283
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_81

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_81
    return v0

    .line 1282
    :goto_82
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setWallpaperOffset"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1283
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_95

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setWallpaperOffset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_95
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1522
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1524
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1525
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1526
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1527
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .registers 7

    .line 1297
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1298
    return v1

    .line 1300
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1301
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v1

    .line 1302
    .local v2, "isHwAccelerated":Z
    :goto_17
    if-eqz v2, :cond_1b

    const/4 v4, -0x3

    goto :goto_1d

    :cond_1b
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1303
    .local v4, "format":I
    :goto_1d
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v4, v5, :cond_2c

    .line 1304
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1305
    return v3

    .line 1307
    :cond_2c
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1466
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1467
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1468
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_1c

    .line 1469
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1471
    :cond_1c
    const-wide v2, 0x10e00000003L

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1472
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1473
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1474
    return-void
.end method
