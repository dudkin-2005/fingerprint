.class Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "FingerprintConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/FingerprintConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/FingerprintConfig;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/FingerprintConfig;Lcom/oneplus/onlineconfig/FingerprintConfig$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/oneplus/onlineconfig/FingerprintConfig;
    .param p2, "x1"    # Lcom/oneplus/onlineconfig/FingerprintConfig$1;

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/FingerprintConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 66
    const-string v0, "FingerprintConfig"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/oneplus/onlineconfig/FingerprintConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 68
    return-void
.end method
