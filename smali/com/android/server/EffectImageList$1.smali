.class Lcom/android/server/EffectImageList$1;
.super Ljava/lang/Object;
.source "EffectImageList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EffectImageList;->showAnimation()V
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

    .line 44
    iput-object p1, p0, Lcom/android/server/EffectImageList$1;->this$0:Lcom/android/server/EffectImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/android/server/EffectImageList$1;->this$0:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->show()V

    .line 53
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 58
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 48
    return-void
.end method
