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
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

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
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 116
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 121
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 765
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 766
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 767
    return v1

    .line 765
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 770
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
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
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 418
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

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

    goto :goto_b

    .line 421
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_27
    if-ltz v1, :cond_3d

    .line 422
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 424
    .end local v1    # "i":I
    :cond_3d
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 447
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 448
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 449
    return v1

    .line 447
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 452
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;
    .registers 7
    .param p1, "transit"    # I
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
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$AnzDJL6vBWwhbuz7sYsAfUAzZko;-><init>(ILandroid/util/ArraySet;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 399
    .local v0, "result":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_14

    .line 400
    return-object v0

    .line 402
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_25

    .line 405
    return-object v0

    .line 407
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$tJcqA51ohv9DQjcvHOarwInr01s;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method private static getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 362
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 363
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    if-eqz v1, :cond_e

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    nop

    :cond_e
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .param p2, "ignoreHidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 782
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 783
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 784
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_25

    .line 785
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 786
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 787
    goto :goto_22

    .line 789
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 790
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_22

    .line 791
    move v0, v4

    .line 792
    move-object v1, v3

    .line 784
    .end local v3    # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "prefixOrderIndex":I
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 795
    .end local v2    # "i":I
    :cond_25
    return-object v1
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .registers 15
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 503
    .local v0, "appsCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_7a

    .line 504
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 506
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_30

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now closing app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_30
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

    if-eqz v4, :cond_58

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_58

    .line 519
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 520
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 523
    :cond_58
    if-eqz p2, :cond_6a

    .line 524
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v4

    .line 525
    .local v4, "layer":I
    iget-object v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_66

    iget v5, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v4, v5, :cond_6a

    .line 526
    :cond_66
    iput-object v3, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 527
    iput v4, p4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 530
    .end local v4    # "layer":I
    :cond_6a
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 531
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    .line 503
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 534
    .end local v2    # "i":I
    :cond_7a
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 8
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 537
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2a

    .line 538
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2a

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_2a

    .line 540
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 542
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_2a

    .line 543
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 544
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 548
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_2a
    const/16 v3, 0x15

    if-eq p1, v0, :cond_30

    if-ne p1, v3, :cond_54

    .line 558
    :cond_30
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_40

    .line 559
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_54

    .line 560
    const-string v0, "WindowManager"

    const-string v1, "No animation needed, skip set keyguard exit anim"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 563
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne p1, v3, :cond_4a

    move v3, v2

    goto :goto_4b

    :cond_4a
    move v3, v1

    :goto_4b
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_51

    move v1, v2

    nop

    :cond_51
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZ)V

    .line 569
    :cond_54
    :goto_54
    return-void
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 16
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    const/high16 v1, -0x80000000

    .line 459
    .local v1, "topOpeningLayer":I
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 460
    .local v2, "appsCount":I
    const/4 v3, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v3

    .line 460
    .local v0, "i":I
    .local v1, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v4, "topOpeningLayer":I
    :goto_f
    if-ge v0, v2, :cond_b5

    .line 461
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 462
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_35

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Now opening app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_35
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, p2

    move v9, p1

    move v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 468
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v7, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_4a
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 471
    iput-boolean v3, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 472
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_5a

    const-string v6, "WindowManager"

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_5a
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 476
    :try_start_5f
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_a0

    .line 478
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 479
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_75

    const-string v6, "WindowManager"

    const-string v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_75
    if-eqz p2, :cond_81

    .line 484
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v6

    .line 485
    .local v6, "layer":I
    if-eqz v1, :cond_7f

    if-le v6, v4, :cond_81

    .line 486
    :cond_7f
    move-object v1, v5

    .line 487
    move v4, v6

    .line 490
    .end local v6    # "layer":I
    :cond_81
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 491
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation()V

    goto :goto_9c

    .line 492
    :cond_8f
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 493
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->attachCrossProfileAppsThumbnailAnimation()V

    .line 460
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9c
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 478
    .restart local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_a0
    move-exception v3

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v7, "handleAppTransitionReadyLocked"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 479
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_b4

    const-string v6, "WindowManager"

    const-string v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    throw v3

    .line 496
    .end local v0    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_b5
    return-object v1
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$1(ILandroid/util/ArraySet;Lcom/android/server/wm/AppWindowToken;)Z
    .registers 4
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 397
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 398
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 397
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/AppWindowToken;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 119
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    return-void

    .line 119
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/AppWindowToken;
    .registers 12
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
    .local p1, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 430
    .local v0, "array1count":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 431
    .local v1, "count":I
    const/high16 v2, -0x80000000

    .line 432
    .local v2, "bestPrefixOrderIndex":I
    const/4 v3, 0x0

    .line 433
    .local v3, "bestToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v1, :cond_31

    .line 434
    if-ge v4, v0, :cond_18

    .line 435
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    goto :goto_20

    .line 436
    :cond_18
    sub-int v5, v4, v0

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 437
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_20
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v6

    .line 438
    .local v6, "prefixOrderIndex":I
    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    if-le v6, v2, :cond_2e

    .line 439
    move v2, v6

    .line 440
    move-object v3, v5

    .line 433
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "prefixOrderIndex":I
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 443
    .end local v4    # "i":I
    :cond_31
    return-object v3
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 14
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 651
    if-eqz p1, :cond_14e

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_14e

    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    goto/16 :goto_14e

    .line 657
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 658
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 659
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    .line 660
    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    :goto_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 661
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 662
    .local v3, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 664
    .local v4, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 667
    .local v5, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v6

    .line 668
    .local v6, "openingCanBeWallpaperTarget":Z
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_6d

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New wallpaper target="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", oldWallpaper="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", openingApps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", closingApps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_6d
    if-eqz v6, :cond_95

    const/16 v7, 0x14

    if-ne p1, v7, :cond_95

    .line 675
    const/16 p1, 0x15

    .line 676
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_14d

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 676
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 681
    :cond_95
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v7

    if-nez v7, :cond_14d

    .line 682
    if-eqz p3, :cond_d4

    if-eqz p2, :cond_d4

    .line 683
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_aa

    const-string v7, "WindowManager"

    const-string v8, "Wallpaper animation!"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_aa
    packed-switch p1, :pswitch_data_150

    goto :goto_b4

    .line 693
    :pswitch_ae
    const/16 p1, 0xf

    goto :goto_b4

    .line 688
    :pswitch_b1
    const/16 p1, 0xe

    .line 689
    nop

    .line 696
    :goto_b4
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_14d

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 696
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14d

    .line 698
    :cond_d4
    if-eqz v1, :cond_115

    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_115

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 699
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_115

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 700
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, v7, :cond_115

    .line 703
    const/16 p1, 0xc

    .line 704
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_14d

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit away from wallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 704
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    .line 706
    :cond_115
    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_14d

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 707
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14d

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v4, v7, :cond_14d

    const/16 v7, 0x19

    if-eq p1, v7, :cond_14d

    .line 712
    const/16 p1, 0xd

    .line 713
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_14d

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New transit into wallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 713
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_14d
    :goto_14d
    return p1

    .line 653
    .end local v0    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v3    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v4    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "openingCanBeWallpaperTarget":Z
    :cond_14e
    :goto_14e
    return p1

    nop

    :pswitch_data_150
    .packed-switch 0x6
        :pswitch_b1
        :pswitch_ae
        :pswitch_b1
        :pswitch_ae
        :pswitch_b1
        :pswitch_ae
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V
    .registers 7
    .param p1, "animLpToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
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
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_5

    .line 374
    return-void

    .line 376
    :cond_5
    if-nez p1, :cond_8

    .line 377
    return-void

    .line 379
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 380
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_1b

    .line 381
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 382
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_1b

    .line 383
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 386
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_1b
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .registers 10

    .line 163
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_2d

    .line 164
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-nez v0, :cond_25

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

    .line 165
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Recursive call!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v0, :cond_34

    .line 176
    return-void

    .line 179
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_3b

    .line 181
    return-void

    .line 184
    :cond_3b
    const-string/jumbo v0, "wmLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, "recoveringMemory":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9d

    .line 189
    const/4 v4, 0x1

    .line 191
    .end local v3    # "recoveringMemory":Z
    .local v4, "recoveringMemory":Z
    :goto_53
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_81

    .line 192
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 193
    .local v3, "ws":Lcom/android/server/wm/WindowState;
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Force removing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 195
    .end local v3    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_53

    .line 196
    :cond_81
    const-string v3, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v6, v3

    .line 198
    .local v6, "tmp":Ljava/lang/Object;
    monitor-enter v6

    .line 200
    const-wide/16 v7, 0xfa

    :try_start_91
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_94
    .catch Ljava/lang/InterruptedException; {:try_start_91 .. :try_end_94} :catch_97
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    .line 202
    goto :goto_98

    .line 203
    :catchall_95
    move-exception v0

    goto :goto_9b

    .line 201
    :catch_97
    move-exception v3

    .line 203
    :goto_98
    :try_start_98
    monitor-exit v6

    .line 207
    move v3, v4

    goto :goto_9d

    .line 203
    :goto_9b
    monitor-exit v6
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_95

    throw v0

    .line 207
    .end local v4    # "recoveringMemory":Z
    .end local v6    # "tmp":Ljava/lang/Object;
    .local v3, "recoveringMemory":Z
    :cond_9d
    :goto_9d
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 209
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 211
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 212
    iget v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v0, 0x6

    if-ge v4, v0, :cond_bc

    .line 213
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_c8

    .line 215
    :cond_bc
    const-string v0, "WindowManager"

    const-string v4, "Performed 6 layouts in a row. Skipping"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_c8

    .line 219
    :cond_c6
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 222
    :goto_c8
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_e8
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_e8} :catch_e9

    .line 229
    :cond_e8
    goto :goto_f3

    .line 226
    :catch_e9
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 228
    const-string v4, "WindowManager"

    const-string v5, "Unhandled exception while laying out windows"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_f3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    return-void
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .registers 7
    .param p1, "transit"    # I

    .line 799
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3a

    .line 801
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 802
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_3a

    .line 803
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 804
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_2c

    .line 805
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now animating app in place "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 807
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v3}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    .line 808
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 809
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 812
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3a
    return-void
