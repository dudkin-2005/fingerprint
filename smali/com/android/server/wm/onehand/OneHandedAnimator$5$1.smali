.class Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;
.super Ljava/lang/Object;
.source "OneHandedAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator$5;->onUserSwitchComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/onehand/OneHandedAnimator$5;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator$5;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;->this$1:Lcom/android/server/wm/onehand/OneHandedAnimator$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;->this$1:Lcom/android/server/wm/onehand/OneHandedAnimator$5;

    iget-object v0, v0, Lcom/android/server/wm/onehand/OneHandedAnimator$5;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$1200(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$5$1;->this$1:Lcom/android/server/wm/onehand/OneHandedAnimator$5;

    iget-object v0, v0, Lcom/android/server/wm/onehand/OneHandedAnimator$5;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 545
    return-void
.end method
