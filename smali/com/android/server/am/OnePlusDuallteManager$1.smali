.class Lcom/android/server/am/OnePlusDuallteManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusDuallteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusDuallteManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusDuallteManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 222
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 224
    if-nez p2, :cond_a

    .line 225
    const-string v0, "OnePlusDuallteManager"

    const-string v1, "# mGeneralReceiver # onReceive # intent is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "com.Duallte.action.debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 233
    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "code":Ljava/lang/String;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 236
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->dumpInfo()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$400(Lcom/android/server/am/OnePlusDuallteManager;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->dumpPkgInfos()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$500(Lcom/android/server/am/OnePlusDuallteManager;)V

    goto :goto_68

    .line 238
    :cond_5b
    const-string v2, "dumpTest"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 239
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->setDuallteTest()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$600(Lcom/android/server/am/OnePlusDuallteManager;)V

    .line 241
    .end local v1    # "code":Ljava/lang/String;
    :cond_68
    :goto_68
    goto/16 :goto_137

    :cond_6a
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_db

    .line 242
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/am/OnePlusDuallteManager;->access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 243
    .local v1, "numSlots":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_da

    .line 244
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/server/am/OnePlusDuallteManager;->access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    .line 245
    .local v4, "sim1State_new":I
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/server/am/OnePlusDuallteManager;->access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 246
    .local v5, "sim2State_new":I
    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->access$800()I

    move-result v6

    if-ne v6, v4, :cond_a1

    .line 247
    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I
    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->access$900()I

    move-result v6

    if-eq v6, v5, :cond_da

    .line 248
    :cond_a1
    sget-boolean v6, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v6, :cond_bb

    const-string v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# mGeneralReceiver # onReceive # numSlots = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_bb
    iget-object v6, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/am/OnePlusDuallteManager;->access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusDuallteManager;->access$802(I)I

    .line 250
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # getter for: Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/server/am/OnePlusDuallteManager;->access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    # setter for: Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$902(I)I

    .line 251
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReadyIfNeed()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$1000(Lcom/android/server/am/OnePlusDuallteManager;)V

    .line 254
    .end local v1    # "numSlots":I
    .end local v4    # "sim1State_new":I
    .end local v5    # "sim2State_new":I
    :cond_da
    goto :goto_137

    :cond_db
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 255
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 256
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v4, :cond_10e

    const-string v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# mGeneralReceiver # onReceive # CONNECTIVITY_ACTION info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_10e
    if-eqz v1, :cond_137

    .line 258
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_137

    .line 259
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v4, v5, :cond_12e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 260
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->handleMobile4gStateReady(Ljava/lang/Boolean;)V
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$1100(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V

    goto :goto_137

    .line 262
    :cond_12e
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$1;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Lcom/android/server/am/OnePlusDuallteManager;->handleMobile4gStateReady(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->access$1100(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V

    .line 267
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_137
    :goto_137
    return-void
.end method