.end method

.method private transitionGoodToGo(ILandroid/util/SparseIntArray;)Z
    .registers 11
    .param p1, "appsCount"    # I
    .param p2, "outReasons"    # Landroid/util/SparseIntArray;

    .line 572
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_3b

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " opening apps (frozen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 575
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 580
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 581
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15b

    .line 588
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 589
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 590
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_6d

    .line 591
    const-string v2, "WindowManager"

    const-string v3, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_6d
    return v1

    .line 595
    :cond_6e
    move v2, v1

    .line 595
    .local v2, "i":I
    :goto_6f
    if-ge v2, p1, :cond_fe

    .line 596
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 597
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_c9

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check opening app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": allDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingDisplayed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingMoved="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isRelaunching()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " startingWindow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 597
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_c9
    iget-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v5, :cond_d5

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v5

    if-nez v5, :cond_d5

    move v5, v3

    goto :goto_d6

    :cond_d5
    move v5, v1

    .line 607
    .local v5, "allDrawn":Z
    :goto_d6
    if-nez v5, :cond_e1

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v6, :cond_e1

    iget-boolean v6, v4, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_e1

    .line 608
    return v1

    .line 610
    :cond_e1
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v6

    .line 611
    .local v6, "windowingMode":I
    if-eqz v5, :cond_ec

    .line 612
    const/4 v7, 0x2

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_fa

    .line 614
    :cond_ec
    nop

    .line 615
    iget-object v7, v4, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    instance-of v7, v7, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v7, :cond_f6

    .line 616
    nop

    .line 614
    move v7, v3

    goto :goto_f7

    .line 617
    :cond_f6
    const/4 v7, 0x4

    .line 614
    :goto_f7
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "allDrawn":Z
    .end local v6    # "windowingMode":I
    :goto_fa
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6f

    .line 622
    .end local v2    # "i":I
    :cond_fe
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 623
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_114

    const-string v2, "WindowManager"

    const-string/jumbo v3, "isFetchingAppTransitionSpecs=true"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_114
    return v1

    .line 627
    :cond_115
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v2

    if-nez v2, :cond_143

    .line 628
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_142

    .line 629
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknownApps is not empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 630
    invoke-virtual {v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_142
    return v1

    .line 636
    :cond_143
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    if-eqz v2, :cond_156

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 637
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v2

    if-eqz v2, :cond_154

    goto :goto_156

    :cond_154
    move v2, v1

    goto :goto_157

    :cond_156
    :goto_156
    move v2, v3

    .line 638
    .local v2, "wallpaperReady":Z
    :goto_157
    if-eqz v2, :cond_15a

    .line 639
    return v3

    .line 641
    :cond_15a
    return v1

    .line 643
    .end local v2    # "wallpaperReady":Z
    :cond_15b
    return v3
.end method


# virtual methods
.method continueLayout()V
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 135
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_d

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 138
    :cond_d
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .line 235
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_27

    .line 236
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_27
    return-void
.end method

.method deferLayout()V
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 128
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method handleAppTransitionReadyLocked()I
    .registers 24

    .line 249
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 250
    .local v2, "appsCount":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(ILandroid/util/SparseIntArray;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_14

    .line 251
    return v3

    .line 253
    :cond_14
    const-string v0, "AppTransitionReady"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 255
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_26

    const-string v0, "WindowManager"

    const-string v6, "**** GOOD TO GO"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_26
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 257
    .local v0, "transit":I
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v6, :cond_3b

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 258
    const/4 v0, -0x1

    .line 260
    :cond_3b
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 261
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 263
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 265
    iget-object v6, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 267
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v7, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v3, v7, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 270
    move v7, v3

    .local v7, "i":I
    :goto_5c
    if-ge v7, v2, :cond_6e

    .line 271
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 276
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 270
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 282
    :cond_6e
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V

    .line 287
    iget-object v8, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    if-eqz v8, :cond_81

    const/4 v8, 0x1

    goto :goto_82

    :cond_81
    move v8, v3

    .line 288
    .local v8, "hasWallpaperTarget":Z
    :goto_82
    iget-object v10, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v10

    if-eqz v10, :cond_90

    if-eqz v8, :cond_90

    const/4 v10, 0x1

    goto :goto_91

    :cond_90
    move v10, v3

    .line 290
    .local v10, "openingAppHasWallpaper":Z
    :goto_91
    iget-object v11, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v11

    if-eqz v11, :cond_9f

    if-eqz v8, :cond_9f

    const/4 v11, 0x1

    goto :goto_a0

    :cond_9f
    move v11, v3

    .line 293
    .local v11, "closingAppHasWallpaper":Z
    :goto_a0
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 294
    invoke-direct {v1, v0, v10, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v15

    .line 301
    .end local v0    # "transit":I
    .local v15, "transit":I
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0, v12}, Lcom/android/server/wm/WindowSurfacePlacer;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v14

    .line 303
    .local v14, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_c4

    .line 304
    invoke-direct {v1, v15, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    goto :goto_c5

    .line 305
    :cond_c4
    move-object v0, v12

    :goto_c5
    move-object v13, v0

    .line 307
    .local v13, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {v13}, Lcom/android/server/wm/WindowSurfacePlacer;->getAnimLp(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 308
    .local v4, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v13, v15, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)V

    .line 310
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 311
    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_e2

    goto :goto_e4

    :cond_e2
    move v0, v3

    goto :goto_e5

    :cond_e4
    :goto_e4
    const/4 v0, 0x1

    :goto_e5
    move v5, v0

    .line 314
    .local v5, "voiceInteraction":Z
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 316
    :try_start_ed
    invoke-direct {v1, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 318
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iput-object v12, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 319
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v1, v15, v4, v5, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 320
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 321
    .local v0, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v1, v15, v4, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v12

    .line 324
    .local v12, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 326
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v3

    .line 327
    .local v3, "flags":I
    iget-object v9, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;
    :try_end_114
    .catchall {:try_start_ed .. :try_end_114} :catchall_1b3

    move/from16 v18, v2

    :try_start_116
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .end local v2    # "appsCount":I
    .local v18, "appsCount":I
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;
    :try_end_11a
    .catchall {:try_start_116 .. :try_end_11a} :catchall_1a9

    move-object/from16 v19, v4

    :try_start_11c
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v19, "animLp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;
    :try_end_120
    .catchall {:try_start_11c .. :try_end_120} :catchall_1a1

    move-object/from16 v20, v12

    move-object v12, v9

    .end local v12    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v20, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object v9, v13

    move v13, v15

    .end local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .local v9, "animLpToken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v21, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move/from16 v22, v5

    move v5, v15

    move-object v15, v0

    .end local v15    # "transit":I
    .local v5, "transit":I
    .local v22, "voiceInteraction":Z
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    :try_start_131
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I

    move-result v2

    .line 329
    .local v2, "layoutRedo":I
    invoke-direct {v1, v5, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNonAppWindowsInTransition(II)V

    .line 330
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 331
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_146
    .catchall {:try_start_131 .. :try_end_146} :catchall_19f

    .line 333
    .end local v0    # "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "flags":I
    .end local v20    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 334
    nop

    .line 333
    nop

    .line 336
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting()V

    .line 338
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 339
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 340
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 344
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 347
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 348
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 349
    iget-object v4, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x2

    invoke-virtual {v4, v12, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 351
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 353
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x2f

    iget-object v13, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 354
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v13

    .line 353
    invoke-virtual {v3, v4, v13}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 356
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 358
    or-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v12

    return v3

    .line 333
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "layoutRedo":I
    :catchall_19f
    move-exception v0

    goto :goto_1be

    .end local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v22    # "voiceInteraction":Z
    .local v5, "voiceInteraction":Z
    .restart local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1a1
    move-exception v0

    move/from16 v22, v5

    move-object v9, v13

    move-object/from16 v21, v14

    move v5, v15

    .end local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v22    # "voiceInteraction":Z
    goto :goto_1be

    .end local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v19    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v22    # "voiceInteraction":Z
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v5, "voiceInteraction":Z
    .restart local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1a9
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v22, v5

    move-object v9, v13

    move-object/from16 v21, v14

    move v5, v15

    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v19    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v22    # "voiceInteraction":Z
    goto :goto_1be

    .end local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v18    # "appsCount":I
    .end local v19    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v22    # "voiceInteraction":Z
    .local v2, "appsCount":I
    .restart local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v5, "voiceInteraction":Z
    .restart local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v15    # "transit":I
    :catchall_1b3
    move-exception v0

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v22, v5

    move-object v9, v13

    move-object/from16 v21, v14

    move v5, v15

    .end local v2    # "appsCount":I
    .end local v4    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v15    # "transit":I
    .local v5, "transit":I
    .restart local v9    # "animLpToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v18    # "appsCount":I
    .restart local v19    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v21    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v22    # "voiceInteraction":Z
    :goto_1be
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method isInLayout()Z
    .registers 2

    .line 242
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .registers 9
    .param p1, "transit"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 734
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 735
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v1

    .line 736
    .local v0, "taskOrActivity":Z
    :goto_11
    const/4 v2, 0x1

    .line 737
    .local v2, "allOpeningVisible":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 738
    .local v3, "allTranslucentOpeningApps":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_24
    if-ltz v4, :cond_41

    .line 739
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 740
    .local v5, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 741
    const/4 v2, 0x0

    .line 742
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 743
    const/4 v3, 0x0

    .line 738
    .end local v5    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3e
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 747
    .end local v4    # "i":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    .line 748
    .local v4, "allTranslucentClosingApps":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_53
    move v1, v5

    .end local v5    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_6b

    .line 749
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 750
    const/4 v4, 0x0

    .line 751
    goto :goto_6b

    .line 748
    :cond_68
    add-int/lit8 v5, v1, -0x1

    .end local v1    # "i":I
    .restart local v5    # "i":I
    goto :goto_53

    .line 755
    .end local v5    # "i":I
    :cond_6b
    :goto_6b
    if-eqz v0, :cond_74

    if-eqz v4, :cond_74

    if-eqz v2, :cond_74

    .line 756
    const/16 v1, 0x19

    return v1

    .line 758
    :cond_74
    if-eqz v0, :cond_85

    if-eqz v3, :cond_85

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 759
    const/16 v1, 0x18

    return v1

    .line 761
    :cond_85
    return p1
.end method

.method final performSurfacePlacement()V
    .registers 2

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 146
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 149
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    .line 150
    return-void

    .line 152
    :cond_7
    const/4 v0, 0x6

    .line 154
    .local v0, "loopCount":I
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 155
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    add-int/lit8 v0, v0, -0x1

    .line 158
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v2, :cond_1f

    if-gtz v0, :cond_8

    .line 159
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 160
    return-void
.end method

.method requestTraversal()V
    .registers 3

    .line 815
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_10

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    :cond_10
    return-void
.end method
