.class Lcom/android/server/OemSceneGameModeDialog$13;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->startCloseEffectListHeightAniamtion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;

.field final synthetic val$effectListCurrentHeight:I

.field final synthetic val$scrollViewCurrentHeight:I


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 751
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$13;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iput p2, p0, Lcom/android/server/OemSceneGameModeDialog$13;->val$scrollViewCurrentHeight:I

    iput p3, p0, Lcom/android/server/OemSceneGameModeDialog$13;->val$effectListCurrentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 754
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 755
    .local v0, "animatedValue":F
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$13;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$1200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 756
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 757
    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog$13;->val$scrollViewCurrentHeight:I

    float-to-int v3, v0

    iget v4, p0, Lcom/android/server/OemSceneGameModeDialog$13;->val$effectListCurrentHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 758
    .local v2, "h":I
    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog$13;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;
    invoke-static {v3}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/StaticScrollView;->setCurrentHeight(I)V

    .line 759
    return-void
.end method
