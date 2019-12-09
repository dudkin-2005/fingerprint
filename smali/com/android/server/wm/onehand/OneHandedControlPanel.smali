.class Lcom/android/server/wm/onehand/OneHandedControlPanel;
.super Ljava/lang/Object;
.source "OneHandedControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ONEHANDED_MODE_SETUP:Ljava/lang/String; = "com.android.onehand.intent.action.ONEHANDED_MODE_SETUP"

.field static final CONTROL_PANEL_WINDOW_NAME:Ljava/lang/String; = "ONEHAND control panel"

.field static final DEFAULT_SCALE:F = 0.75f

.field static final GUIDE_PANEL_WINDOW_NAME:Ljava/lang/String; = "ONEHAND guide panel"

.field static final MIN_SCALE:F = 0.6666667f

.field private static final SCREEN_SIZE:F = 6.0f

.field private static final TAG:Ljava/lang/String; = "OneHandedControlPanel"


# instance fields
.field private final mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

.field private final mContext:Landroid/content/Context;

.field private volatile mControlPanelLength:I

.field private mControlPanelRoot:Landroid/view/View;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDragIndicator:Landroid/widget/ImageView;

.field private mGuide:Landroid/view/View;

.field private volatile mGuideBottom:I

.field private mGuidePanelRoot:Landroid/view/View;

.field private final mH:Landroid/os/Handler;

.field private mInstalled:Z

.field private mLastTargetScale:F

.field private mMoveIndicator:Landroid/widget/ImageView;

.field private final mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

.field private final mProtectZonePadding:F

.field private final mTmpControlPanelTrans:Landroid/view/animation/Transformation;

.field private final mTmpGuidePanelTrans:Landroid/view/animation/Transformation;

