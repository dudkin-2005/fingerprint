.class Lcom/android/server/wm/onehand/OneHandedControlPanel$3;
.super Ljava/lang/Object;
.source "OneHandedControlPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedControlPanel;->createControlPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

.field mDownPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    .line 396
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->mDownPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v0, p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1000(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 408
    goto :goto_0

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushExitByOutsideScreenTouch()V

    .line 411
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$3;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 414
    :goto_0
    return v1
.end method
