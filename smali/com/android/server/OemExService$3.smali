.class Lcom/android/server/OemExService$3;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/OemExService;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 254
    iput-object p1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 257
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 258
    .local v0, "newState":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 260
    .local v1, "oldState":I
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    goto :goto_2c

    .line 262
    :cond_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 263
    .local v2, "firstBoot":Z
    iget-object v3, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # invokes: Lcom/android/server/OemExService;->onSystemReady(Z)V
    invoke-static {v3, v2}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;Z)V

    .line 264
    iget-object v3, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 265
    iget-object v3, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/OemExService;->access$800(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 271
    .end local v2    # "firstBoot":Z
    :cond_2c
    :goto_2c
    return-void
.end method
