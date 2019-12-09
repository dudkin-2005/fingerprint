.class final Lcom/android/server/wm/RootWindowContainer$MyHandler;
.super Landroid/os/Handler;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootWindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1027
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$MyHandler;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 1028
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1029
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1033
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 1039
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$MyHandler;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1040
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1039
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    .line 1041
    goto :goto_24

    .line 1035
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$MyHandler;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    .line 1037
    nop

    .line 1045
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
        :pswitch_6
    .end packed-switch
.end method
