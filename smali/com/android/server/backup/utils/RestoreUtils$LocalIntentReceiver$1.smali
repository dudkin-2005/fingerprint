.class Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {p1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 212
    :try_start_0
    iget-object p3, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {p3, p2}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$202(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;Landroid/content/Intent;)Landroid/content/Intent;

    .line 213
    iget-object p2, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {p2}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit p1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
