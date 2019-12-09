.class Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyButton"
.end annotation


# instance fields
.field private mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

.field private mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

.field final mDTRunnable:Ljava/lang/Runnable;

.field private mDoubleTapPending:Z

.field final mDoubleTapTimeout:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsPressed:Z

.field final mLPRunnable:Ljava/lang/Runnable;

.field final mSTRunnable:Ljava/lang/Runnable;

.field private mWasConsumed:Z

.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    .line 539
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    .line 540
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    .line 551
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    .line 563
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;

    invoke-direct {p1, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mSTRunnable:Ljava/lang/Runnable;

    .line 569
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$3;

    invoke-direct {p1, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$3;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDTRunnable:Ljava/lang/Runnable;

    .line 575
    new-instance p1, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$4;

    invoke-direct {p1, p0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$4;-><init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V

    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mLPRunnable:Ljava/lang/Runnable;

    .line 543
    iput-object p3, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    .line 544
    iput-object p2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    .line 545
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Z
    .locals 0

    .line 533
    iget-boolean p0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Z)Z
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/internal/utils/Config$ButtonConfig;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mActionReceiver:Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    return-object p0
.end method


# virtual methods
.method cancelDTTimeout()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method

.method fireDoubleTap()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method fireLongPress()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mLPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    return-void
.end method

.method fireSingleTap()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mSTRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    return-void
.end method

.method isDoubleTapEnabled()Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/Config$ActionConfig;->hasNoAction()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isDoubleTapPending()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    return v0
.end method

.method isLongTapEnabled()Z
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/Config$ActionConfig;->hasNoAction()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method isPressed()Z
    .locals 1

    .line 620
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    return v0
.end method

.method keyHasDoubleTapRecents()Z
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method keyHasLongPressRecents()Z
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method keyHasMenuAction()Z
    .locals 5

    .line 594
    const-string/jumbo v0, "task_menu"

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/utils/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "task_menu"

    iget-object v3, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    .line 595
    invoke-virtual {v3, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/utils/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "task_menu"

    iget-object v3, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v4, 0x2

    .line 596
    invoke-virtual {v3, v4}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/utils/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    move v1, v2

    goto :goto_1

    .line 596
    :cond_1
    :goto_0
    nop

    .line 594
    :goto_1
    return v1
.end method

.method keyHasSingleTapRecent()Z
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/utils/Config$ActionConfig;->isActionRecents()Z

    move-result v0

    return v0
.end method

.method postDTTimeout()V
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    return-void
.end method

.method setConfig(Lcom/android/internal/utils/Config$ButtonConfig;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mConfig:Lcom/android/internal/utils/Config$ButtonConfig;

    .line 549
    return-void
.end method

.method setDoubleTapPending(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mDoubleTapPending:Z

    .line 609
    return-void
.end method

.method setPressed(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mIsPressed:Z

    .line 617
    return-void
.end method

.method setWasConsumed(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    .line 625
    return-void
.end method

.method wasConsumed()Z
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->mWasConsumed:Z

    return v0
.end method
