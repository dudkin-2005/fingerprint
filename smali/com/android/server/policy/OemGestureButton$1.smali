.class Lcom/android/server/policy/OemGestureButton$1;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .line 221
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "openToken"    # Landroid/os/IBinder;

    .line 251
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    if-eqz v0, :cond_17

    .line 252
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->overridePendingAppTransition(ZLandroid/view/animation/Animation;)V

    .line 253
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    .line 254
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 256
    :cond_17
    # getter for: Lcom/android/server/policy/OemGestureButton;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 257
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener finished: openToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 258
    # getter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_42
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .registers 14
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # J
    .param p6, "statusBarAnimationStartTime"    # J
    .param p8, "statusBarAnimationDuration"    # J

    .line 226
    # getter for: Lcom/android/server/policy/OemGestureButton;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 227
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener: start transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " openToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closeToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 229
    # getter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3b
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_67

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v0}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_5e

    .line 233
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    const/4 v0, 0x5

    return v0

    .line 239
    :cond_5e
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$1;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 243
    :cond_67
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v0, :cond_72

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    if-nez v0, :cond_72

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    .line 246
    :cond_72
    const/4 v0, 0x0

    return v0
.end method
