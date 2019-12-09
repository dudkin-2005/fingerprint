.class Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result p1

    .line 395
    iget-object p2, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/content/SyncManager;->access$602(Lcom/android/server/content/SyncManager;Z)Z

    .line 396
    iget-object p2, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 397
    if-nez p1, :cond_1

    .line 398
    const-string p1, "SyncManager"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    const-string p1, "SyncManager"

    const-string p2, "Reconnection detected: clearing all backoffs"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    const-string p2, "network reconnect"

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V

    .line 405
    :cond_1
    return-void
.end method
