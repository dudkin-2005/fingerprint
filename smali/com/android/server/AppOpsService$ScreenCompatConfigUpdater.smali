.class Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenCompatConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .line 612
    iput-object p1, p0, Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 615
    iget-object v0, p0, Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;->this$0:Lcom/android/server/AppOpsService;

    # invokes: Lcom/android/server/AppOpsService;->resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->access$100(Lcom/android/server/AppOpsService;Lorg/json/JSONArray;)V

    .line 616
    return-void
.end method
