.class Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;
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

    .line 563
    iput-object p1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v0}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$400(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    iget-object v2, p0, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton$2;->this$1:Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;

    invoke-static {v2}, Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;->access$300(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;)Lcom/android/internal/utils/Config$ButtonConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/utils/Config$ButtonConfig;->getActionConfig(I)Lcom/android/internal/utils/Config$ActionConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/utils/Config$ActionConfig;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/HardkeyActionHandler$ActionReceiver;->onActionDispatched(Lcom/android/server/policy/HardkeyActionHandler$HardKeyButton;Ljava/lang/String;)V

    .line 566
    return-void
.end method
