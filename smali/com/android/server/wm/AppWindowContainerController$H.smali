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


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWindowContainerController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    goto :goto_70

    .line 92
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_d

    .line 93
    return-void

    .line 95
    :cond_d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2d

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting drawn in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    .line 96
    # getter for: Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;
    invoke-static {v2}, Lcom/android/server/wm/AppWindowContainerController;->access$000(Lcom/android/server/wm/AppWindowContainerController;)Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppWindowContainerListener;->onStartingWindowDrawn(J)V

    .line 98
    goto :goto_70

    .line 84
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    if-nez v0, :cond_42

    .line 85
    return-void

    .line 87
    :cond_42
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_62

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting drawn in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    .line 88
    # getter for: Lcom/android/server/wm/AppWindowContainerController;->mToken:Landroid/view/IApplicationToken;
    invoke-static {v2}, Lcom/android/server/wm/AppWindowContainerController;->access$000(Lcom/android/server/wm/AppWindowContainerController;)Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$H;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerListener;

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/AppWindowContainerListener;->onWindowsDrawn(J)V

    .line 90
    nop

    .line 102
    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_6
    .end packed-switch
.end method
