.class Lcom/android/server/StaticScrollView$2;
.super Ljava/lang/Object;
.source "StaticScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StaticScrollView;->initSettingsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StaticScrollView;

.field final synthetic val$scrollViewCurrentHeight:I


# direct methods
.method constructor <init>(Lcom/android/server/StaticScrollView;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StaticScrollView;

    .line 194
    iput-object p1, p0, Lcom/android/server/StaticScrollView$2;->this$0:Lcom/android/server/StaticScrollView;

    iput p2, p0, Lcom/android/server/StaticScrollView$2;->val$scrollViewCurrentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 198
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/android/server/StaticScrollView$2;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/server/StaticScrollView;->access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 200
    iget-object v2, p0, Lcom/android/server/StaticScrollView$2;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/server/StaticScrollView;->access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget v2, p0, Lcom/android/server/StaticScrollView$2;->val$scrollViewCurrentHeight:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_33

    .line 202
    iget-object v2, p0, Lcom/android/server/StaticScrollView$2;->this$0:Lcom/android/server/StaticScrollView;

    # getter for: Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/StaticScrollView;->access$300(Lcom/android/server/StaticScrollView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_33
    return-void
.end method
