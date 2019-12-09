.class Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusRamBoostManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 631
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 634
    # getter for: Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    # invokes: Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1200(Lcom/android/server/am/OnePlusRamBoostManager;Lorg/json/JSONArray;)V

    .line 636
    return-void
.end method
