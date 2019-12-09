.class Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusIdleWhiltelistManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleWhilteListConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lcom/android/server/am/OnePlusIdleWhiltelistManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager;
    .param p2, "x1"    # Lcom/android/server/am/OnePlusIdleWhiltelistManager$1;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;-><init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 76
    iget-object v0, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$IdleWhilteListConfigUpdater;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    # invokes: Lcom/android/server/am/OnePlusIdleWhiltelistManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V

    .line 77
    return-void
.end method
