.class Lcom/android/server/OemSceneButtonController$1;
.super Landroid/app/UserSwitchObserver;
.source "OemSceneButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneButtonController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneButtonController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneButtonController;

    .line 409
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

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

    .line 412
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$1;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneButtonController;->updateFunctionRule(I)V

    .line 413
    return-void
.end method
