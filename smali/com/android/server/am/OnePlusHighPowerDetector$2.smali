.class Lcom/android/server/am/OnePlusHighPowerDetector$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->registerNotificationCancelReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 719
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 722
    const-string/jumbo v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 723
    .local v0, "type":I
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] Notification Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is canceled by user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v1, 0x0

    if-nez v0, :cond_2b

    .line 725
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object v1, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    goto :goto_32

    .line 726
    :cond_2b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_32

    .line 727
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$2;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object v1, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    .line 729
    :cond_32
    :goto_32
    return-void
.end method
