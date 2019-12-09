.class public Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockAutoBackLightSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 108
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 112
    # getter for: Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneAutoBrightnessController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] Block auto backlight Settings changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    iget-object v1, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # getter for: Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I
    invoke-static {v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$100(Lcom/android/server/OemSceneAutoBrightnessController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    .line 114
    return-void
.end method
