.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService$1;

    .line 7619
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7619
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7619
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 7619
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 7634
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    goto :goto_19

    .line 7637
    :cond_14
    monitor-enter p0

    .line 7638
    const/4 v0, 0x0

    :try_start_16
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7639
    monitor-exit p0

    .line 7641
    :goto_19
    return-void

    .line 7639
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method updatePosition(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 7625
    monitor-enter p0

    .line 7626
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 7627
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 7628
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 7629
    monitor-exit p0

    .line 7630
    return-void

    .line 7629
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method
