.class Lcom/android/server/am/Connor$6;
.super Landroid/content/BroadcastReceiver;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Connor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 359
    iput-object p1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 362
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 364
    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/am/Connor;->setScreen(Z)V
    invoke-static {v1, v3}, Lcom/android/server/am/Connor;->access$1600(Lcom/android/server/am/Connor;Z)V

    .line 365
    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    goto :goto_87

    .line 366
    :cond_19
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 367
    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    goto :goto_87

    .line 368
    :cond_27
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 369
    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->setScreen(Z)V
    invoke-static {v1, v2}, Lcom/android/server/am/Connor;->access$1600(Lcom/android/server/am/Connor;Z)V

    goto :goto_87

    .line 370
    :cond_35
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 371
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 372
    .local v1, "state":I
    const/16 v3, 0x15be

    if-ne v1, v3, :cond_6c

    .line 374
    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->triggerTraining()V
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1100(Lcom/android/server/am/Connor;)V

    .line 375
    # getter for: Lcom/android/server/am/Connor;->mIsAlpha:Z
    invoke-static {}, Lcom/android/server/am/Connor;->access$1700()Z

    move-result v2

    if-nez v2, :cond_5a

    # getter for: Lcom/android/server/am/Connor;->mIsBeta:Z
    invoke-static {}, Lcom/android/server/am/Connor;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 376
    :cond_5a
    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/am/Connor;->access$1900(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_87

    .line 378
    :cond_6c
    const/16 v3, 0x1e6c

    if-ne v1, v3, :cond_87

    .line 380
    iget-object v3, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    .line 383
    :try_start_75
    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->applyNNModel()V
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2000(Lcom/android/server/am/Connor;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7a} :catch_7b

    .line 387
    goto :goto_87

    .line 384
    :catch_7b
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Connor"

    const-string/jumbo v4, "got exception while apply"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    .end local v1    # "state":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    return-void
.end method
