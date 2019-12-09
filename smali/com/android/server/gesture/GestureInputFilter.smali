.class public Lcom/android/server/gesture/GestureInputFilter;
.super Ljava/lang/Object;
.source "GestureInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GestureInputFilter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoubleClickPendingIntent:Landroid/app/PendingIntent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGesturePadHeight:F

.field private mGesturePadWidth:F

.field private mHost:Landroid/view/IInputFilterHost;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mLongPressPendingIntent:Landroid/app/PendingIntent;

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 61
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    .line 62
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 64
    iget-object v5, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 65
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    .line 66
    invoke-virtual {v7, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    if-ne v6, v4, :cond_0

    .line 67
    invoke-virtual {v5, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v0

    iput v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    .line 69
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    .line 74
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 75
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    .line 77
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    .line 78
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    .line 79
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 80
    new-instance v0, Lcom/android/server/gesture/GestureInputFilter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/gesture/GestureInputFilter$1;-><init>(Lcom/android/server/gesture/GestureInputFilter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/gesture/GestureInputFilter;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    return p1
.end method

.method private generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 152
    iget v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "GestureInputFilter"

    const-string v1, "Adjusting motion for 270 degrees"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 169
    iget v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 169
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "GestureInputFilter"

    const-string v1, "Adjusting motion for 180 degrees"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 162
    iget v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 162
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 164
    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "GestureInputFilter"

    const-string v1, "Adjusting motion for 90 degrees"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 157
    nop

    .line 174
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 177
    iget v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_3

    iget v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 178
    return v3

    .line 181
    :cond_3
    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 183
    :cond_4
    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 187
    :cond_5
    :goto_1
    iget v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadWidth:F

    div-float/2addr v2, v4

    .line 188
    iget v4, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/gesture/GestureInputFilter;->mGesturePadHeight:F

    div-float/2addr v4, v5

    .line 190
    mul-float/2addr v0, v2

    .line 191
    mul-float/2addr v1, v4

    .line 193
    iget v2, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 194
    iget v4, p0, Lcom/android/server/gesture/GestureInputFilter;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 195
    nop

    .line 196
    nop

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    if-lez v5, :cond_6

    .line 201
    iget p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    add-float/2addr p1, v6

    .line 202
    add-float/2addr v1, v4

    goto :goto_2

    .line 203
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    .line 205
    iget p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    add-float/2addr p1, v6

    .line 206
    sub-float v1, v4, v1

    goto :goto_2

    .line 207
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_8

    .line 209
    add-float p1, v2, v0

    .line 210
    iget p2, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float p2, p2

    add-float/2addr p2, v4

    add-float v1, p2, v6

    goto :goto_2

    .line 211
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_9

    .line 213
    sub-float p1, v2, v0

    .line 214
    iget p2, p0, Lcom/android/server/gesture/GestureInputFilter;->mTouchSlop:I

    int-to-float p2, p2

    add-float/2addr p2, v4

    add-float v1, p2, v6

    .line 219
    :goto_2
    invoke-direct {p0, v2, v4, p1, v1}, Lcom/android/server/gesture/GestureInputFilter;->sendSwipe(FFFF)V

    .line 220
    const/4 p1, 0x1

    return p1

    .line 216
    :cond_9
    return v3
.end method

.method private static final lerp(FFF)F
    .locals 0

    .line 262
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private sendInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 259
    return-void
.end method

.method private sendMotionEvent(IJFFF)V
    .locals 14

    .line 249
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v0, p2

    move-wide/from16 v2, p2

    move v4, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 252
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 253
    move-object v1, p0

    invoke-direct {v1, v0}, Lcom/android/server/gesture/GestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;)V

    .line 254
    return-void
.end method

.method private sendSwipe(FFFF)V
    .locals 18

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 226
    nop

    .line 227
    const-wide/16 v0, 0x64

    add-long v9, v7, v0

    .line 228
    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-wide v2, v7

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 230
    move-wide v13, v7

    :goto_0
    cmp-long v0, v13, v9

    if-gez v0, :cond_0

    .line 231
    sub-long v0, v13, v7

    .line 232
    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 233
    const/4 v12, 0x2

    .line 234
    move/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v1, v2, v0}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v15

    move/from16 v3, p2

    move/from16 v4, p4

    invoke-static {v3, v4, v0}, Lcom/android/server/gesture/GestureInputFilter;->lerp(FFF)F

    move-result v16

    const/high16 v17, 0x3f800000    # 1.0f

    .line 233
    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 236
    goto :goto_0

    .line 237
    :cond_0
    move/from16 v2, p3

    move/from16 v4, p4

    const/4 v12, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v11, p0

    move v15, v2

    move/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Lcom/android/server/gesture/GestureInputFilter;->sendMotionEvent(IJFFF)V

    .line 238
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 149
    return-void
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/view/MotionEvent;

    .line 116
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 119
    nop

    .line 120
    return-void

    .line 108
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_1

    .line 109
    :catch_0
    move-exception p2

    .line 118
    :goto_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 112
    return-void

    .line 118
    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    throw p2
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 128
    iget-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 129
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 309
    iget-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 311
    :try_start_0
    iget-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 p1, 0x1

    return p1

    .line 313
    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 318
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 323
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 267
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/GestureInputFilter;->generateSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    iget-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 294
    :cond_0
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 282
    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 272
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 304
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 276
    const/4 p1, 0x0

    return p1
.end method

.method public setOnDoubleClickPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mDoubleClickPendingIntent:Landroid/app/PendingIntent;

    .line 332
    return-void
.end method

.method public setOnLongPressPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/server/gesture/GestureInputFilter;->mLongPressPendingIntent:Landroid/app/PendingIntent;

    .line 328
    return-void
.end method

.method public uninstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 137
    iget-object v1, p0, Lcom/android/server/gesture/GestureInputFilter;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 138
    iput-object v0, p0, Lcom/android/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method
