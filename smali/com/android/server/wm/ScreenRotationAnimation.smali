.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final IGNORE_STATUSBAR_DIRECTION_DOWN:I = 0x4

.field static final IGNORE_STATUSBAR_DIRECTION_LEFT:I = 0x1

.field static final IGNORE_STATUSBAR_DIRECTION_RIGHT:I = 0x3

.field static final IGNORE_STATUSBAR_DIRECTION_UP:I = 0x2

.field static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TWO_PHASE_ANIMATION:Z

.field static final USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mEnterFrameCount:I

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mInterpolatedColor:Landroid/graphics/Color;

.field private mIsPerfLockAcquired:Z

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field mScreenShotPopularColor:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I

.field mWindowingLayerPopularColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "forceDefaultOrientation"    # Z
    .param p4, "isSecure"    # Z
    .param p5, "service"    # Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 255
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 79
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 89
    iput v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    .line 90
    iput v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWindowingLayerPopularColor:I

    .line 91
    new-instance v4, Landroid/graphics/Color;

    invoke-direct {v4}, Landroid/graphics/Color;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mInterpolatedColor:Landroid/graphics/Color;

    .line 92
    iput v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterFrameCount:I

    .line 102
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 103
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 114
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 116
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 118
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 125
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 127
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 129
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 135
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 137
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 139
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 144
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 146
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 148
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 151
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 152
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 153
    new-instance v4, Landroid/view/animation/Transformation;

    invoke-direct {v4}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 161
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 162
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 163
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 164
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 165
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 166
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 256
    move-object/from16 v4, p5

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 257
    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 258
    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 259
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 261
    new-instance v6, Landroid/util/BoostFramework;

    invoke-direct {v6}, Landroid/util/BoostFramework;-><init>()V

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 265
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 268
    .local v7, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 269
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v9, 0x1

    if-eqz p3, :cond_e6

    .line 271
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 272
    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 273
    .local v10, "originalWidth":I
    iget v11, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 273
    .local v11, "originalHeight":I
    goto :goto_ea

    .line 276
    .end local v10    # "originalWidth":I
    .end local v11    # "originalHeight":I
    :cond_e6
    iget v10, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 277
    .restart local v10    # "originalWidth":I
    iget v11, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 279
    .restart local v11    # "originalHeight":I
    :goto_ea
    const/4 v12, 0x3

    if-eq v7, v9, :cond_f5

    if-ne v7, v12, :cond_f0

    goto :goto_f5

    .line 284
    :cond_f0
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 285
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_f9

    .line 281
    :cond_f5
    :goto_f5
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 282
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 288
    :goto_f9
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 289
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 290
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 292
    new-instance v13, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v13}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 294
    .local v13, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_104
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v14

    const-string v12, "ScreenshotSurface"

    .line 295
    invoke-virtual {v14, v12}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    iget v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 296
    invoke-virtual {v12, v14, v9}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v9
    :try_end_116
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_104 .. :try_end_116} :catch_1f5

    .line 297
    move/from16 v12, p4

    :try_start_118
    invoke-virtual {v9, v12}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 302
    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v9

    .line 304
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 308
    const/4 v9, 0x0

    .line 309
    .local v9, "displayId":I
    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v14

    .line 313
    .local v14, "displayHandle":Landroid/os/IBinder;
    if-eqz v14, :cond_1e7

    .line 314
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    .line 315
    .local v3, "sur":Landroid/view/Surface;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v4

    invoke-static/range {v16 .. v22}, Landroid/view/SurfaceControl;->screenshotToBufferWithSecureLayersUnsafe(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v0
    :try_end_152
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_118 .. :try_end_152} :catch_1f3

    move-object v2, v0

    .line 324
    .local v2, "gb":Landroid/graphics/GraphicBuffer;
    if-eqz v2, :cond_1da

    .line 329
    const/4 v0, 0x0

    move-object v4, v0

    .line 331
    .local v4, "screenShotBitmap":Landroid/graphics/Bitmap;
    :try_start_157
    invoke-static {v2}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_15b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_157 .. :try_end_15b} :catch_162
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_157 .. :try_end_15b} :catch_15d

    move-object v4, v0

    .line 334
    goto :goto_170

    .line 379
    .end local v2    # "gb":Landroid/graphics/GraphicBuffer;
    .end local v3    # "sur":Landroid/view/Surface;
    .end local v4    # "screenShotBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "displayId":I
    .end local v14    # "displayHandle":Landroid/os/IBinder;
    :catch_15d
    move-exception v0

    move-object/from16 v25, v6

    goto/16 :goto_1fa

    .line 332
    .restart local v2    # "gb":Landroid/graphics/GraphicBuffer;
    .restart local v3    # "sur":Landroid/view/Surface;
    .restart local v4    # "screenShotBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "displayId":I
    .restart local v14    # "displayHandle":Landroid/os/IBinder;
    :catch_162
    move-exception v0

    move-object v15, v0

    .line 333
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    move-object/from16 v23, v4

    :try_start_166
    const-string v4, "WindowManager"

    .line 333
    .end local v4    # "screenShotBitmap":Landroid/graphics/Bitmap;
    .local v23, "screenShotBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v5, "init(): taking screenshot to Bitmap failed:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_166 .. :try_end_16e} :catch_1f3

    .line 337
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    move-object/from16 v4, v23

    .line 337
    .end local v23    # "screenShotBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "screenShotBitmap":Landroid/graphics/Bitmap;
    :goto_170
    if-eqz v4, :cond_191

    .line 340
    :try_start_172
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    .line 342
    if-eqz v4, :cond_191

    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, "ignoreStatusBarDir":I
    const/4 v5, 0x1

    if-ne v7, v5, :cond_182

    .line 346
    const/4 v0, 0x3

    goto :goto_186

    .line 347
    :cond_182
    const/4 v5, 0x3

    if-ne v7, v5, :cond_186

    .line 348
    const/4 v0, 0x1

    .line 351
    :cond_186
    :goto_186
    const/16 v5, 0x28

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I

    move-result v5

    iput v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    .line 353
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_191
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_172 .. :try_end_191} :catch_15d

    .line 359
    .end local v0    # "ignoreStatusBarDir":I
    :cond_191
    :try_start_191
    invoke-virtual {v3, v2}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_194
    .catch Ljava/lang/RuntimeException; {:try_start_191 .. :try_end_194} :catch_19a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_191 .. :try_end_194} :catch_15d

    .line 362
    nop

    .line 366
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    goto :goto_1ba

    .line 360
    :catch_19a
    move-exception v0

    move-object v5, v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_19c
    const-string v5, "WindowManager"

    move-object/from16 v24, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .line 361
    .end local v4    # "screenShotBitmap":Landroid/graphics/Bitmap;
    .local v24, "screenShotBitmap":Landroid/graphics/Bitmap;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19c .. :try_end_1a5} :catch_1f3

    move-object/from16 v25, v6

    :try_start_1a7
    const-string v6, "Failed to attach screenshot - "

    .line 361
    .end local v6    # "display":Landroid/view/Display;
    .local v25, "display":Landroid/view/Display;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1ba
    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->doesContainSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 367
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x1

    invoke-virtual {v13, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 369
    :cond_1c6
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x1eab91

    invoke-virtual {v13, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 370
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v13, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 371
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 372
    .end local v24    # "screenShotBitmap":Landroid/graphics/Bitmap;
    goto :goto_1e3

    .line 373
    .end local v25    # "display":Landroid/view/Display;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_1da
    move-object/from16 v25, v6

    .line 373
    .end local v6    # "display":Landroid/view/Display;
    .restart local v25    # "display":Landroid/view/Display;
    const-string v0, "WindowManager"

    const-string v4, "Unable to take screenshot of display 0"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1e3
    invoke-virtual {v3}, Landroid/view/Surface;->destroy()V

    .line 376
    .end local v2    # "gb":Landroid/graphics/GraphicBuffer;
    .end local v3    # "sur":Landroid/view/Surface;
    goto :goto_1f0

    .line 377
    .end local v25    # "display":Landroid/view/Display;
    .restart local v6    # "display":Landroid/view/Display;
    :cond_1e7
    move-object/from16 v25, v6

    .line 377
    .end local v6    # "display":Landroid/view/Display;
    .restart local v25    # "display":Landroid/view/Display;
    const-string v0, "WindowManager"

    const-string v2, "Built-in display 0 is null."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1a7 .. :try_end_1f0} :catch_1f1

    .line 381
    .end local v9    # "displayId":I
    .end local v14    # "displayHandle":Landroid/os/IBinder;
    :goto_1f0
    goto :goto_201

    .line 379
    :catch_1f1
    move-exception v0

    goto :goto_1fa

    .line 379
    .end local v25    # "display":Landroid/view/Display;
    .restart local v6    # "display":Landroid/view/Display;
    :catch_1f3
    move-exception v0

    goto :goto_1f8

    :catch_1f5
    move-exception v0

    move/from16 v12, p4

    :goto_1f8
    move-object/from16 v25, v6

    .line 380
    .end local v6    # "display":Landroid/view/Display;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v25    # "display":Landroid/view/Display;
    :goto_1fa
    const-string v2, "WindowManager"

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_201
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_209

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_226

    :cond_209
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": CREATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_226
    invoke-direct {v1, v13, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 386
    invoke-virtual {v13}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 387
    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .line 422
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_2a

    goto :goto_28

    .line 435
    :pswitch_5
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 436
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_28

    .line 431
    :pswitch_f
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 432
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 433
    goto :goto_28

    .line 427
    :pswitch_1a
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 428
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 429
    goto :goto_28

    .line 424
    :pswitch_24
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 425
    nop

    .line 439
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1a
        :pswitch_f
        :pswitch_5
    .end packed-switch
.end method

.method private hasAnimations()Z
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I

    .line 442
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 447
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 448
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 452
    return-void
.end method

.method private setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .registers 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4e

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 397
    .local v0, "x":F
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 398
    .local v1, "y":F
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_2a

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 400
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 401
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 403
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 404
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v6, v2, v3

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x1

    aget v7, v2, v3

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 407
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 418
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_4e
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z
    .registers 34
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    .line 472
    move/from16 v8, p9

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    if-nez v0, :cond_16

    .line 474
    return v7

    .line 476
    :cond_16
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_1c

    .line 477
    return v6

    .line 480
    :cond_1c
    iput-boolean v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 482
    const/16 v16, 0x0

    .line 485
    .local v16, "firstStart":Z
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v5

    .line 514
    .local v5, "delta":I
    if-eqz v15, :cond_3e

    if-eqz v8, :cond_3e

    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "customAnim":Z
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 517
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_9f

    .line 519
    .end local v0    # "customAnim":Z
    :cond_3e
    const/4 v0, 0x0

    .line 520
    .restart local v0    # "customAnim":Z
    packed-switch v5, :pswitch_data_20c

    goto :goto_9f

    .line 552
    :pswitch_43
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a007d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 554
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a007c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_9f

    .line 542
    :pswitch_5a
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0077

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 544
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0076

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 550
    goto :goto_9f

    .line 532
    :pswitch_71
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0080

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 534
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a007f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 540
    goto :goto_9f

    .line 522
    :pswitch_88
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0074

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 524
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0073

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 530
    nop

    .line 598
    .end local v0    # "customAnim":Z
    .local v17, "customAnim":Z
    :goto_9f
    move/from16 v17, v0

    const/4 v0, 0x3

    const/4 v4, 0x2

    if-eqz v5, :cond_13b

    if-ne v5, v4, :cond_ad

    .line 599
    move/from16 v21, v4

    move v15, v5

    move v9, v6

    goto/16 :goto_13f

    .line 603
    :cond_ad
    if-le v13, v14, :cond_ff

    .line 605
    sub-int v3, v13, v14

    .line 606
    .local v3, "tmp":I
    if-ne v5, v6, :cond_d7

    .line 607
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v20, v3

    move v3, v13

    .end local v3    # "tmp":I
    .local v20, "tmp":I
    move/from16 v21, v4

    move v4, v14

    move v15, v5

    move v5, v6

    .end local v5    # "delta":I
    .local v15, "delta":I
    const/4 v9, 0x1

    move v6, v7

    move/from16 v7, v20

    move/from16 v8, v20

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .line 608
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v7, v8

    .end local v20    # "tmp":I
    .local v8, "tmp":I
    move/from16 v22, v8

    .end local v8    # "tmp":I
    .local v22, "tmp":I
    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    goto :goto_fe

    .line 609
    .end local v15    # "delta":I
    .end local v22    # "tmp":I
    .restart local v3    # "tmp":I
    .restart local v5    # "delta":I
    :cond_d7
    move/from16 v22, v3

    move/from16 v21, v4

    move v15, v5

    move v9, v6

    .end local v3    # "tmp":I
    .end local v5    # "delta":I
    .restart local v15    # "delta":I
    .restart local v22    # "tmp":I
    if-ne v15, v0, :cond_fe

    .line 610
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v8, v22

    neg-int v7, v8

    .end local v22    # "tmp":I
    .restart local v8    # "tmp":I
    neg-int v4, v8

    move v3, v13

    move/from16 v18, v4

    move v4, v14

    move v0, v8

    move/from16 v8, v18

    .end local v8    # "tmp":I
    .local v0, "tmp":I
    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .line 611
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v7, v0

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .line 613
    .end local v0    # "tmp":I
    :cond_fe
    :goto_fe
    goto :goto_151

    .line 615
    .end local v15    # "delta":I
    .restart local v5    # "delta":I
    :cond_ff
    move/from16 v21, v4

    move v15, v5

    move v9, v6

    .end local v5    # "delta":I
    .restart local v15    # "delta":I
    sub-int v0, v14, v13

    .line 616
    .restart local v0    # "tmp":I
    if-ne v15, v9, :cond_120

    .line 617
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v7, v0

    neg-int v8, v0

    move v3, v13

    move v4, v14

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .line 618
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v8, v0

    move v7, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    goto :goto_151

    .line 619
    :cond_120
    const/4 v2, 0x3

    if-ne v15, v2, :cond_151

    .line 620
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move v3, v13

    move v4, v14

    move v7, v0

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .line 621
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/view/animation/Animation;->initialize(IIIIII)V

    .end local v0    # "tmp":I
    goto :goto_151

    .line 599
    .end local v15    # "delta":I
    .restart local v5    # "delta":I
    :cond_13b
    move/from16 v21, v4

    move v15, v5

    move v9, v6

    .end local v5    # "delta":I
    .restart local v15    # "delta":I
    :goto_13f
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v13, v14, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 600
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v13, v14, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 630
    :cond_151
    :goto_151
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 631
    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 632
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 650
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 651
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v12}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 652
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 653
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v12}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 659
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v18

    .line 720
    .local v18, "layerStack":I
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 725
    if-nez v17, :cond_1d4

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_1d4

    .line 726
    new-instance v4, Landroid/graphics/Rect;

    neg-int v2, v13

    mul-int/lit8 v2, v2, 0x2

    neg-int v3, v14

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v5, v13, 0x3

    mul-int/lit8 v6, v14, 0x3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .local v4, "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 729
    .local v5, "inner":Landroid/graphics/Rect;
    new-instance v8, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1eab90

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v19, 0x0

    move-object v2, v8

    move/from16 v20, v9

    move-object/from16 v9, p1

    move-object v3, v9

    move-object v0, v8

    move/from16 v8, v19

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 731
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    .line 732
    .local v0, "sc":Landroid/graphics/Color;
    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 733
    .local v2, "color":[F
    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v3

    const/4 v6, 0x0

    aput v3, v2, v6

    .line 734
    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v3

    aput v3, v2, v20

    .line 735
    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v3

    aput v3, v2, v21

    .line 736
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v3, v9, v2}, Lcom/android/server/wm/BlackFrame;->setColor(Landroid/view/SurfaceControl$Transaction;[F)V

    .line 737
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    const/4 v6, 0x0

    invoke-virtual {v3, v9, v6}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .end local v0    # "sc":Landroid/graphics/Color;
    .end local v2    # "color":[F
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    goto :goto_1d8

    .line 741
    :cond_1d4
    move/from16 v20, v9

    move-object/from16 v9, p1

    :goto_1d8
    if-eqz v17, :cond_20b

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_20b

    .line 743
    :try_start_1de
    new-instance v4, Landroid/graphics/Rect;

    neg-int v0, v13

    mul-int/lit8 v0, v0, 0x1

    neg-int v2, v14

    mul-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v13, 0x2

    mul-int/lit8 v5, v14, 0x2

    invoke-direct {v4, v0, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 745
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 746
    .restart local v5    # "inner":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1eab90

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_202
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1de .. :try_end_202} :catch_203

    .line 750
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    goto :goto_20b

    .line 748
    :catch_203
    move-exception v0

    .line 749
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "WindowManager"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_20b
    :goto_20b
    return v20

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_88
        :pswitch_71
        :pswitch_5a
        :pswitch_43
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 14
    .param p1, "now"    # J

    .line 864
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 865
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 867
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1b

    .line 869
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 893
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v0, p1, v0

    goto :goto_25

    :cond_24
    move-wide v0, v1

    .line 917
    .local v0, "finishNow":J
    :goto_25
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 918
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_36

    .line 919
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 923
    :cond_36
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 924
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    const/4 v4, 0x1

    if-eqz v3, :cond_f6

    .line 925
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 928
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->getInterpolatedTime(J)F

    move-result v3

    .line 929
    .local v3, "interpolatedTime":F
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->getInterpolatedColor(F)Landroid/graphics/Color;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mInterpolatedColor:Landroid/graphics/Color;

    .line 931
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterFrameCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterFrameCount:I

    .line 932
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterFrameCount:I

    if-ne v5, v4, :cond_f6

    .line 934
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v5, v6}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v5

    .line 940
    .local v5, "delta":I
    if-eqz v5, :cond_c8

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6a

    goto :goto_c8

    .line 945
    :cond_6a
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    const/4 v7, 0x3

    const/high16 v8, 0x3e800000    # 0.25f

    if-eq v6, v7, :cond_8e

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-ne v6, v4, :cond_76

    goto :goto_8e

    .line 950
    :cond_76
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 951
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-direct {v7, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 950
    invoke-static {v6, v7, v8}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    goto :goto_a5

    .line 946
    :cond_8e
    :goto_8e
    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 947
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-direct {v7, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 946
    invoke-static {v6, v7, v8}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v6

    .line 950
    .local v6, "windowingLayerGraphicBuffer":Landroid/graphics/GraphicBuffer;
    :goto_a5
    nop

    .line 954
    if-eqz v6, :cond_cc

    .line 957
    invoke-static {v6}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 958
    .local v7, "windowingLayerBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_cc

    .line 961
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 963
    if-eqz v7, :cond_cc

    .line 965
    const/4 v8, 0x0

    .line 967
    .local v8, "ignoreStatusBarDir":I
    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-nez v9, :cond_bc

    .line 968
    const/4 v8, 0x2

    .line 971
    :cond_bc
    const/16 v9, 0x14

    invoke-virtual {p0, v7, v9, v8}, Lcom/android/server/wm/ScreenRotationAnimation;->getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I

    move-result v9

    iput v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWindowingLayerPopularColor:I

    .line 974
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .end local v6    # "windowingLayerGraphicBuffer":Landroid/graphics/GraphicBuffer;
    .end local v7    # "windowingLayerBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "ignoreStatusBarDir":I
    goto :goto_cc

    .line 941
    :cond_c8
    :goto_c8
    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    iput v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWindowingLayerPopularColor:I

    .line 980
    :cond_cc
    :goto_cc
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScreenShot Popular Color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Windowing Layer Popular Color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWindowingLayerPopularColor:I

    .line 981
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 980
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v3    # "interpolatedTime":F
    .end local v5    # "delta":I
    :cond_f6
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    const/4 v5, 0x0

    if-nez v3, :cond_11a

    .line 1010
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_10b

    .line 1012
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 1013
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 1014
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 1016
    :cond_10b
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_11a

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v3, :cond_11a

    .line 1017
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1018
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 1022
    :cond_11a
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_13d

    .line 1037
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_12e

    .line 1039
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 1040
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 1041
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 1043
    :cond_12e
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_13d

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v3, :cond_13d

    .line 1044
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1045
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 1074
    :cond_13d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v5}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1075
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v5}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1098
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_159

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_159

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_158

    goto :goto_159

    :cond_158
    goto :goto_15a

    :cond_159
    :goto_159
    move v2, v4

    .line 1105
    .local v2, "more":Z
    :goto_15a
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1109
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    move-object v10, p0

    .line 762
    iget-object v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v11, 0x0

    if-nez v0, :cond_7

    .line 764
    return v11

    .line 766
    :cond_7
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1c

    .line 767
    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z

    .line 770
    :cond_1c
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_21

    .line 771
    return v11

    .line 774
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 775
    return v0
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 1219
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public getInterpolatedColor(F)Landroid/graphics/Color;
    .registers 8
    .param p1, "interpolatedTime"    # F

    .line 1289
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mScreenShotPopularColor:I

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    .line 1290
    .local v0, "cA":Landroid/graphics/Color;
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWindowingLayerPopularColor:I

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    .line 1293
    .local v1, "cB":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    mul-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    .line 1294
    .local v2, "itrp_R":F
    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v4

    sub-float v5, v3, p1

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 1295
    .local v4, "itrp_G":F
    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v5

    sub-float/2addr v3, p1

    mul-float/2addr v5, v3

    invoke-virtual {v1}, Landroid/graphics/Color;->blue()F

    move-result v3

    mul-float/2addr v3, p1

    add-float/2addr v5, v3

    .line 1297
    .local v5, "itrp_B":F
    invoke-static {v2, v4, v5}, Landroid/graphics/Color;->valueOf(FFF)Landroid/graphics/Color;

    move-result-object v3

    return-object v3
