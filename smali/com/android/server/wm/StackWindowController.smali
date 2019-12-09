.class public Lcom/android/server/wm/StackWindowController;
.super Lcom/android/server/wm/WindowContainerController;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/StackWindowController$H;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainerController<",
        "Lcom/android/server/wm/TaskStack;",
        "Lcom/android/server/wm/StackWindowListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/wm/StackWindowController$H;

.field private final mStackId:I

.field private final mTmpDisplayBounds:Landroid/graphics/Rect;

.field private final mTmpNonDecorInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;)V
    .registers 13
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/StackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V
    .registers 12
    .param p1, "stackId"    # I
    .param p2, "listener"    # Lcom/android/server/wm/StackWindowListener;
    .param p3, "displayId"    # I
    .param p4, "onTop"    # Z
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/WindowContainerController;-><init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 67
    iput p1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    .line 68
    new-instance v0, Lcom/android/server/wm/StackWindowController$H;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/StackWindowController$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 72
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_4c

    .line 77
    invoke-virtual {v1, p1, p4, p0}, Lcom/android/server/wm/DisplayContent;->createStack(IZLcom/android/server/wm/StackWindowController;)Lcom/android/server/wm/TaskStack;

    .line 78
    invoke-virtual {p0, p5}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 79
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    return-void

    .line 73
    .restart local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to add stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to unknown displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FI)I
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "density"    # F
    .param p3, "windowingMode"    # I

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 365
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 367
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v2, v3, :cond_1f

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v2, v3, :cond_1f

    goto :goto_3e

    .line 371
    :cond_1f
    invoke-static {p3}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    return v2

    .line 378
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    .line 379
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 378
    return v2

    .line 370
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v2
.end method

.method private intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 12
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "stableInsets"    # Landroid/graphics/Rect;
    .param p4, "displayBounds"    # Landroid/graphics/Rect;
    .param p5, "overrideWidth"    # Z
    .param p6, "overrideHeight"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p3, v1}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 351
    .local v0, "leftInset":I
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 352
    .local v1, "topInset":I
    const/4 v2, 0x0

    if-eqz p5, :cond_1f

    move v3, v2

    goto :goto_26

    :cond_1f
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 353
    .local v3, "rightInset":I
    :goto_26
    if-eqz p6, :cond_29

    goto :goto_30

    :cond_29
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/StackWindowController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    .line 354
    .local v2, "bottomInset":I
    :goto_30
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Rect;->inset(IIII)V

    .line 355
    return-void
.end method


