.class final Lcom/android/server/am/ActivityManagerService$KillHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 2052
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KillHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2053
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2054
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2058
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_0

    .line 2068
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2061
    :cond_0
    const-string v0, "killProcessGroup"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2062
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2063
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2065
    nop

    .line 2070
    :goto_0
    return-void
.end method
