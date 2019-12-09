.class Lcom/android/server/OnePlusPowerController$4;
.super Landroid/database/ContentObserver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusPowerController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 503
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 506
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v0, "doze_mode_policy"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 508
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 509
    # getter for: Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_mode_policy"

    .line 508
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    # setter for: Lcom/android/server/OnePlusPowerController;->mAggressive:Z
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1102(Z)Z

    goto :goto_7a

    .line 512
    :cond_39
    const-string/jumbo v0, "optimal_power_save_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 513
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 514
    # getter for: Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    const/4 v3, -0x1

    .line 513
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v0, v1}, Lcom/android/server/OnePlusPowerController;->access$602(Lcom/android/server/OnePlusPowerController;I)I

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "oc"

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1300(Lcom/android/server/OnePlusPowerController;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v1

    const-string/jumbo v2, "usersleep"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 526
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7a
    :goto_7a
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_UPDATE_POLICY: mAggressive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/OnePlusPowerController;->mAggressive:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOPSMEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 527
    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_ae
    return-void
.end method
