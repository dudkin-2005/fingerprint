.class Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickPayConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 3091
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 3094
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V

    .line 3095
    return-void
.end method
