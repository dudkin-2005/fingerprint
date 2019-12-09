.class Lcom/android/server/wm/onehand/OneHandedControlPanel$6;
.super Ljava/lang/Object;
.source "OneHandedControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedControlPanel;->createControlPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 546
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object p1

    .line 548
    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    const/16 v1, 0x53

    invoke-virtual {p1, v1}, Lcom/android/server/wm/onehand/OneHandedMode;->setGravity(I)V

    goto :goto_0

    .line 554
    :cond_1
    const/16 v1, 0x55

    invoke-virtual {p1, v1}, Lcom/android/server/wm/onehand/OneHandedMode;->setGravity(I)V

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1400(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getGravity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveGravity(Landroid/content/Context;I)V

    .line 559
    invoke-virtual {p1, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushSwipeRight()V

    goto :goto_1

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushSwipeLeft()V

    .line 565
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$6;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 566
    return-void
.end method
