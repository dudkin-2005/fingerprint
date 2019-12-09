.class Lcom/android/server/am/UserController$4;
.super Landroid/content/IIntentReceiver$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$3(ILcom/android/server/am/UserState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$performReceive$0(Lcom/android/server/am/UserController$4;ILcom/android/server/am/UserState;)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;)V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 671
    iget-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-static {p1}, Lcom/android/server/am/UserController;->access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object p1

    iget p2, p0, Lcom/android/server/am/UserController$4;->val$userId:I

    iget-object p3, p0, Lcom/android/server/am/UserController$4;->val$uss:Lcom/android/server/am/UserState;

    new-instance p4, Lcom/android/server/am/-$$Lambda$UserController$4$P3Sj7pxBXLC7k_puCIIki2uVgGE;

    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/am/-$$Lambda$UserController$4$P3Sj7pxBXLC7k_puCIIki2uVgGE;-><init>(Lcom/android/server/am/UserController$4;ILcom/android/server/am/UserState;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method
