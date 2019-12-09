.class Lcom/android/server/OnePlusPowerController$ConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2

    .line 1538
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$ConfigUpdater;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "x1"    # Lcom/android/server/OnePlusPowerController$1;

    .line 1538
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController$ConfigUpdater;-><init>(Lcom/android/server/OnePlusPowerController;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 1542
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$ConfigUpdater;->this$0:Lcom/android/server/OnePlusPowerController;

    # invokes: Lcom/android/server/OnePlusPowerController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$3100(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V

    .line 1543
    return-void
.end method
