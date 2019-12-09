.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final RIGHT:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x9
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x4
        0xb
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xd
        0xe
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xf
        0x10
        0x8
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 220
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .line 221
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    .line 223
    nop

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 223
    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 229
    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    .line 230
    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    .line 231
    return-void
.end method

.method private cancelGesture()V
    .locals 1

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 449
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 17

    .line 603
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 612
    const/4 v2, 0x1

    if-ne v1, v4, :cond_2

    .line 613
    const/4 v1, 0x0

    .line 619
    :cond_1
    move v7, v1

    goto :goto_0

    .line 614
    :cond_2
    if-ne v1, v3, :cond_1

    .line 615
    nop

    .line 619
    move v7, v2

    :goto_0
    move-object/from16 v1, p0

    iget-wide v3, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 620
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    .line 619
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 607
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_0

    .line 433
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    .line 439
    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 464
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    .line 473
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GesturePoint;

    iget v5, v5, Landroid/gesture/GesturePoint;->x:F

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    iget v7, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v4, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 475
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    nop

    .line 478
    nop

    .line 479
    nop

    .line 480
    nop

    .line 482
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 483
    move-object v13, v4

    move-object v9, v5

    move v5, v6

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_3

    .line 484
    new-instance v9, Landroid/graphics/PointF;

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/gesture/GesturePoint;

    iget v14, v14, Landroid/gesture/GesturePoint;->x:F

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/gesture/GesturePoint;

    iget v15, v15, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v9, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    .line 485
    if-lez v5, :cond_1

    .line 487
    int-to-float v14, v5

    div-float v15, v10, v14

    .line 488
    div-float v14, v11, v14

    .line 497
    new-instance v6, Landroid/graphics/PointF;

    mul-float v16, v12, v15

    iget v7, v13, Landroid/graphics/PointF;->x:F

    add-float v7, v16, v7

    mul-float/2addr v12, v14

    iget v8, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v8

    invoke-direct {v6, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 501
    iget v7, v9, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    .line 502
    iget v8, v9, Landroid/graphics/PointF;->y:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v12

    .line 503
    mul-float v12, v7, v7

    mul-float v16, v8, v8

    add-float v12, v12, v16

    move/from16 v17, v10

    move/from16 v18, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 504
    div-float/2addr v7, v10

    .line 505
    div-float/2addr v8, v10

    .line 509
    mul-float/2addr v15, v7

    mul-float/2addr v14, v8

    add-float/2addr v15, v14

    .line 510
    const/4 v7, 0x0

    cmpg-float v8, v15, v7

    if-gez v8, :cond_2

    .line 511
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    nop

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 520
    move-object v13, v6

    move/from16 v17, v7

    move/from16 v18, v17

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move/from16 v17, v10

    move/from16 v18, v11

    const/4 v7, 0x0

    :cond_2
    :goto_1
    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v8, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v8

    .line 521
    iget v8, v9, Landroid/graphics/PointF;->y:F

    iget v10, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v10

    .line 522
    mul-float v10, v6, v6

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v12, v10

    .line 525
    const/4 v10, 0x1

    add-int/2addr v5, v10

    .line 526
    div-float/2addr v6, v12

    add-float v6, v17, v6

    .line 527
    div-float/2addr v8, v12

    add-float v11, v18, v8

    .line 483
    add-int/lit8 v4, v4, 0x1

    move v10, v6

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 530
    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v4, "AccessibilityGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 550
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 551
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 552
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 554
    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    .line 555
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v0

    .line 556
    invoke-static {v2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p3

    .line 557
    packed-switch p3, :pswitch_data_0

    .line 570
    goto :goto_0

    .line 565
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v4}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 563
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 561
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 559
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1, v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 570
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 571
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 572
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 573
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 575
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 576
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    .line 578
    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    .line 579
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    .line 581
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p2

    .line 582
    invoke-static {p1, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result p1

    .line 583
    sget-object p3, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object p2, p3, p2

    aget p1, p2, p1

    .line 584
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p2, p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result p1

    return p1

    .line 587
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p3, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toDirection(FF)I
    .locals 2

    .line 592
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 594
    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 597
    :cond_1
    cmpg-float p0, p1, v1

    if-gez p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    :goto_1
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 9

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 395
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 396
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 399
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 400
    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 427
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 428
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 408
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    .line 409
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 12

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 262
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 362
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v0, :cond_a

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 345
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 350
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 351
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_1

    .line 355
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 357
    goto/16 :goto_1

    .line 368
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    goto/16 :goto_1

    .line 280
    :pswitch_4
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-eqz v4, :cond_a

    .line 281
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    sub-float/2addr v4, v0

    .line 282
    iget v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    sub-float/2addr v7, v1

    .line 283
    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    .line 284
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    float-to-double v9, v4

    cmpl-double v4, v7, v9

    if-lez v4, :cond_2

    .line 287
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 288
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 289
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 293
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 294
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 298
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-nez p2, :cond_4

    .line 299
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 300
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result p1

    return p1

    .line 302
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    if-nez v4, :cond_4

    .line 305
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    sub-long v4, v2, v4

    .line 306
    iget-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v7, :cond_3

    .line 307
    const-wide/16 v7, 0x12c

    goto :goto_0

    .line 308
    :cond_3
    const-wide/16 v7, 0x96

    .line 312
    :goto_0
    cmp-long v4, v4, v7

    if-lez v4, :cond_4

    .line 313
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 314
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 318
    :cond_4
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 319
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 320
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float p2, p2, v5

    if-gez p2, :cond_5

    iget p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float p2, v4, p2

    if-ltz p2, :cond_6

    .line 321
    :cond_5
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 322
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 323
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_6
    goto :goto_1

    .line 329
    :pswitch_5
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v4, :cond_7

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 332
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v4, :cond_a

    .line 333
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 334
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 335
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v4, v4, v6

    if-gez v4, :cond_8

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_9

    .line 336
    :cond_8
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v5, Landroid/gesture/GesturePoint;

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    .line 265
    :pswitch_6
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 266
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 267
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 268
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 269
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 270
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 271
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v4, Landroid/gesture/GesturePoint;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 275
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 276
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 277
    nop

    .line 374
    :cond_a
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz p2, :cond_c

    .line 375
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 376
    if-nez p1, :cond_b

    .line 377
    return v6

    .line 379
    :cond_b
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    return p2

    .line 384
    :cond_c
    iget-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-nez p2, :cond_d

    .line 385
    return v6

    .line 389
    :cond_d
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 419
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 420
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 413
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 414
    const/4 p1, 0x0

    return p1
.end method
