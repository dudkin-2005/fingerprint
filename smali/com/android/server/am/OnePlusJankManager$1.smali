.class Lcom/android/server/am/OnePlusJankManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusJankManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusJankManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 274
    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 276
    if-nez p2, :cond_3

    .line 277
    return-void

    .line 280
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 282
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # getter for: Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z
    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$700(Lcom/android/server/am/OnePlusJankManager;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 283
    # getter for: Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->access$200()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 284
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->saveJankFromHashMapToDisk()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusJankManager;->access$800(Lcom/android/server/am/OnePlusJankManager;)V

    .line 285
    monitor-exit v1

    goto :goto_53

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v2

    .line 287
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # setter for: Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->access$702(Lcom/android/server/am/OnePlusJankManager;Z)Z

    goto :goto_53

    .line 289
    :cond_2e
    const-string/jumbo v1, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 290
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # getter for: Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z
    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->access$900(Lcom/android/server/am/OnePlusJankManager;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 291
    # getter for: Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->access$200()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 292
    :try_start_44
    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # invokes: Lcom/android/server/am/OnePlusJankManager;->uploadMDM()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusJankManager;->access$1000(Lcom/android/server/am/OnePlusJankManager;)V

    .line 293
    monitor-exit v1

    goto :goto_53

    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4b

    throw v2

    .line 295
    :cond_4e
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager$1;->this$0:Lcom/android/server/am/OnePlusJankManager;

    # setter for: Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->access$902(Lcom/android/server/am/OnePlusJankManager;Z)Z

    .line 298
    :cond_53
    :goto_53
    return-void
.end method
