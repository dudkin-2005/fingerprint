.class Lcom/android/server/EffectImageList$3;
.super Ljava/lang/Object;
.source "EffectImageList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EffectImageList;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EffectImageList;


# direct methods
.method constructor <init>(Lcom/android/server/EffectImageList;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/EffectImageList;

    .line 110
    iput-object p1, p0, Lcom/android/server/EffectImageList$3;->this$0:Lcom/android/server/EffectImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 118
    iget-object v0, p0, Lcom/android/server/EffectImageList$3;->this$0:Lcom/android/server/EffectImageList;

    # getter for: Lcom/android/server/EffectImageList;->mGroupNo:I
    invoke-static {v0}, Lcom/android/server/EffectImageList;->access$000(Lcom/android/server/EffectImageList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 119
    iget-object v0, p0, Lcom/android/server/EffectImageList$3;->this$0:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->hide()V

    .line 121
    :cond_e
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 126
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 114
    return-void
.end method
