.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x10

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private mTraversalScheduled:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 101
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 107
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$1;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 109
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 115
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 116
    new-instance p1, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 750
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 751
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    return v1

    .line 750
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 755
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 418
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 419
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    .line 422
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 424
    :cond_1
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 448
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_0

    .line 449
    return v1

    .line 447
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;-><init>(ILandroid/util/ArraySet;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 399
    if-eqz p1, :cond_0

    .line 400
    return-object p1

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 404
    if-eqz p1, :cond_1

    .line 405
    return-object p1

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    return-object p1
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 362
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_0

    .line 363
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    nop

    :cond_1
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 767
    nop

    .line 768
    nop

    .line 769
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 770
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 771
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    goto :goto_1

    .line 774
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 775
    if-le v4, v1, :cond_1

    .line 776
    nop

    .line 777
    nop

    .line 769
    move-object v2, v3

    move v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 780
    :cond_2
    return-object v2
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 10

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 503
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 504
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 509
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v5, p2

    move v7, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 510
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 514
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 515
    iput-boolean v1, v3, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 518
    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_0

    .line 519
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 520
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 523
    :cond_0
    if-eqz p2, :cond_2

    .line 524
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v4

    .line 525
    iget-object v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    iget v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v4, v5, :cond_2

    .line 526
    :cond_1
    iput-object v3, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 527
    iput v4, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 530
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 531
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 503
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_4
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .locals 5

    .line 537
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 538
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 540
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 542
    if-eqz v3, :cond_1

    .line 543
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 544
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 548
    :cond_1
    const/16 v3, 0x15

    if-eq p1, v0, :cond_2

    if-ne p1, v3, :cond_5

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne p1, v3, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    and-int/2addr p2, v2

    if-eqz p2, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 554
    :cond_5
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;
    .locals 12

    .line 457
    nop

    .line 458
    nop

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 460
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    move v4, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 461
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 464
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, p2

    move v9, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 468
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 471
    iput-boolean v1, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 474
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 476
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 481
    nop

    .line 483
    if-eqz p2, :cond_2

    .line 484
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v6

    .line 485
    if-eqz v3, :cond_1

    if-le v6, v4, :cond_2

    .line 486
    :cond_1
    nop

    .line 487
    nop

    .line 490
    move-object v3, v5

    move v4, v6

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 491
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_1

    .line 492
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 493
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 460
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string p3, "handleAppTransitionReadyLocked"

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_5
    return-object v3
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    .line 397
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 397
    :goto_0
    return p0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 0

    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 430
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 431
    nop

    .line 432
    nop

    .line 433
    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 434
    if-ge v4, v0, :cond_0

    .line 435
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .line 436
    :cond_0
    sub-int v5, v4, v0

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 437
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v6

    .line 438
    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-le v6, v2, :cond_1

    .line 439
    nop

    .line 440
    nop

    .line 433
    move-object v3, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 443
    :cond_2
    return-object v3
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .locals 7

    .line 636
    if-eqz p1, :cond_6

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    const/4 v1, 0x0

    goto :goto_0

    .line 645
    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 646
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 647
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 649
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 652
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v6

    .line 659
    if-eqz v6, :cond_2

    const/16 v6, 0x14

    if-ne p1, v6, :cond_2

    .line 660
    const/16 p1, 0x15

    goto :goto_2

    .line 666
    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 667
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 669
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 678
    :pswitch_0
    const/16 p1, 0xf

    goto :goto_1

    .line 673
    :pswitch_1
    const/16 p1, 0xe

    .line 674
    nop

    .line 679
    :goto_1
    goto :goto_2

    .line 683
    :cond_3
    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 684
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 685
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, p2, :cond_4

    .line 688
    const/16 p1, 0xc

    goto :goto_2

    .line 691
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 692
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, p2, :cond_5

    const/16 p2, 0x19

    if-eq p1, p2, :cond_5

    .line 697
    const/16 p1, 0xd

    .line 702
    :cond_5
    :goto_2
    return p1

    .line 638
    :cond_6
    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 372
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    if-nez p1, :cond_1

    .line 377
    return-void

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    .line 380
    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    .line 382
    if-eqz p1, :cond_2

    .line 383
    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 386
    :cond_2
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .locals 8

    .line 163
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 168
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_1

    .line 176
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_2

    .line 181
    return-void

    .line 184
    :cond_2
    const-string/jumbo v0, "wmLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 187
    nop

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 189
    nop

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 193
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    const-string v3, "WindowManager"

    const-string v5, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 198
    monitor-enter v3

    .line 200
    const-wide/16 v5, 0xfa

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 201
    :catch_0
    move-exception v5

    .line 203
    :goto_1
    :try_start_1
    monitor-exit v3

    .line 207
    move v3, v0

    goto :goto_3

    .line 203
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 207
    :cond_4
    move v3, v4

    :goto_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 209
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 211
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 212
    iget v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x6

    if-ge v3, v0, :cond_5

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_4

    .line 215
    :cond_5
    const-string v0, "WindowManager"

    const-string v3, "Performed 6 layouts in a row. Skipping"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_4

    .line 219
    :cond_6
    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 222
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :cond_7
    goto :goto_5

    .line 226
    :catch_1
    move-exception v0

    .line 227
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 228
    const-string v3, "WindowManager"

    const-string v4, "Unhandled exception while laying out windows"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 3

    .line 784
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_0

    .line 788
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 791
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 792
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 793
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 794
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 797
    :cond_0
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 565
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 566
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_b

    .line 573
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 574
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    return v1

    .line 580
    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_5

    .line 581
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 591
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    move v4, v3

    goto :goto_1

    .line 591
    :cond_1
    nop

    .line 592
    move v4, v1

    :goto_1
    if-nez v4, :cond_2

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_2

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_2

    .line 593
    return v1

    .line 595
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v5

    .line 596
    if-eqz v4, :cond_3

    .line 597
    const/4 v2, 0x2

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 599
    :cond_3
    nop

    .line 600
    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v2, v2, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v2, :cond_4

    .line 601
    nop

    .line 599
    move v2, v3

    goto :goto_2

    .line 602
    :cond_4
    const/4 v2, 0x4

    .line 599
    :goto_2
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 609
    return v1

    .line 612
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result p1

    if-nez p1, :cond_7

    .line 617
    return v1

    .line 621
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 622
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 623
    :cond_8
    move p1, v1

    goto :goto_5

    .line 622
    :cond_9
    :goto_4
    nop

    .line 623
    move p1, v3

    :goto_5
    if-eqz p1, :cond_a

    .line 624
    return v3

    .line 626
    :cond_a
    return v1

    .line 628
    :cond_b
    return v3
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 135
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 138
    :cond_0
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3

    .line 235
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 236
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 128
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mObscuringWindow="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .locals 14

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 251
    return v2

    .line 253
    :cond_0
    const-string v1, "AppTransitionReady"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    .line 257
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v5, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 258
    const/4 v1, -0x1

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v5, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 261
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 263
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 265
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 267
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v6, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 270
    move v6, v2

    :goto_0
    if-ge v6, v0, :cond_2

    .line 271
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 276
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 270
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 288
    move v0, v6

    goto :goto_1

    .line 287
    :cond_3
    nop

    .line 288
    move v0, v2

    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    .line 290
    move v7, v6

    goto :goto_2

    .line 288
    :cond_4
    nop

    .line 290
    move v7, v2

    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 293
    move v0, v6

    goto :goto_3

    .line 290
    :cond_5
    nop

    .line 293
    move v0, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v1

    .line 294
    invoke-direct {p0, v1, v7, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    .line 303
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    goto :goto_4

    .line 305
    :cond_6
    nop

    .line 307
    move-object v7, v8

    :goto_4
    invoke-static {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 308
    invoke-direct {p0, v7, v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 311
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    .line 314
    :cond_7
    move v1, v2

    goto :goto_6

    .line 311
    :cond_8
    :goto_5
    nop

    .line 314
    move v1, v6

    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v7}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 316
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 318
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iput-object v8, v7, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 319
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {p0, v0, v9, v1, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 320
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v11, v7, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 321
    invoke-direct {p0, v0, v9, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v10

    .line 324
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0, v10, v11}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 326
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v1

    .line 327
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v7, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move v9, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v7

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 334
    nop

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 344
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x2f

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 354
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 353
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 358
    or-int/lit8 v0, v7, 0x1

    or-int/2addr v0, v1

    return v0

    .line 333
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method isInLayout()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .locals 1

    .line 141
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 719
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 720
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    move v0, v1

    goto :goto_1

    .line 720
    :cond_1
    :goto_0
    nop

    .line 721
    move v0, v2

    .line 722
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    .line 723
    xor-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v2

    move v5, v3

    move v3, v2

    :goto_2
    if-ltz v4, :cond_4

    .line 724
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 725
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v7

    if-nez v7, :cond_3

    .line 726
    nop

    .line 727
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    nop

    .line 723
    move v3, v1

    move v5, v3

    goto :goto_3

    :cond_2
    move v3, v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 732
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    .line 733
    xor-int/2addr v4, v2

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_4
    if-ltz v6, :cond_6

    .line 734
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 735
    nop

    .line 736
    goto :goto_5

    .line 733
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 740
    :cond_6
    move v1, v4

    :goto_5
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 741
    const/16 p1, 0x19

    return p1

    .line 743
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 744
    const/16 p1, 0x18

    return p1

    .line 746
    :cond_8
    return p1
.end method

.method final performSurfacePlacement()V
    .locals 1

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 146
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .locals 3

    .line 149
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const/4 p1, 0x6

    .line 154
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 155
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 156
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    add-int/lit8 p1, p1, -0x1

    .line 158
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_2

    if-gtz p1, :cond_1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v0, p1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 160
    return-void
.end method

.method requestTraversal()V
    .locals 2

    .line 800
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    :cond_0
    return-void
.end method
