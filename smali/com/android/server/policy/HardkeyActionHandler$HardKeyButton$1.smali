.class Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;
.super Ljava/lang/Object;
.source "HardkeyActionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$200(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$202(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Z)Z

    .line 555
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-virtual {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->keyHasSingleTapRecent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-static {}, Lcom/android/internal/utils/ActionHandler;->cancelPreloadRecentApps()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$400(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v3, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$1;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v3}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$300(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/utils/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;->onActionDispatched(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Ljava/lang/String;)V

    .line 560
    :cond_1
    return-void
.end method
