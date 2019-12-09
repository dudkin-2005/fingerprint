.class Lcom/android/server/OemSceneAutoBrightnessController$1;
.super Landroid/app/UserSwitchObserver;
.source "OemSceneAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneAutoBrightnessController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAutoBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneAutoBrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneAutoBrightnessController;

    .line 76
    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController$1;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$1;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    .line 80
    return-void
.end method
