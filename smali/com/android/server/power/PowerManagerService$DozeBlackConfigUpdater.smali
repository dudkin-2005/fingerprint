.class Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeBlackConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 4298
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 4302
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DozeBlackConfigUpdater;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->resolveBlackConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;Lorg/json/JSONArray;)V

    .line 4303
    return-void
.end method
