.class Lcom/android/server/OemSceneGameModePanel$8;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->listenForCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 457
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$8;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 460
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "state":Ljava/lang/String;
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new call status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 465
    :cond_2e
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$8;->this$0:Lcom/android/server/OemSceneGameModePanel;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/OemSceneGameModePanel;->hide(Z)V
    invoke-static {v1, v2}, Lcom/android/server/OemSceneGameModePanel;->access$400(Lcom/android/server/OemSceneGameModePanel;Z)V

    .line 467
    :cond_34
    return-void
.end method