.end method

.method public getMostPopularColorBoundary(Landroid/graphics/Bitmap;II)I
    .registers 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "offset"    # I
    .param p3, "ignoreStatusBarDir"    # I

    move-object/from16 v0, p1

    .line 1225
    move/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1226
    .local v2, "mWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1227
    .local v3, "mHeight":I
    mul-int/lit8 v4, p2, 0x2

    sub-int v4, v2, v4

    .line 1228
    .local v4, "mWidthOffset":I
    mul-int/lit8 v5, p2, 0x2

    sub-int v5, v3, v5

    .line 1229
    .local v5, "mHeightOffset":I
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    .line 1230
    .local v6, "boundaryCount":I
    const/4 v8, 0x0

    .line 1232
    .local v8, "count":I
    const/4 v9, 0x0

    if-ltz v4, :cond_ab

    if-gez v5, :cond_23

    goto/16 :goto_ab

    .line 1235
    :cond_23
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_37

    .line 1236
    if-eq v1, v12, :cond_33

    if-ne v1, v10, :cond_2d

    goto :goto_33

    .line 1240
    :cond_2d
    if-eq v1, v11, :cond_31

    if-ne v1, v7, :cond_37

    .line 1243
    :cond_31
    sub-int/2addr v6, v4

    goto :goto_37

    .line 1239
    :cond_33
    :goto_33
    sub-int v13, v6, v5

    add-int/lit8 v6, v13, 0x2

    .line 1247
    :cond_37
    :goto_37
    new-array v13, v6, [I

    .line 1249
    .local v13, "boundary":[I
    move v14, v8

    move v8, v9

    .local v8, "x":I
    .local v14, "count":I
    :goto_3b
    if-ge v8, v4, :cond_63

    .line 1251
    if-eq v1, v11, :cond_4c

    .line 1252
    add-int/lit8 v15, v14, 0x1

    .local v15, "count":I
    add-int v11, v8, p2

    add-int v10, v9, p2

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    aput v10, v13, v14

    .line 1254
    .end local v14    # "count":I
    move v14, v15

    .end local v15    # "count":I
    .restart local v14    # "count":I
    :cond_4c
    if-eq v1, v7, :cond_5d

    .line 1255
    add-int/lit8 v10, v14, 0x1

    .local v10, "count":I
    add-int v11, v8, p2

    add-int/lit8 v15, v3, -0x1

    sub-int v7, v15, p2

    invoke-virtual {v0, v11, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    aput v7, v13, v14

    .line 1249
    .end local v14    # "count":I
    move v14, v10

    .end local v10    # "count":I
    .restart local v14    # "count":I
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    goto :goto_3b

    .line 1259
    .end local v8    # "x":I
    :cond_63
    move v7, v12

    .local v7, "y":I
    :goto_64
    add-int/lit8 v8, v5, -0x1

    if-ge v7, v8, :cond_8c

    .line 1261
    if-eq v1, v12, :cond_77

    .line 1262
    add-int/lit8 v8, v14, 0x1

    .local v8, "count":I
    add-int v10, v9, p2

    add-int v11, v7, p2

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    aput v10, v13, v14

    .line 1264
    .end local v14    # "count":I
    move v14, v8

    .end local v8    # "count":I
    .restart local v14    # "count":I
    :cond_77
    const/4 v8, 0x3

    if-eq v1, v8, :cond_89

    .line 1265
    add-int/lit8 v10, v14, 0x1

    .restart local v10    # "count":I
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v11, p2

    add-int v8, v7, p2

    invoke-virtual {v0, v11, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    aput v8, v13, v14

    .line 1259
    .end local v14    # "count":I
    move v14, v10

    .end local v10    # "count":I
    .restart local v14    # "count":I
    :cond_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 1269
    .end local v7    # "y":I
    :cond_8c
    invoke-static {v13}, Ljava/util/Arrays;->sort([I)V

    .line 1271
    const/4 v7, 0x1

    .line 1272
    .local v7, "counter":I
    const/4 v8, 0x1

    .line 1273
    .local v8, "length":I
    const/4 v9, 0x0

    .line 1274
    .local v9, "mostPopularColor":I
    nop

    .local v12, "i":I
    :goto_93
    move v10, v12

    .end local v12    # "i":I
    .local v10, "i":I
    if-ge v10, v6, :cond_aa

    .line 1275
    aget v11, v13, v10

    add-int/lit8 v12, v10, -0x1

    aget v12, v13, v12

    if-ne v11, v12, :cond_a6

    .line 1276
    add-int/lit8 v7, v7, 0x1

    .line 1277
    if-le v7, v8, :cond_a7

    .line 1278
    move v8, v7

    .line 1279
    aget v9, v13, v10

    goto :goto_a7

    .line 1282
    :cond_a6
    const/4 v7, 0x1

    .line 1274
    :cond_a7
    :goto_a7
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "i":I
    .restart local v12    # "i":I
    goto :goto_93

    .line 1285
    .end local v12    # "i":I
    :cond_aa
    return v9

    .line 1232
    .end local v7    # "counter":I
    .end local v9    # "mostPopularColor":I
    .end local v13    # "boundary":[I
    .end local v14    # "count":I
    .local v8, "count":I
    :cond_ab
    :goto_ab
    return v9
.end method

.method hasScreenshot()Z
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 846
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public isRotating()Z
    .registers 3

    .line 850
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public kill()V
    .registers 5

    .line 780
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 781
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2a

    .line 782
    :cond_d
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": DESTROY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 785
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 787
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_3c

    .line 788
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 789
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 791
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_47

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 793
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 795
    :cond_47
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_52

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 797
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 831
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5d

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 833
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 835
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_68

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 837
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 839
    :cond_68
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_78

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 843
    :cond_78
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 182
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 183
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4a

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 194
    :cond_4a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_72

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 198
    :cond_72
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 199
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 201
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 203
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 205
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 207
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 208
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 209
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 211
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 213
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 215
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 217
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 218
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 219
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 221
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 223
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 224
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 228
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 232
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 235
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 236
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 239
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 240
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 241
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_25f

    .line 242
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    :cond_25f
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"    # I
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public stepAnimationLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .line 1168
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 1171
    return v0

    .line 1174
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_41

    .line 1201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_17

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1204
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_20

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1207
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 1208
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 1209
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_41

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-nez v1, :cond_41

    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 1211
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 1215
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1113
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_5

    .line 1114
    return-void

    .line 1117
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    .line 1118
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_1a

    .line 1120
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1124
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_3b

    .line 1125
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_30

    .line 1127
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_3b

    .line 1129
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1133
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_74

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_51

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_74

    .line 1138
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1140
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_74

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1146
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_bf

    .line 1147
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_8a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_8a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_8a

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_bf

    .line 1151
    :cond_8a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 1154
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1155
    .local v0, "color":[F
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mInterpolatedColor:Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->red()F

    move-result v2

    aput v2, v0, v1

    .line 1156
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mInterpolatedColor:Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->green()F

    move-result v2

    aput v2, v0, v1

    .line 1157
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mInterpolatedColor:Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->blue()F

    move-result v2

    aput v2, v0, v1

    .line 1158
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/BlackFrame;->setColor(Landroid/view/SurfaceControl$Transaction;[F)V

    .line 1159
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1164
    .end local v0    # "color":[F
    :cond_bf
    :goto_bf
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 1165
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 248
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 249
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 250
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 252
    return-void
.end method