# virtual methods
.method public adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V
    .registers 38
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "nonDecorBounds"    # Landroid/graphics/Rect;
    .param p4, "stableBounds"    # Landroid/graphics/Rect;
    .param p5, "overrideWidth"    # Z
    .param p6, "overrideHeight"    # Z
    .param p7, "density"    # F
    .param p8, "config"    # Landroid/content/res/Configuration;
    .param p9, "parentConfig"    # Landroid/content/res/Configuration;
    .param p10, "windowingMode"    # I

    move-object/from16 v8, p0

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 263
    move/from16 v12, p10

    iget-object v13, v8, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v13

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 266
    iget-object v0, v8, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_31

    .line 267
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustConfigurationForBounds: stack seems removed stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_17a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 271
    :cond_31
    :try_start_31
    iget-object v0, v8, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 272
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    move-object v14, v1

    .line 273
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    move-object v7, v1

    .line 274
    .local v7, "di":Landroid/view/DisplayInfo;
    iget-object v1, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v19, v1

    .line 277
    .local v19, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v5

    invoke-interface/range {v15 .. v20}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 279
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v19

    move-object/from16 v25, v5

    invoke-interface/range {v20 .. v25}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 281
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    iget-object v1, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v6, v1

    .line 288
    .local v6, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v5, p1

    invoke-virtual {v1, v5}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 289
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    move-object v2, v5

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 290
    const/4 v15, 0x0

    .line 292
    .local v15, "intersectParentBounds":Z
    invoke-static/range {p10 .. p10}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1
    :try_end_a1
    .catchall {:try_start_31 .. :try_end_a1} :catchall_17a

    if-eqz v1, :cond_fb

    .line 295
    const/4 v1, 0x2

    if-ne v12, v1, :cond_e3

    .line 296
    :try_start_a6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_e3

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_e3

    .line 301
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;
    :try_end_c0
    .catchall {:try_start_a6 .. :try_end_c0} :catchall_dc

    move-object/from16 v3, p4

    :try_start_c2
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 302
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_d7

    move-object/from16 v2, p3

    :try_start_c9
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 305
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 306
    const/4 v15, 0x1

    goto :goto_e7

    .line 337
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "intersectParentBounds":Z
    .end local v19    # "displayCutout":Landroid/view/DisplayCutout;
    :catchall_d7
    move-exception v0

    move-object/from16 v2, p3

    goto/16 :goto_17b

    :catchall_dc
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_17b

    .line 308
    .restart local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .restart local v7    # "di":Landroid/view/DisplayInfo;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "intersectParentBounds":Z
    .restart local v19    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_e3
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :goto_e7
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    .line 309
    .local v1, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    .line 329
    .local v4, "height":I
    move-object/from16 v26, v0

    move-object v0, v6

    move-object/from16 v16, v7

    goto :goto_150

    .line 316
    .end local v1    # "width":I
    .end local v4    # "height":I
    :cond_fb
    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 317
    if-eqz p2, :cond_104

    move-object/from16 v4, p2

    goto :goto_105

    :cond_104
    move-object v4, v5

    :goto_105
    iget-object v1, v8, Lcom/android/server/wm/StackWindowController;->mTmpNonDecorInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 316
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .local v26, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v16, v1

    move-object v1, v8

    move-object/from16 v2, p3

    move-object v3, v4

    move-object/from16 v4, v16

    move-object v5, v0

    move-object v0, v6

    move/from16 v6, p5

    .end local v6    # "parentAppBounds":Landroid/graphics/Rect;
    .local v0, "parentAppBounds":Landroid/graphics/Rect;
    move-object/from16 v16, v7

    move/from16 v7, p6

    .end local v7    # "di":Landroid/view/DisplayInfo;
    .local v16, "di":Landroid/view/DisplayInfo;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 319
    nop

    .line 320
    if-eqz p2, :cond_124

    move-object/from16 v3, p2

    goto :goto_126

    :cond_124
    move-object/from16 v3, p1

    :goto_126
    iget-object v4, v8, Lcom/android/server/wm/StackWindowController;->mTmpStableInsets:Landroid/graphics/Rect;

    iget-object v5, v8, Lcom/android/server/wm/StackWindowController;->mTmpDisplayBounds:Landroid/graphics/Rect;

    .line 319
    move-object v1, v8

    move-object/from16 v2, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/StackWindowController;->intersectDisplayBoundsExcludeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 322
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v1, v1

    iget v2, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 324
    .restart local v1    # "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    float-to-int v2, v2

    iget v3, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v2

    .line 326
    .restart local v4    # "height":I
    const/4 v15, 0x1

    .line 329
    :goto_150
    if-eqz v15, :cond_163

    iget-object v2, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_163

    .line 330
    iget-object v2, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 333
    :cond_163
    iput v1, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 334
    iput v4, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 335
    nop

    .line 336
    if-eqz p2, :cond_16d

    .line 335
    move-object/from16 v2, p2

    goto :goto_16f

    :cond_16d
    move-object/from16 v2, p1

    :goto_16f
    invoke-direct {v8, v2, v9, v12}, Lcom/android/server/wm/StackWindowController;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;FI)I

    move-result v2

    iput v2, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 337
    .end local v0    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    .end local v4    # "height":I
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "intersectParentBounds":Z
    .end local v16    # "di":Landroid/view/DisplayInfo;
    .end local v19    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v26    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v13
    :try_end_176
    .catchall {:try_start_c9 .. :try_end_176} :catchall_17a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 338
    return-void

    .line 337
    :catchall_17a
    move-exception v0

    :goto_17b
    :try_start_17b
    monitor-exit v13
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 241
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 243
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 244
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 245
    return-void

    .line 244
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 249
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 250
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 251
    return-void

    .line 250
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getRawBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1b

    .line 232
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 234
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 235
    return-void

    .line 234
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 207
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 210
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 212
    :cond_16
    :try_start_16
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 213
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 214
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    return-void

    .line 214
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerController;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onPipAnimationEndResize()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 198
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    return-void

    .line 198
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V
    .registers 7
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "position"    # I

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 112
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_29

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: positioning task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_29
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_4d

    .line 115
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_48

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: could not find task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 119
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_73

    .line 120
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_6e

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positionChildAt: could not find stack for task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 124
    :cond_73
    :try_start_73
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->positionAt(I)V

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 126
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    return-void

    .line 126
    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V
    .registers 8
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "includingParents"    # Z

    .line 152
    if-nez p1, :cond_3

    .line 154
    return-void

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 158
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 159
    .local v1, "childTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_30

    .line 160
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtBottom: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 163
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 168
    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 169
    .end local v1    # "childTask":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 170
    return-void

    .line 169
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V
    .registers 8
    .param p1, "child"    # Lcom/android/server/wm/TaskWindowContainerController;
    .param p2, "includingParents"    # Z

    .line 130
    if-nez p1, :cond_3

    .line 132
    return-void

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 136
    iget-object v1, p1, Lcom/android/server/wm/TaskWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    .line 137
    .local v1, "childTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_30

    .line 138
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionChildAtTop: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 141
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 143
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 146
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 147
    .end local v1    # "childTask":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    return-void

    .line 147
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public prepareFreezingTaskBounds()V
    .registers 5

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_16

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 224
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 225
    return-void

    .line 220
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareFreezingTaskBounds: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeContainer()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_14

    .line 86
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    .line 87
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerController;->removeContainer()V

    .line 89
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    return-void

    .line 89
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reparent(ILandroid/graphics/Rect;Z)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_42

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 100
    .local v1, "targetDc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_21

    .line 105
    iget-object v2, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 107
    .end local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 108
    return-void

    .line 101
    .restart local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    :cond_21
    :try_start_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to unknown displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v1    # "targetDc":Lcom/android/server/wm/DisplayContent;
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_21 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mHandler:Lcom/android/server/wm/StackWindowController$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StackWindowController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method public resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p2, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p3, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_3c

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/StackWindowController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 192
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 193
    return-void

    .line 183
    :cond_3c
    :try_start_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeStack: stack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StackWindowController stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/StackWindowController;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
