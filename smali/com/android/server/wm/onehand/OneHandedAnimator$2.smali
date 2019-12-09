.class Lcom/android/server/wm/onehand/OneHandedAnimator$2;
.super Ljava/lang/Object;
.source "OneHandedAnimator.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/onehand/OneHandedAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    .line 380
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$100(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 383
    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 395
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$200(Lcom/android/server/wm/onehand/OneHandedAnimator;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$300(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$400(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 400
    invoke-static {v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$400(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$500(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$600(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    .line 406
    :goto_0
    monitor-exit p1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->access$100(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator$2;->this$0:Lcom/android/server/wm/onehand/OneHandedAnimator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z

    .line 391
    :cond_0
    return-void
.end method
