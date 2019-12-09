.class Lcom/android/server/am/UserController$5;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$5;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 694
    iget-object p1, p0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    invoke-static {p1}, Lcom/android/server/am/UserController;->access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/UserController$5$1;

    invoke-direct {p2, p0}, Lcom/android/server/am/UserController$5$1;-><init>(Lcom/android/server/am/UserController$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 700
    return-void
.end method
