.class Lcom/android/server/OemSceneModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 978
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 981
    # getter for: Lcom/android/server/OemSceneModeController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_3c

    .line 983
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_status_manual"

    const-string v3, "force-off"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_f7

    .line 984
    :cond_3c
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 986
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # setter for: Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/OemSceneModeController;->access$1802(Lcom/android/server/OemSceneModeController;Z)Z

    .line 987
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)V

    goto/16 :goto_f7

    .line 988
    :cond_55
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 989
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mGameModeManual:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1900(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1800(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 990
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$2000(Lcom/android/server/OemSceneModeController;ZZ)V

    .line 991
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # setter for: Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z
    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->access$1802(Lcom/android/server/OemSceneModeController;Z)Z

    goto :goto_f7

    .line 993
    :cond_85
    const-string v0, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 994
    const-string v0, "1"

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$2100(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 997
    .local v0, "esport_mode_status":Z
    if-nez v0, :cond_ca

    .line 999
    # getter for: Lcom/android/server/OemSceneModeController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_b6

    const-string v2, "OemSceneModeController"

    const-string v3, "add notification enable esport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_b6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1001
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v3, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    const-string v4, "esports_start"

    # invokes: Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/OemSceneModeController;->access$2200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1004
    .end local v2    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_ca
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enable_trigger"

    const-string v4, "1"

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1006
    .end local v0    # "esport_mode_status":Z
    goto :goto_f7

    :cond_d8
    const-string v0, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1007
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$2300(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/OemSceneGameModePanel;->showDialog(Z)V

    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v0, "it_close_sys_dialog":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1011
    .end local v0    # "it_close_sys_dialog":Landroid/content/Intent;
    :cond_f7
    :goto_f7
    return-void
.end method