.field private final mTmpMatrixValues:[F

.field private mZoom:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Looper;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    .line 62
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDragIndicator:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mZoom:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mMoveIndicator:Landroid/widget/ImageView;

    .line 66
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    .line 67
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuide:Landroid/view/View;

    .line 69
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpControlPanelTrans:Landroid/view/animation/Transformation;

    .line 70
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpGuidePanelTrans:Landroid/view/animation/Transformation;

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mLastTargetScale:F

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    .line 73
    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuideBottom:I

    .line 75
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpMatrixValues:[F

    .line 77
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 83
    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    .line 120
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 123
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050047

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mProtectZonePadding:F

    .line 126
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/onehand/OneHandedControlPanel$MyHandler;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    .line 127
    new-instance p1, Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleInstall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleRemove()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getProtectZone(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/onehand/OneHandedControlPanel;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->setSlipperyToControlPanel(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/onehand/OneHandedControlPanel;FI)I
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getAdjustedYAdj(FI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/view/DisplayInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/onehand/OneHandedControlPanel;FI)F
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getAdjustedScale(FI)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleRecreatePanels()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/onehand/OneHandedControlPanel;Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleModeChange(Lcom/android/server/wm/onehand/OneHandedMode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/onehand/OneHandedControlPanel;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleOutsideScreenTouch(II)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/wm/onehand/OneHandedControlPanel;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuideBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuide:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->recreatePanels()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    return-object p0
.end method

.method private adjustMode(Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 3

    .line 197
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {v0, p1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 199
    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v1

    iget v2, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getAdjustedYAdj(FI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v1

    iget v2, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getAdjustedScale(FI)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/onehand/OneHandedMode;->setScale(F)V

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/server/wm/onehand/OneHandedMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    iget v1, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-static {p1, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveYAdj(Landroid/content/Context;I)V

    .line 206
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveScale(Landroid/content/Context;F)V

    .line 207
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 209
    :cond_0
    return-void
.end method

.method private applyTransformationY(Landroid/view/animation/Transformation;I)F
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpMatrixValues:[F

    .line 270
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 271
    int-to-float p1, p2

    const/4 p2, 0x4

    aget p2, v0, p2

    mul-float/2addr p1, p2

    const/4 p2, 0x5

    aget p2, v0, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private computeAlphaFromTransformation(Landroid/view/animation/Transformation;)F
    .locals 8

    .line 632
    nop

    .line 634
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 635
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 636
    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 638
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForMode(Lcom/android/server/wm/onehand/OneHandedMode;[I[FII)V

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpMatrixValues:[F

    .line 643
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 644
    const/4 p1, 0x0

    aget v3, v2, p1

    const/4 v4, 0x4

    aget v2, v2, v4

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    .line 646
    aget v2, v1, p1

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    .line 647
    sub-float p1, v0, v3

    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mLastTargetScale:F

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    goto :goto_0

    .line 649
    :cond_0
    aget p1, v1, p1

    iput p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mLastTargetScale:F

    .line 650
    sub-float p1, v0, v3

    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mLastTargetScale:F

    sub-float v1, v0, v1

    div-float/2addr p1, v1

    .line 653
    :goto_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 654
    goto :goto_1

    .line 657
    :cond_1
    move v0, p1

    :cond_2
    :goto_1
    return v0
.end method

.method private computeAlphaToHideGuidePanel(Landroid/view/animation/Transformation;)F
    .locals 3

    .line 249
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuideBottom:I

    .line 254
    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    neg-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->applyTransformationY(Landroid/view/animation/Transformation;I)F

    move-result p1

    .line 256
    if-lez v1, :cond_2

    int-to-float v1, v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    div-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v1, p1

    sub-float/2addr v2, v0

    .line 263
    div-float/2addr p1, v1

    .line 264
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 265
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    .line 257
    :cond_2
    :goto_0
    return v0

    .line 250
    :cond_3
    :goto_1
    return v0
.end method

.method private createControlPanel()V
    .locals 9

    .line 384
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedControlPanel$2;

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel$2;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/content/Context;)V

    .line 392
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 393
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v2, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setMotionEventSplittingEnabled(Z)V

    .line 420
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 421
    const v4, 0x10805fc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 422
    const v5, 0x10805ff

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    invoke-virtual {v3, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 424
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 425
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 426
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 428
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 431
    new-instance v5, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 474
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 475
    const v6, 0x1080600

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    invoke-virtual {v5, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 477
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 478
    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 479
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 482
    new-instance v6, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;

    invoke-direct {v6, p0, v5}, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 532
    new-instance v6, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 534
    const v4, 0x10805fd

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 535
    invoke-virtual {v6, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 536
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v2, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 537
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 540
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 543
    new-instance v1, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    .line 571
    iput-object v3, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDragIndicator:Landroid/widget/ImageView;

    .line 572
    iput-object v6, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mMoveIndicator:Landroid/widget/ImageView;

    .line 573
    iput-object v5, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mZoom:Landroid/widget/ImageView;

    .line 574
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    .line 575
    return-void
.end method

.method private createGuidePanel()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    const v1, 0x10900aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 351
    const v1, 0x102035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuide:Landroid/view/View;

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuide:Landroid/view/View;

    new-instance v2, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;-><init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 359
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    .line 360
    return-void
.end method

.method private createLpForControlPanel()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 578
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 579
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 580
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 581
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 582
    const/16 v1, 0xbb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 583
    const v1, 0x21000328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 589
    const-string v1, "ONEHAND control panel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 590
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 591
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 592
    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 594
    return-object v0
.end method

.method private createLpForGuidePanel()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 363
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 366
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    const/16 v1, 0xbb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 368
    const v1, 0x1000318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 373
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 374
    const-string v1, "ONEHAND guide panel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 376
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 377
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 379
    return-object v0
.end method

.method private getAdjustedScale(FI)F
    .locals 3

    .line 333
    const v0, 0x3f2aaaab

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 334
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 342
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 343
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 344
    return p2

    .line 346
    :cond_1
    return p1
.end method

.method private getAdjustedYAdj(FI)I
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 322
    int-to-float p1, p2

    add-float/2addr p1, v0

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-int p2, p1

    .line 326
    :cond_0
    if-gez p2, :cond_1

    .line 327
    const/4 p2, 0x0

    .line 329
    :cond_1
    return p2
.end method

.method private getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 298
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    return-object v1
.end method

.method private getInverseTransformedPosition(II)Landroid/graphics/Point;
    .locals 9

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 304
    const/4 v7, 0x1

    new-array v8, v7, [F

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v3, v0

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForMode(Lcom/android/server/wm/onehand/OneHandedMode;[I[FII)V

    .line 309
    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    const/4 v2, 0x0

    aget v3, v8, v2

    mul-float/2addr p1, v3

    aget v3, v0, v2

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    aget v2, v8, v2

    mul-float/2addr p2, v2

    aget v0, v0, v7

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private getProtectZone(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v0

    .line 622
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 623
    iget p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    int-to-float p1, p1

    iget v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    int-to-float v2, v2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 625
    iget p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mProtectZonePadding:F

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 626
    neg-float p1, p1

    invoke-virtual {v1, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 628
    return-object v1
.end method

.method private handleInstall()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 134
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const-string v0, "OneHandedControlPanel"

    const-string v1, "Failed get display info"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createGuidePanel()V

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    if-nez v1, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createControlPanel()V

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    if-nez v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createLpForGuidePanel()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createLpForControlPanel()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createLpForGuidePanel()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->createLpForControlPanel()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    .line 153
    return-void
.end method

.method private handleModeChange(Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->adjustMode(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mMoveIndicator:Landroid/widget/ImageView;

    const v1, 0x10805fd

    const v2, 0x10805fe

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->updateViewPosition(Lcom/android/server/wm/onehand/OneHandedMode;Landroid/widget/ImageView;II)V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mZoom:Landroid/widget/ImageView;

    const v1, 0x1080600

    const v2, 0x1080601

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->updateViewPosition(Lcom/android/server/wm/onehand/OneHandedMode;Landroid/widget/ImageView;II)V

    .line 194
    return-void

    .line 183
    :cond_1
    :goto_0
    return-void
.end method

.method private handleOutsideScreenTouch(II)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuide:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getInverseTransformedPosition(II)Landroid/graphics/Point;

    move-result-object p1

    .line 285
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->launchOneHandedModeSetupActivity()V

    .line 287
    return-void

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushExitByOutsideScreenTouch()V

    .line 291
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 292
    return-void
.end method

.method private handleRecreatePanels()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleRemove()V

    .line 174
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleInstall()V

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->handleModeChange(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 177
    :cond_0
    return-void
.end method

.method private handleRemove()V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mGuidePanelRoot:Landroid/view/View;

    .line 162
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    .line 165
    :cond_0
    return-void
.end method

.method private launchOneHandedModeSetupActivity()V
    .locals 3

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.onehand.intent.action.ONEHANDED_MODE_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 317
    return-void
.end method

.method private recreatePanels()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 697
    return-void
.end method

.method private setSlipperyToControlPanel(Z)V
    .locals 5

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    .line 603
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 605
    const/4 v1, 0x0

    .line 606
    const/4 v2, 0x1

    const/high16 v3, 0x20000000

    if-eqz p1, :cond_1

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 607
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 608
    goto :goto_0

    .line 609
    :cond_1
    if-nez p1, :cond_2

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    .line 610
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x20000001

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 611
    goto :goto_0

    .line 613
    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 614
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 615
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelRoot:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    :cond_3
    return-void

    .line 599
    :cond_4
    :goto_1
    return-void
.end method

.method private updateViewPosition(Lcom/android/server/wm/onehand/OneHandedMode;Landroid/widget/ImageView;II)V
    .locals 4

    .line 212
    nop

    .line 213
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result v3

    if-ne v0, v3, :cond_1

    .line 219
    return-void

    .line 222
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    invoke-virtual {p1, v2}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result p1

    const/16 v2, 0xb

    if-eqz p1, :cond_2

    .line 225
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 230
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 235
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 700
    const-string p2, "Control Panel Status:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    const-string p2, "  Bar Height="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mControlPanelLength:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 702
    const-string p2, "  Bar transformation="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpControlPanelTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 703
    const-string p2, "  mLastTargetScale="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mLastTargetScale:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    .line 704
    return-void
.end method

.method getTransformationForControlPanel(Landroid/view/animation/Transformation;)Landroid/view/animation/Transformation;
    .locals 2

    .line 660
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->computeAlphaFromTransformation(Landroid/view/animation/Transformation;)F

    move-result v0

    .line 664
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpControlPanelTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 665
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpControlPanelTrans:Landroid/view/animation/Transformation;

    invoke-virtual {p1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 667
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpControlPanelTrans:Landroid/view/animation/Transformation;

    return-object p1

    .line 661
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getTransformationForGuidePanel(Landroid/view/animation/Transformation;)Landroid/view/animation/Transformation;
    .locals 2

    .line 238
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mInstalled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->computeAlphaFromTransformation(Landroid/view/animation/Transformation;)F

    move-result v0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->computeAlphaToHideGuidePanel(Landroid/view/animation/Transformation;)F

    move-result p1

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpGuidePanelTrans:Landroid/view/animation/Transformation;

    mul-float/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 245
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mTmpGuidePanelTrans:Landroid/view/animation/Transformation;

    return-object p1

    .line 239
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method install()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method

.method notifyModeChanged(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 1

    .line 678
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 679
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 680
    return-void
.end method

.method notifyOutsideScreenTouch(II)V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 674
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    return-void
.end method

.method remove()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 692
    return-void
.end method
