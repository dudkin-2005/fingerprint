.class Lcom/android/server/wm/AppTransition$3;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;

.field final synthetic val$callback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1371
    iget-object p1, p0, Lcom/android/server/wm/AppTransition$3;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->access$200(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/AppTransition$3;->val$callback:Landroid/os/IRemoteCallback;

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1372
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1375
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1367
    return-void
.end method
