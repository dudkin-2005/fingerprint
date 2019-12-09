.class Lcom/android/server/NsdService$NsdStateMachine$1;
.super Landroid/database/ContentObserver;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object p1, p1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$1;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$000(Lcom/android/server/NsdService;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/NsdService;->access$100(Lcom/android/server/NsdService;Z)V

    .line 105
    return-void
.end method
