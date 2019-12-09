.class final Lcom/android/server/wm/AppWindowContainerController$H;
.super Landroid/os/Handler;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_STARTING_WINDOW_DRAWN:I = 0x2

.field public static final NOTIFY_WINDOWS_DRAWN:I = 0x1

.field public static final NOTIFY_WINDOWS_NOTDRAWN:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsNotDrawn(J)V

    .line 100
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_1

    .line 87
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppWindowContainerListener;->onStartingWindowDrawn(J)V

    .line 92
    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_2

    .line 79
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsDrawn(J)V

    .line 84
    nop

    .line 104
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
