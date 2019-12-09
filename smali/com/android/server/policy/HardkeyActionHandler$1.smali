.class Lcom/android/server/policy/HardkeyActionHandler$1;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"

# interfaces
.implements Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HardkeyActionHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDispatched(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string/jumbo v0, "task_home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {p1}, Lcom/android/server/policy/HardkeyActionHandler;->access$000(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1bbe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    return-void

    .line 98
    :cond_0
    const-string/jumbo v0, "task_screenoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setPressed(Z)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->setWasConsumed(Z)V

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$1;->this$0:Lcom/android/server/policy/HardkeyActionHandler;

    invoke-static {p1}, Lcom/android/server/policy/HardkeyActionHandler;->access$100(Lcom/android/server/policy/HardkeyActionHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/internal/utils/ActionHandler;->performTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method
