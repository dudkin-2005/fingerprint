.class Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 6353
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 6356
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->parseCaptivePortalConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;Lorg/json/JSONArray;)V

    .line 6357
    return-void
.end method
