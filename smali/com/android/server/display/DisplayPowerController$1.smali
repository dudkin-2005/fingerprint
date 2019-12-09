.class Lcom/android/server/display/DisplayPowerController$1;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 649
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p2, p2, Lcom/android/server/display/DisplayPowerController;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_off_animation"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayPowerController;->access$002(Lcom/android/server/display/DisplayPowerController;I)I

    .line 652
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->access$000(Lcom/android/server/display/DisplayPowerController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenStateAnimator(I)V

    .line 655
    :cond_0
    return-void
.end method
