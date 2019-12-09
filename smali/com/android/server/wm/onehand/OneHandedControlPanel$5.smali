.class Lcom/android/server/wm/onehand/OneHandedControlPanel$5;
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

.field final synthetic val$zoom:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/widget/ImageView;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->val$zoom:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    .line 484
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 488
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 498
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    .line 499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {p2}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 501
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 502
    nop

    .line 505
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 506
    neg-float p1, p1

    .line 510
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1500(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v0

    mul-float/2addr p2, v0

    .line 511
    add-float/2addr p2, p1

    .line 512
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1500(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 514
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p1, v0}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget v2, p1, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-static {v0, p2, v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1600(Lcom/android/server/wm/onehand/OneHandedControlPanel;FI)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/onehand/OneHandedMode;->setScale(F)V

    .line 516
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1400(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveScale(Landroid/content/Context;F)V

    .line 517
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 518
    goto :goto_0

    .line 521
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->unsuspendPointerMappingUpgration()V

    .line 522
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->val$zoom:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 523
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushResize()V

    .line 524
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1, v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1200(Lcom/android/server/wm/onehand/OneHandedControlPanel;Z)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/onehand/OneHandedMode;->set(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 491
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 493
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->suspendPointerMappingUpgration()V

    .line 494
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->val$zoom:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 495
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$5;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1200(Lcom/android/server/wm/onehand/OneHandedControlPanel;Z)V

    .line 496
    nop

    .line 527
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
