.class Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceIdleConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 2054
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 2057
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$3200(Lcom/android/server/DeviceIdleController;Lorg/json/JSONArray;)V

    .line 2058
    return-void
.end method
