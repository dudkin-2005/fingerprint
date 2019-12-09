.class public Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoBackLightSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 119
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 123
    # getter for: Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneAutoBrightnessController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] Auto backlight Settings changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_d
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # getter for: Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z
    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$200(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 125
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # setter for: Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z
    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$202(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z

    goto :goto_37

    .line 127
    :cond_1c
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # getter for: Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z
    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$300(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 128
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # invokes: Lcom/android/server/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z
    invoke-static {v0}, Lcom/android/server/OemSceneAutoBrightnessController;->access$400(Lcom/android/server/OemSceneAutoBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 130
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # invokes: Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V
    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$500(Lcom/android/server/OemSceneAutoBrightnessController;Z)V

    goto :goto_37

    .line 134
    :cond_32
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    # setter for: Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z
    invoke-static {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$302(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z

    .line 137
    :cond_37
    :goto_37
    return-void
.end method
