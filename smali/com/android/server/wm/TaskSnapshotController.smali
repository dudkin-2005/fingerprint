.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_NONE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_REAL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_SKIP:I = -0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 106
    new-instance v0, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 108
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 130
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 137
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 25
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 418
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 419
    return-object v1

    .line 421
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 422
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_11

    .line 423
    return-object v1

    .line 425
    :cond_11
    nop

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v3

    const/16 v4, 0xff

    .line 425
    invoke-static {v3, v4}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 427
    .local v3, "color":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4

    .line 428
    .local v4, "statusBarColor":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v11

    .line 429
    .local v11, "navigationBarColor":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 430
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v13, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object v5, v13

    move v9, v4

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    .line 432
    .local v5, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 433
    .local v6, "width":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 435
    .local v7, "height":I
    const-string v8, "TaskSnapshotController"

    invoke-static {v8, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v8

    .line 436
    .local v8, "node":Landroid/view/RenderNode;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 437
    invoke-virtual {v8, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 438
    invoke-virtual {v8, v6, v7}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v9

    .line 439
    .local v9, "c":Landroid/view/DisplayListCanvas;
    invoke-virtual {v9, v3}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 440
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10, v13}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 441
    invoke-virtual {v5, v9, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 442
    invoke-virtual {v8, v9}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 443
    invoke-static {v8, v6, v7}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 444
    .local v10, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_7a

    .line 445
    return-object v1

    .line 449
    :cond_7a
    new-instance v1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 450
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v15, v13, Landroid/content/res/Configuration;->orientation:I

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 451
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v20

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v13

    move-object v13, v1

    invoke-direct/range {v13 .. v22}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 449
    return-object v1
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "state"    # Lcom/android/server/wm/WindowState;

    .line 370
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 371
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 372
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 523
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 524
    .local v0, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    .line 525
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    .line 526
    :cond_b
    const/4 v1, 0x0

    .line 527
    .local v1, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    :goto_c
    if-eqz v1, :cond_13

    .line 528
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 530
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    return-void

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 166
    return-void
.end method

.method public static synthetic lambda$OPdXuZQLetMnocdH6XV32JbNQ3I(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$screenTurningOff$1(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 506
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_b
    return-void
.end method

.method public static synthetic lambda$screenTurningOff$2(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 505
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 511
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 513
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 514
    nop

    .line 515
    return-void

    .line 511
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 513
    :catchall_2d
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method static synthetic lambda$snapshotTask$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 282
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 281
    :goto_24
    return v0
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 376
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 377
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 378
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 379
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    .line 364
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private snapshotOrientation(ILandroid/graphics/Rect;)I
    .registers 6
    .param p1, "appOrientation"    # I
    .param p2, "winFrame"    # Landroid/graphics/Rect;

    .line 235
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 236
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 237
    .local v1, "height":I
    if-le v0, v1, :cond_c

    const/4 v2, 0x2

    goto :goto_d

    :cond_c
    const/4 v2, 0x1

    .line 238
    .local v2, "winOrientation":I
    :goto_d
    if-eqz p1, :cond_12

    if-eq p1, v2, :cond_12

    .line 239
    return v2

    .line 241
    :cond_12
    return p1
.end method

.method private snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 26
    .param p1, "task"    # Lcom/android/server/wm/Task;

    move-object/from16 v0, p0

    .line 246
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 247
    .local v2, "top":Lcom/android/server/wm/AppWindowToken;
    const/4 v3, 0x0

    if-nez v2, :cond_e

    .line 248
    return-object v3

    .line 250
    :cond_e
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 251
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_15

    .line 252
    return-object v3

    .line 254
    :cond_15
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 255
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_2a

    .line 256
    const-string v5, "WindowManager"

    const-string v6, "Attempted to take screenshot while display was off."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2a
    return-object v3

    .line 260
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_32

    .line 261
    return-object v3

    .line 264
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 270
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    or-int/2addr v5, v6

    if-eqz v5, :cond_55

    .line 272
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to take screenshot. App is animating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_55
    return-object v3

    .line 277
    :cond_56
    sget-object v5, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    .line 285
    .local v5, "hasVisibleChild":Z
    if-nez v5, :cond_7d

    .line 291
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    or-int/2addr v6, v7

    if-eqz v6, :cond_7c

    .line 293
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_7c
    return-object v3

    .line 298
    :cond_7d
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    .line 299
    .local v7, "isLowRamDevice":Z
    if-eqz v7, :cond_86

    sget v8, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    goto :goto_88

    :cond_86
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_88
    move v15, v8

    .line 300
    .local v15, "scaleFraction":F
    iget-object v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 301
    iget-object v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 303
    nop

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 303
    invoke-static {v8, v10, v15}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 312
    .local v14, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_b3

    iget-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v8, :cond_b1

    goto :goto_b3

    :cond_b1
    move v8, v9

    goto :goto_b4

    :cond_b3
    :goto_b3
    move v8, v6

    :goto_b4
    move/from16 v19, v8

    .line 315
    .local v19, "isWindowTranslucent":Z
    if-eqz v14, :cond_199

    invoke-virtual {v14}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v8

    if-le v8, v6, :cond_199

    invoke-virtual {v14}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v8

    if-gt v8, v6, :cond_ca

    .line 321
    move-object/from16 v22, v14

    move/from16 v23, v15

    goto/16 :goto_19d

    .line 329
    :cond_ca
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->mOpExtraConfiguration:Landroid/content/res/OpExtraConfiguration;

    iget v3, v3, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 330
    .local v3, "themeChanged":I
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Lcom/android/server/wm/TaskSnapshotController;->snapshotOrientation(ILandroid/graphics/Rect;)I

    move-result v13

    .line 332
    .local v13, "winOrientation":I
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v13, :cond_108

    .line 333
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set theme changed for snapshot win:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " winOri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v3, -0x1

    goto :goto_15f

    .line 336
    :cond_108
    iget-object v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v8, v4, :cond_126

    .line 337
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set theme changed for snapshot IME target:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v3, -0x1

    goto :goto_15f

    .line 340
    :cond_126
    iget-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->skipSnapshot:Z

    if-eqz v8, :cond_144

    .line 341
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set theme changed for skipSnapshot: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v9, v2, Lcom/android/server/wm/AppWindowToken;->skipSnapshot:Z

    .line 343
    const/4 v3, -0x2

    goto :goto_15f

    .line 345
    :cond_144
    iget-boolean v8, v2, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v8, :cond_15f

    .line 346
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set theme changed for QuickReply app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v3, -0x1

    .line 356
    :cond_15f
    :goto_15f
    new-instance v20, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    .line 357
    invoke-direct {v0, v4}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v11

    const/16 v16, 0x1

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v18

    .line 359
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v8

    if-eqz v8, :cond_180

    if-eqz v19, :cond_17e

    goto :goto_180

    :cond_17e
    move v6, v9

    nop

    :cond_180
    :goto_180
    move-object/from16 v8, v20

    move-object v9, v14

    move v12, v7

    move/from16 v21, v13

    move v13, v15

    .end local v13    # "winOrientation":I
    .local v21, "winOrientation":I
    move-object/from16 v22, v14

    move/from16 v14, v16

    .end local v14    # "buffer":Landroid/graphics/GraphicBuffer;
    .local v22, "buffer":Landroid/graphics/GraphicBuffer;
    move/from16 v23, v15

    move/from16 v15, v17

    .end local v15    # "scaleFraction":F
    .local v23, "scaleFraction":F
    move/from16 v16, v18

    move/from16 v17, v6

    move/from16 v18, v3

    invoke-direct/range {v8 .. v18}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZI)V

    .line 356
    return-object v20

    .line 321
    .end local v3    # "themeChanged":I
    .end local v21    # "winOrientation":I
    .end local v22    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v23    # "scaleFraction":F
    .restart local v14    # "buffer":Landroid/graphics/GraphicBuffer;
    .restart local v15    # "scaleFraction":F
    :cond_199
    move-object/from16 v22, v14

    move/from16 v23, v15

    .end local v14    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v15    # "scaleFraction":F
    .restart local v22    # "buffer":Landroid/graphics/GraphicBuffer;
    .restart local v23    # "scaleFraction":F
    :goto_19d
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    or-int/2addr v6, v8

    if-eqz v6, :cond_1ba

    .line 323
    const-string v6, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to take screenshot for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1ba
    return-object v3
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 176
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 388
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2b

    .line 389
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 390
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 394
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 395
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 398
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "reducedResolution"    # Z

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_b

    sget-boolean v1, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 403
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_14

    .line 404
    const/4 v1, 0x2

    return v1

    .line 405
    :cond_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 406
    const/4 v1, 0x1

    return v1

    .line 408
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 5
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "visible"    # Z

    .line 151
    if-nez p2, :cond_f

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 154
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 473
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 468
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 461
    return-void
.end method

.method onTransitionStarting()V
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 145
    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 479
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 480
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 495
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 496
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 497
    return-void

    .line 501
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3
    .param p1, "paused"    # Z

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 489
    return-void
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 179
    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_7f

    .line 180
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 181
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v2

    .line 183
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_82

    .line 193
    const/4 v3, 0x0

    goto :goto_22

    .line 185
    :pswitch_17
    goto :goto_7c

    .line 187
    :pswitch_18
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 188
    .local v3, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_22

    .line 190
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :pswitch_1d
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 191
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 193
    :goto_22
    nop

    .line 196
    if-eqz v3, :cond_7c

    .line 197
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    .line 198
    .local v4, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-nez v5, :cond_36

    goto :goto_52

    .line 203
    :cond_36
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v5, v1, v3}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 204
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v7, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 205
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 206
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskWindowContainerController;->reportSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 206
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "mode":I
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    goto :goto_7c

    .line 199
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "mode":I
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_52
    :goto_52
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 200
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "mode":I
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 211
    .end local v0    # "i":I
    :cond_7f
    return-void

    nop

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method systemReady()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 141
    return-void
.end method
