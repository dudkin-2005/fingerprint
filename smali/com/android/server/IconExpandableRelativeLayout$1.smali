.class Lcom/android/server/IconExpandableRelativeLayout$1;
.super Ljava/lang/Object;
.source "IconExpandableRelativeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IconExpandableRelativeLayout;->startExpandHeightAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IconExpandableRelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/server/IconExpandableRelativeLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/IconExpandableRelativeLayout;

    .line 30
    iput-object p1, p0, Lcom/android/server/IconExpandableRelativeLayout$1;->this$0:Lcom/android/server/IconExpandableRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 34
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/android/server/IconExpandableRelativeLayout$1;->this$0:Lcom/android/server/IconExpandableRelativeLayout;

    invoke-virtual {v1}, Lcom/android/server/IconExpandableRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 36
    const-string/jumbo v2, "vincent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animatedValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v2, p0, Lcom/android/server/IconExpandableRelativeLayout$1;->this$0:Lcom/android/server/IconExpandableRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/server/IconExpandableRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method
