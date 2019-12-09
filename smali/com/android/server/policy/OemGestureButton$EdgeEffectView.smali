.class Lcom/android/server/policy/OemGestureButton$EdgeEffectView;
.super Landroid/widget/ImageView;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeEffectView"
.end annotation


# instance fields
.field mEffect:Lcom/android/server/policy/OPEdgeEffect;

.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 1361
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 1362
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1363
    new-instance p1, Lcom/android/server/policy/OPEdgeEffect;

    invoke-direct {p1, p2}, Lcom/android/server/policy/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    .line 1364
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1368
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1369
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1370
    const/16 v0, 0xb4

    .line 1371
    .local v0, "rotate":I
    const/4 v1, 0x0

    .line 1372
    .local v1, "translate_x":I
    const/4 v2, 0x0

    .line 1374
    .local v2, "translate_y":I
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I
    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    if-nez v3, :cond_40

    .line 1375
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mFromX:F
    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$2400(Lcom/android/server/policy/OemGestureButton;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2d

    .line 1376
    const/16 v1, -0x168

    goto :goto_2f

    .line 1378
    :cond_2d
    const/16 v1, -0x42e

    .line 1380
    :goto_2f
    const/16 v2, -0x3c

    .line 1384
    int-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1385
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1386
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .end local v0    # "rotate":I
    .end local v1    # "translate_x":I
    .end local v2    # "translate_y":I
    goto :goto_41

    .line 1382
    .restart local v0    # "rotate":I
    .restart local v1    # "translate_x":I
    .restart local v2    # "translate_y":I
    :cond_40
    return-void

    .line 1388
    .end local v0    # "rotate":I
    .end local v1    # "translate_x":I
    .end local v2    # "translate_y":I
    :cond_41
    :goto_41
    return-void
.end method

.method public onAbsorb(I)V
    .registers 3
    .param p1, "velocity"    # I

    .line 1407
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onAbsorb(I)V

    .line 1408
    return-void
.end method

.method public onPull(F)V
    .registers 3
    .param p1, "f"    # F

    .line 1391
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onPull(F)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1393
    return-void
.end method

.method public onPull(FF)V
    .registers 4
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 1396
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1398
    return-void
.end method

.method public onRelease()V
    .registers 2

    .line 1411
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->onRelease()V

    .line 1412
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->finish()V

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1414
    return-void
.end method

.method public setSize()V
    .registers 4

    .line 1401
    const/16 v0, 0x15e

    .line 1402
    .local v0, "width":I
    const/16 v1, 0x15e

    .line 1403
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/OPEdgeEffect;->setSize(II)V

    .line 1404
    return-void
.end method
