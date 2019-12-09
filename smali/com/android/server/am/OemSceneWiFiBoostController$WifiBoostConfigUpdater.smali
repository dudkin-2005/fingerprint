.class Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBoostConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 129
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 132
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    # invokes: Lcom/android/server/am/OemSceneWiFiBoostController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$000(Lcom/android/server/am/OemSceneWiFiBoostController;Lorg/json/JSONArray;)V

    .line 133
    return-void
.end method
