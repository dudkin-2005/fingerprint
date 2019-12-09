.class Lcom/android/server/wm/onehand/OneHandedControlPanel$4;
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

.field final synthetic val$dragIndicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/widget/ImageView;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->val$dragIndicator:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    .line 433
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 447
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 448
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {v0, v2}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 450
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/android/server/wm/onehand/OneHandedMode;->hasGravity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    neg-int p1, p1

    .line 454
    :cond_0
    iget v2, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 455
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v2

    iget v3, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1300(Lcom/android/server/wm/onehand/OneHandedControlPanel;FI)I

    move-result p1

    iput p1, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    .line 456
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1400(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/content/Context;

    move-result-object p1

    iget v2, v0, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    invoke-static {p1, v2}, Lcom/android/server/wm/onehand/OneHandedSettings;->saveYAdj(Landroid/content/Context;I)V

    .line 457
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 458
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->val$dragIndicator:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 459
    goto :goto_0

    .line 462
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->unsuspendPointerMappingUpgration()V

    .line 463
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->val$dragIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 464
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1100(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;->pushMove()V

    .line 465
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1, v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1200(Lcom/android/server/wm/onehand/OneHandedControlPanel;Z)V

    goto :goto_0

    .line 439
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->suspendPointerMappingUpgration()V

    .line 440
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownMode:Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {v2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$900(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Lcom/android/server/wm/onehand/OneHandedAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/onehand/OneHandedMode;->set(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 441
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 442
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->val$dragIndicator:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 443
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->val$dragIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 444
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$4;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$1200(Lcom/android/server/wm/onehand/OneHandedControlPanel;Z)V

    .line 445
    nop

    .line 468
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
