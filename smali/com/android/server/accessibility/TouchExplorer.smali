.class Lcom/android/server/accessibility/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 172
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 174
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 175
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 176
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    .line 178
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 180
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 181
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 182
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v1, 0x400

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 185
    new-instance p2, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v1, 0x200000

    invoke-direct {p2, p0, v1, v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 188
    new-instance p2, Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-direct {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 190
    const/high16 p2, 0x43480000    # 200.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 192
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object p0
.end method

.method private clear()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 214
    :cond_0
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3

    .line 217
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 226
    goto :goto_0

    .line 220
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 221
    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    .line 230
    nop

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 237
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 238
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 239
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 240
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 242
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 243
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 245
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 248
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 249
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 250
    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 251
    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 252
    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 253
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 254
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 4

    .line 1063
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1064
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1065
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1066
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 1067
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1069
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1071
    return v1

    .line 1073
    :cond_1
    const/4 p1, 0x2

    return p1

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1078
    return v1

    .line 1080
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private computeInjectionAction(II)I
    .locals 1

    .line 1011
    if-eqz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1034
    return p1

    .line 1024
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1026
    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1027
    return v0

    .line 1029
    :cond_0
    shl-int/lit8 p1, p2, 0x8

    or-int/lit8 p1, p1, 0x6

    return p1

    .line 1014
    :cond_1
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1016
    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 1017
    const/4 p1, 0x0

    return p1

    .line 1019
    :cond_2
    shl-int/lit8 p1, p2, 0x8

    or-int/lit8 p1, p1, 0x5

    return p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endGestureDetection()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 783
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 785
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 787
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 788
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 789
    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2

    .line 1090
    packed-switch p0, :pswitch_data_0

    .line 1100
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1098
    :pswitch_1
    const-string p0, "STATE_GESTURE_DETECTING"

    return-object p0

    .line 1096
    :pswitch_2
    const-string p0, "STATE_DELEGATING"

    return-object p0

    .line 1094
    :pswitch_3
    const-string p0, "STATE_DRAGGING"

    return-object p0

    .line 1092
    :pswitch_4
    const-string p0, "STATE_TOUCH_EXPLORING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 3

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_0

    .line 754
    :pswitch_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_0

    .line 755
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 758
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 760
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 764
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 767
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 768
    const/high16 p1, 0x200000

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 770
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 771
    goto :goto_0

    .line 746
    :pswitch_1
    const-string v0, "TouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 749
    return-void

    .line 777
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 7

    .line 640
    nop

    .line 642
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 643
    const-string v0, "TouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 644
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 643
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 650
    move v0, v1

    goto :goto_0

    .line 648
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    shl-int v0, v3, v0

    .line 650
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 714
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 715
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_1

    .line 716
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 718
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 720
    :cond_1
    goto/16 :goto_1

    .line 660
    :pswitch_2
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 661
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-eq v1, v2, :cond_2

    .line 662
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 664
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 665
    goto/16 :goto_1

    .line 667
    :pswitch_3
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v4, v2, :cond_3

    .line 668
    goto/16 :goto_1

    .line 670
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 704
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 706
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 712
    goto :goto_1

    .line 675
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 677
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 678
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 679
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 681
    sub-float/2addr v2, v4

    .line 682
    sub-float/2addr v1, v3

    .line 683
    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 685
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    .line 686
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 690
    :cond_4
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 692
    goto :goto_1

    .line 695
    :cond_5
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 697
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 700
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 702
    goto :goto_1

    .line 673
    :pswitch_5
    goto :goto_1

    .line 722
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 724
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 727
    iget v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_6

    .line 728
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 730
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 732
    :cond_6
    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_1

    .line 652
    :pswitch_7
    const-string v0, "TouchExplorer"

    const-string v1, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 655
    return-void

    .line 735
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 487
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 531
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v1

    .line 532
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 533
    shl-int/2addr v2, v1

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x4

    packed-switch v4, :pswitch_data_1

    .line 595
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 598
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 599
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto/16 :goto_1

    .line 552
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 556
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_0

    .line 558
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v4, :cond_2

    .line 564
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 565
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    .line 566
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v6

    .line 567
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    sub-float/2addr v6, p2

    .line 568
    float-to-double v3, v4

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 569
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v6, p2

    cmpg-double p2, v3, v6

    if-gez p2, :cond_1

    .line 570
    goto :goto_2

    .line 574
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 578
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 581
    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 582
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    .line 583
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 584
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    .line 588
    :cond_3
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 589
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 591
    goto :goto_2

    .line 538
    :pswitch_2
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 540
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 542
    :cond_4
    iget-boolean p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz p2, :cond_6

    .line 543
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 544
    const/4 p2, 0x7

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_2

    .line 603
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 607
    :goto_1
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 608
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 611
    :cond_6
    :goto_2
    goto/16 :goto_4

    .line 613
    :pswitch_3
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    .line 615
    shl-int p2, v2, p2

    .line 617
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 619
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    goto :goto_3

    .line 622
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 625
    :goto_3
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p1

    if-nez p1, :cond_c

    .line 626
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_4

    .line 491
    :pswitch_4
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 493
    const/high16 p2, 0x100000

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 498
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 499
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 501
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 502
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 505
    :cond_8
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 506
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 509
    :cond_9
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->firstTapDetected()Z

    move-result p2

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    if-nez p2, :cond_c

    .line 510
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-static {p2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 513
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p2

    .line 514
    shl-int p2, v2, p2

    .line 515
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0, p1, v2, p2, p3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    .line 517
    goto :goto_4

    .line 519
    :cond_a
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 527
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 528
    iget-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 529
    nop

    .line 631
    :cond_c
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1045
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1047
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1048
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1049
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 1050
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 1052
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result p1

    .line 1053
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1054
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v4

    .line 1055
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v5

    .line 1057
    const v10, 0x3f067b80

    move v2, p1

    invoke-static/range {v2 .. v10}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result p1

    return p1
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 980
    move/from16 v2, p3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 981
    return-object v0

    .line 983
    :cond_0
    move-object/from16 v3, p0

    iget v3, v3, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 984
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 985
    invoke-static {v4}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    .line 986
    invoke-static {v4}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    .line 987
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    .line 988
    aget-object v6, v11, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 989
    aget-object v6, v12, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 990
    if-ne v5, v3, :cond_1

    .line 991
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v8, v1

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 992
    aget-object v6, v12, v5

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v8, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 987
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 995
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    .line 998
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    .line 995
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3

    .line 797
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 800
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 801
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 802
    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 804
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    .line 805
    nop

    .line 811
    :cond_2
    :goto_0
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 3

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 903
    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 904
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 905
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 906
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 907
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 908
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7

    .line 821
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 824
    nop

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 826
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 827
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 829
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 830
    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    .line 831
    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v5

    .line 832
    invoke-direct {p0, p1, v5, v4, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 826
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 835
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 846
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 847
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 850
    :cond_0
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 852
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 2

    .line 920
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 922
    nop

    .line 923
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 924
    nop

    .line 933
    move-object p3, p1

    goto :goto_0

    .line 927
    :cond_0
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    nop

    .line 933
    :goto_0
    if-nez p2, :cond_1

    .line 934
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1

    .line 936
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 945
    :goto_1
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz p2, :cond_2

    .line 946
    iget p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int p2, p2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v0, v0

    invoke-direct {p0, p3, p2, v0}, Lcom/android/server/accessibility/TouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p3

    .line 956
    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    or-int/2addr p2, p4

    .line 960
    const/4 p4, 0x0

    invoke-super {p0, p3, p4, p2}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 962
    iget-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {p2, p3}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 964
    if-eq p3, p1, :cond_3

    .line 965
    invoke-virtual {p3}, Landroid/view/MotionEvent;->recycle()V

    .line 967
    :cond_3
    return-void

    .line 928
    :catch_0
    move-exception p1

    .line 929
    const-string p2, "TouchExplorer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 864
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 865
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 867
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 6

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 878
    nop

    .line 879
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 880
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 881
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 883
    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 884
    goto :goto_1

    .line 886
    :cond_0
    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    .line 887
    invoke-direct {p0, v5, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v4

    .line 888
    invoke-direct {p0, p1, v4, v3, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 880
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 890
    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    .line 196
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 200
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 305
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 312
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 320
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 325
    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const v1, 0x8000

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 329
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 330
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 332
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    .line 333
    nop

    .line 339
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 340
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    .line 205
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 377
    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 378
    return v3

    .line 382
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 383
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 385
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 388
    :cond_1
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 393
    :cond_2
    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    return v4

    .line 397
    :cond_3
    const-string v2, "TouchExplorer"

    const-string v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 402
    iget-object v5, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 403
    invoke-direct {v0, v5}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v6

    .line 404
    if-nez v6, :cond_4

    .line 407
    return v4

    .line 411
    :cond_4
    new-array v13, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 412
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v7, v13, v3

    .line 413
    aget-object v7, v13, v3

    invoke-virtual {v1, v2, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 414
    new-array v14, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 415
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v14, v3

    .line 416
    aget-object v2, v14, v3

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iput v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 417
    aget-object v2, v14, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v19

    const/16 v20, 0x0

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v22

    .line 418
    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 422
    if-ne v6, v4, :cond_5

    .line 423
    move v3, v4

    goto :goto_0

    .line 422
    :cond_5
    nop

    .line 423
    :goto_0
    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    .line 424
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 425
    return v4
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 345
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 346
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    return-void

    .line 354
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 357
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 358
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    .line 360
    if-nez v3, :cond_2

    .line 361
    return-void

    .line 364
    :cond_2
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    .line 368
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    .line 370
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 372
    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 457
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    .line 459
    return v1

    .line 460
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    .line 464
    shl-int v0, v1, v0

    .line 468
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 469
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 470
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 471
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 472
    return v1

    .line 475
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onGestureCompleted(I)Z
    .locals 2

    .line 444
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 445
    const/4 p1, 0x0

    return p1

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer;->endGestureDetection()V

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 452
    const/4 p1, 0x1

    return p1
.end method

.method public onGestureStarted()Z
    .locals 1

    .line 432
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    .line 433
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 434
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 435
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 438
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 258
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 260
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/AccessibilityGestureDetector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    return-void

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 280
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 281
    return-void

    .line 284
    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 298
    :pswitch_0
    const-string p2, "TouchExplorer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 296
    :pswitch_1
    goto :goto_0

    .line 292
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    .line 293
    goto :goto_0

    .line 289
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    .line 290
    goto :goto_0

    .line 286
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 287
    nop

    .line 301
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1305
    const-string v0, "TouchExplorer"

    return-object v0
.end method