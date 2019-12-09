.class public Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ESportMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ESportModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportMode;


# direct methods
.method public constructor <init>(Lcom/android/server/ESportMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ESportMode;

    .line 350
    iput-object p1, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 353
    if-eqz p2, :cond_4e

    .line 354
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 355
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    # invokes: Lcom/android/server/ESportMode;->isWiFiConnected()Z
    invoke-static {v0}, Lcom/android/server/ESportMode;->access$700(Lcom/android/server/ESportMode;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 356
    const-string v0, "ESportMode"

    const-string v2, "Wifi connected, force to disable telephony esport mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    # invokes: Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$600(Lcom/android/server/ESportMode;Z)V

    goto :goto_4e

    .line 359
    :cond_24
    # getter for: Lcom/android/server/ESportMode;->sEsportEnabled:Z
    invoke-static {}, Lcom/android/server/ESportMode;->access$800()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 360
    const-string v0, "ESportMode"

    const-string v1, "Wifi disconnected, need to re-enable telephony esport mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$600(Lcom/android/server/ESportMode;Z)V

    goto :goto_4e

    .line 364
    :cond_38
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 366
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    # setter for: Lcom/android/server/ESportMode;->mEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$002(Lcom/android/server/ESportMode;Z)Z

    .line 367
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    # invokes: Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$100(Lcom/android/server/ESportMode;Z)V

    .line 370
    :cond_4e
    :goto_4e
    return-void
.end method
