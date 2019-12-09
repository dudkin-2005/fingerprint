.class final Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateInputForAllWindowsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field inDrag:Z

.field navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;

.field wallpaperController:Lcom/android/server/wm/WallpaperController;

.field wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V
    .locals 0

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V
    .locals 0

    .line 613
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->updateInputWindows(Z)V

    return-void
.end method

.method private updateInputWindows(Z)V
    .locals 6

    .line 624
    const-string/jumbo v0, "updateInputWindows"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string v3, "nav_input_consumer"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "pip_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "wallpaper_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    const-string/jumbo v3, "recents_animation_input_consumer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;I)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-static {v0, v3}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0, v4}, Lcom/android/server/wm/InputMonitor;->access$702(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 638
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    .line 639
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 641
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p0, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 642
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 644
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1, v0}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 648
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$1000(Lcom/android/server/wm/InputMonitor;)[Lcom/android/server/input/InputWindowHandle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$1100(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/input/InputWindowHandle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;Lcom/android/server/input/InputWindowHandle;)V

    .line 650
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1}, Lcom/android/server/wm/InputMonitor;->access$1200(Lcom/android/server/wm/InputMonitor;)V

    .line 652
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/WindowState;)V
    .locals 10

    .line 657
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 658
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 659
    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_b

    .line 660
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 665
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 666
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 667
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 668
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-ne p1, v1, :cond_1

    .line 669
    move v7, v3

    goto :goto_0

    .line 668
    :cond_1
    nop

    .line 669
    move v7, v6

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    .line 671
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 673
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 674
    if-eqz v1, :cond_3

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 675
    invoke-virtual {v1, v9}, Lcom/android/server/wm/RecentsAnimationController;->hasInputConsumerForApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 676
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1, v7}, Lcom/android/server/wm/RecentsAnimationController;->updateInputConsumerForApp(Lcom/android/server/wm/InputConsumerImpl;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 678
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->recentsAnimationInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {p1, v0}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 679
    iget-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {p1, v6}, Lcom/android/server/wm/InputMonitor;->access$502(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 683
    :cond_2
    return-void

    .line 687
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 688
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$300(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v9, v9, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v9, v9, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v9, :cond_4

    .line 691
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 692
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v9}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 693
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->pipInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v9, v9, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v9}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 694
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v6}, Lcom/android/server/wm/InputMonitor;->access$302(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 697
    :cond_4
    if-nez v7, :cond_5

    .line 699
    return-void

    .line 703
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$200(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v9, v9, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v9, v9, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v1, v9, :cond_6

    .line 705
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->navInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v9, v9, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v9}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 706
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v6}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 709
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 710
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dd

    if-ne v1, v9, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 712
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v9, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v9, v9, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {v1, v9}, Lcom/android/server/wm/InputMonitor;->access$900(Lcom/android/server/wm/InputMonitor;Lcom/android/server/input/InputWindowHandle;)V

    .line 713
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v6}, Lcom/android/server/wm/InputMonitor;->access$402(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 717
    :cond_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    .line 718
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v3}, Lcom/android/server/wm/InputMonitor;->access$702(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 720
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->wallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_9

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 722
    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$700(Lcom/android/server/wm/InputMonitor;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 726
    move v0, v3

    goto :goto_1

    .line 722
    :cond_9
    nop

    .line 726
    move v0, v6

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->inDrag:Z

    if-eqz v1, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_a

    .line 727
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$800(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragDropController;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 730
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->this$0:Lcom/android/server/wm/InputMonitor;

    move-object v3, p1

    move v6, v8

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandle(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 732
    return-void

    .line 662
    :cond_b
    :goto_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 613
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->accept(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
