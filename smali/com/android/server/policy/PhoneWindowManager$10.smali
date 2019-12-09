.class Lcom/android/server/policy/PhoneWindowManager$10;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 2700
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .registers 1

    .line 2809
    return-void
.end method

.method public onDown()V
    .registers 3

    .line 2812
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchStart()V

    .line 2813
    # getter for: Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2814
    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3700(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2815
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2816
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$3702(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2818
    :cond_28
    return-void
.end method

.method public onFling(I)V
    .registers 7
    .param p1, "duration"    # I

    .line 2757
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2758
    .local v0, "currentPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_16

    .line 2759
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 2762
    :cond_16
    # getter for: Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2763
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v1, :cond_31

    .line 2764
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 2765
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3702(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2767
    :cond_31
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v1, :cond_3f

    .line 2768
    const-string v1, "WindowManager"

    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    return-void

    .line 2772
    :cond_3f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v2, 0x1080

    add-int/lit16 v3, p1, 0xa0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2774
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z
    invoke-static {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$3702(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 2776
    :cond_50
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 5

    .line 2832
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2833
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2834
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2835
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2836
    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 5

    .line 2825
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2826
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2827
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2828
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2829
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .registers 3

    .line 2839
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2840
    return-void
.end method

.method public onScroll(Z)V
    .registers 7
    .param p1, "started"    # Z

    .line 2779
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2780
    .local v0, "currentPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v1, :cond_17

    .line 2781
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 2783
    :cond_17
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v1, :cond_25

    .line 2784
    const-string v1, "WindowManager"

    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    return-void

    .line 2787
    :cond_25
    # getter for: Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3600()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_53

    .line 2788
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v1, :cond_3b

    .line 2789
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Landroid/util/BoostFramework;

    invoke-direct {v3}, Landroid/util/BoostFramework;-><init>()V

    iput-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 2791
    :cond_3b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v1, :cond_49

    .line 2792
    const-string v1, "WindowManager"

    const-string v2, "Error: boost object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    return-void

    .line 2795
    :cond_49
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2798
    :cond_53
    if-eqz p1, :cond_60

    .line 2799
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v3, 0x1087

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_67

    .line 2802
    :cond_60
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 2804
    :goto_67
    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 3

    .line 2739
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 2740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2742
    :cond_16
    return-void
.end method

.method public onSwipeFromLeft()V
    .registers 3

    .line 2751
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 2752
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2754
    :cond_16
    return-void
.end method

.method public onSwipeFromRight()V
    .registers 3

    .line 2745
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 2746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2748
    :cond_16
    return-void
.end method

.method public onSwipeFromTop()V
    .registers 4

    .line 2726
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_10

    .line 2733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    .line 2736
    :cond_10
    return-void
.end method

.method public onSwipeFromTopNotch()V
    .registers 3

    .line 2705
    sget-boolean v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-nez v0, :cond_5

    return-void

    .line 2707
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    if-nez v0, :cond_2c

    .line 2708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 2709
    .local v0, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_2c

    .line 2712
    :try_start_19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2713
    const-string v1, "OP_Swipe_Notch"

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V

    goto :goto_2a

    .line 2716
    :cond_27
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2a} :catch_2b

    .line 2719
    :goto_2a
    goto :goto_2c

    .line 2718
    :catch_2b
    move-exception v1

    .line 2722
    .end local v0    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onUpOrCancel()V
    .registers 2

    .line 2821
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$10;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->onTouchEnd()V

    .line 2822
    return-void
.end method
