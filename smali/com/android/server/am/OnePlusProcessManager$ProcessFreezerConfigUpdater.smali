.class Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessFreezerConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 4230
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 4233
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusProcessManager;->access$4600(Lcom/android/server/am/OnePlusProcessManager;Lorg/json/JSONArray;)V

    .line 4234
    return-void
.end method
