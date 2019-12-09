.class Lcom/android/server/policy/BarController$BarHandler;
.super Landroid/os/Handler;
.source "BarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BarController;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BarController;Lcom/android/server/policy/BarController$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/policy/BarController$BarHandler;-><init>(Lcom/android/server/policy/BarController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 359
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-static {p1}, Lcom/android/server/policy/BarController;->access$200(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lcom/android/server/policy/BarController$BarHandler;->this$0:Lcom/android/server/policy/BarController;

    invoke-static {p1}, Lcom/android/server/policy/BarController;->access$200(Lcom/android/server/policy/BarController;)Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;->onBarVisibilityChanged(Z)V

    .line 364
    :cond_2
    :goto_1
    return-void
.end method
