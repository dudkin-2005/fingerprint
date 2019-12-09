.class Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "x1"    # Lcom/android/server/am/OnePlusBGController$1;

    .line 549
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 8
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 557
    if-nez p1, :cond_8

    .line 558
    const-string v0, "[OnlineConfig] config is null!"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 559
    return-void

    .line 562
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1cc

    .line 563
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 565
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "Bg_HighCriteria"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 566
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_HighCriteria"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$1502(Lcom/android/server/am/OnePlusBGController;F)F

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_HighCriteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$1500(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 570
    :cond_48
    const-string v2, "Bg_HighCriteria_For_Notorious"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 571
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_HighCriteria_For_Notorious"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$1602(Lcom/android/server/am/OnePlusBGController;F)F

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_HighCriteria_For_Notorious: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$1600(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 575
    :cond_7d
    const-string v2, "Bg_GeneCriteria"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 576
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_GeneCriteria"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$1702(Lcom/android/server/am/OnePlusBGController;F)F

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_GeneCriteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$1700(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 580
    :cond_b2
    const-string v2, "Bg_GeneCriteria_For_Notorious"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 581
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_GeneCriteria_For_Notorious"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$1802(Lcom/android/server/am/OnePlusBGController;F)F

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_GeneCriteria_For_Notorious: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$1800(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 585
    :cond_e7
    const-string v2, "Bg_LowCriteria"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 586
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_LowCriteria"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$1902(Lcom/android/server/am/OnePlusBGController;F)F

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_LowCriteria: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$1900(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 590
    :cond_11c
    const-string v2, "Bg_LowCriteria_For_Notorious"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 591
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_LowCriteria_For_Notorious"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$2002(Lcom/android/server/am/OnePlusBGController;F)F

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_LowCriteria_For_Notorious: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$2000(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 595
    :cond_151
    const-string v2, "Bg_ReliefBonusmAh"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 596
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v3, "Bg_ReliefBonusmAh"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    # setter for: Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$2102(Lcom/android/server/am/OnePlusBGController;F)F

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Bg_ReliefBonusmAh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$2100(Lcom/android/server/am/OnePlusBGController;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 600
    :cond_186
    const-string v2, "Fg_BlackPkgList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 601
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 602
    .local v2, "fg_blackJsonArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3
    :try_end_19c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_19c} :catch_1cd

    .line 603
    :try_start_19c
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 604
    nop

    .line 604
    .local v0, "i":I
    :goto_1a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1bc

    .line 605
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a6

    .line 608
    .end local v0    # "i":I
    :cond_1bc
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusBGController;->updateFg_BlackUidSet(Ljava/util/HashSet;)V

    .line 609
    monitor-exit v3

    goto :goto_1cc

    :catchall_1c9
    move-exception v0

    monitor-exit v3
    :try_end_1cb
    .catchall {:try_start_19c .. :try_end_1cb} :catchall_1c9

    :try_start_1cb
    throw v0
    :try_end_1cc
    .catch Lorg/json/JSONException; {:try_start_1cb .. :try_end_1cc} :catch_1cd

    .line 614
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "fg_blackJsonArray":Lorg/json/JSONArray;
    :cond_1cc
    :goto_1cc
    goto :goto_1e2

    .line 612
    :catch_1cd
    move-exception v0

    .line 613
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 616
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1e2
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 554
    return-void
.end method
