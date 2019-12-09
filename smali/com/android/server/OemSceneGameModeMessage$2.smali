.class Lcom/android/server/OemSceneGameModeMessage$2;
.super Ljava/lang/Object;
.source "OemSceneGameModeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeMessage;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeMessage;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeMessage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeMessage;

    .line 115
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .line 119
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, v1, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    .local v0, "esport_mode_status":Z
    if-nez v0, :cond_54

    .line 124
    # getter for: Lcom/android/server/OemSceneGameModeMessage;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneGameModeMessage;->access$000()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "OemSceneGameModeMessage"

    const-string v2, "add small alert enable esport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_24
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    # getter for: Lcom/android/server/OemSceneGameModeMessage;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeMessage;->access$100(Lcom/android/server/OemSceneGameModeMessage;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v1

    if-nez v1, :cond_3c

    .line 126
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    new-instance v2, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    iget-object v4, v4, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    const-string v5, "RBS8PPYT2W"

    invoke-direct {v2, v4, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/android/server/OemSceneGameModeMessage;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v1, v2}, Lcom/android/server/OemSceneGameModeMessage;->access$102(Lcom/android/server/OemSceneGameModeMessage;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 128
    :cond_3c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    # getter for: Lcom/android/server/OemSceneGameModeMessage;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v2}, Lcom/android/server/OemSceneGameModeMessage;->access$100(Lcom/android/server/OemSceneGameModeMessage;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v2

    const-string v4, "esports_start"

    invoke-virtual {v2, v4, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_54
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeMessage$2;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, v1, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enable_trigger"

    const-string v4, "1"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 135
    return-void
.end method
