.class public Lcom/android/server/policy/SwipeToScreenshotListener;
.super Ljava/lang/Object;
.source "SwipeToScreenshotListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipeToScreenshotListener"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4


# instance fields
.field private mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mInitMotionY:[F

.field private mPointerIds:[I

.field private mThreeGestureState:I

.field private mThreeGestureThreshold:I

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    .line 39
    iput v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    .line 46
    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    .line 47
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    .line 48
    iput-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

    .line 50
    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 51
    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreshold:I

    .line 52
    iget p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreshold:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureThreshold:I

    .line 53
    return-void
.end method

.method private changeThreeGestureState(I)V
    .locals 2

    .line 106
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-eq v0, p1, :cond_3

    .line 107
    iput p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    .line 108
    iget p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 111
    :cond_1
    :goto_0
    :try_start_0
    const-string/jumbo p1, "sys.android.screenshot"

    if-eqz v1, :cond_2

    const-string/jumbo v0, "true"

    goto :goto_1

    :cond_2
    const-string v0, "false"

    :goto_1
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_2

    .line 112
    :catch_0
    move-exception p1

    .line 113
    const-string v0, "SwipeToScreenshotListener"

    const-string v1, "Exception when setprop"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :cond_3
    :goto_2
    return-void
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 120
    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 123
    iget-object v2, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 128
    const/4 v3, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v3

    move v5, v4

    move v7, v5

    move v3, v1

    move v4, v6

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 129
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 130
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 131
    iget v10, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreshold:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_1

    .line 132
    return v1

    .line 134
    :cond_1
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 135
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 136
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 137
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_2
    sub-float/2addr v4, v5

    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr p1, v3

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_5

    .line 140
    sub-float/2addr v6, v7

    if-ge v2, v0, :cond_3

    move v0, v2

    :cond_3
    int-to-float p1, v0

    cmpg-float p1, v6, p1

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    return v1

    .line 142
    :cond_5
    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 57
    iget-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mBootCompleted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    const-string/jumbo p1, "sys.boot_completed"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mBootCompleted:Z

    .line 59
    return-void

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 62
    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mDeviceProvisioned:Z

    .line 64
    return-void

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_3

    .line 67
    invoke-direct {p0, v1}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    goto :goto_1

    .line 68
    :cond_3
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/policy/SwipeToScreenshotListener;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-direct {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 71
    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_5

    .line 72
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v4, v0

    .line 73
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 79
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureState:I

    if-ne v0, v2, :cond_a

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v3, :cond_6

    .line 81
    invoke-direct {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 82
    return-void

    .line 84
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 85
    const/4 v0, 0x0

    .line 86
    nop

    .line 87
    :goto_2
    if-ge v1, v3, :cond_9

    .line 88
    iget-object v4, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mPointerIds:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 89
    if-ltz v4, :cond_8

    if-lt v4, v3, :cond_7

    goto :goto_3

    .line 93
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mInitMotionY:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_2

    .line 90
    :cond_8
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 91
    return-void

    .line 97
    :cond_9
    iget p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mThreeGestureThreshold:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_a

    .line 98
    invoke-direct {p0, v3}, Lcom/android/server/policy/SwipeToScreenshotListener;->changeThreeGestureState(I)V

    .line 99
    iget-object p1, p0, Lcom/android/server/policy/SwipeToScreenshotListener;->mCallbacks:Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SwipeToScreenshotListener$Callbacks;->onSwipeThreeFinger()V

    .line 103
    :cond_a
    return-void
.end method
