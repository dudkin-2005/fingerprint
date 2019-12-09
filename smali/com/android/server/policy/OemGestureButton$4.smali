.class Lcom/android/server/policy/OemGestureButton$4;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V
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

    .line 681
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 685
    # getter for: Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$400()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_f

    .line 686
    :cond_d
    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->createScaleDownAnimationLocked()Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/server/policy/OemGestureButton;->access$500(Lcom/android/server/policy/OemGestureButton;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 687
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_15
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerInternal;->overridePendingAppTransition(ZLandroid/view/animation/Animation;)V

    .line 688
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 689
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    .line 691
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 693
    return-void
.end method
