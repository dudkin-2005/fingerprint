.class Lcom/android/server/am/OemSceneWiFiBoostController$1;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 277
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$1;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$1;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    const-string v1, "2"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$1200(Lcom/android/server/am/OemSceneWiFiBoostController;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    return-void
.end method
