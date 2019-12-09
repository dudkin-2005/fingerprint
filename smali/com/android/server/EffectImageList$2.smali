.class Lcom/android/server/EffectImageList$2;
.super Ljava/lang/Object;
.source "EffectImageList.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EffectImageList;->hideAniamtion()V
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

    .line 66
    iput-object p1, p0, Lcom/android/server/EffectImageList$2;->this$0:Lcom/android/server/EffectImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 74
    iget-object v0, p0, Lcom/android/server/EffectImageList$2;->this$0:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->hide()V

    .line 75
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 70
    return-void
.end method
