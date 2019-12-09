.class Lcom/android/server/pm/PackageManagerService$DozeWhitelistConfigUpdater;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeWhitelistConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 3843
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DozeWhitelistConfigUpdater;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 3846
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$DozeWhitelistConfigUpdater;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->resolveDozeWhitelistConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$2000(Lcom/android/server/pm/PackageManagerService;Lorg/json/JSONArray;)V

    .line 3847
    return-void
.end method
