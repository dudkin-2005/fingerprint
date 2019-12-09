.class Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PacRefreshIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p1}, Lcom/android/server/connectivity/PacManager;->access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {p2}, Lcom/android/server/connectivity/PacManager;->access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
