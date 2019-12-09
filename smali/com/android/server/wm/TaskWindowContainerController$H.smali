.class final Lcom/android/server/wm/TaskWindowContainerController$H;
.super Landroid/os/Handler;
.source "TaskWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REPORT_SNAPSHOT_CHANGED:I = 0x0

.field static final REQUEST_RESIZE:I = 0x1


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/TaskWindowContainerController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    iput-object p1, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    .line 235
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/TaskWindowContainerController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerController;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v0, v0, Lcom/android/server/wm/TaskWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/TaskWindowContainerListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    if-nez v0, :cond_1

    .line 243
    return-void

    .line 245
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 250
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/TaskWindowContainerListener;->requestResize(Landroid/graphics/Rect;I)V

    goto :goto_1

    .line 247
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {v0, p1}, Lcom/android/server/wm/TaskWindowContainerListener;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 248
    nop

    .line 253
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
