.class Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V
    .locals 0

    .line 2935
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2940
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;->this$0:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->access$500(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)Ljava/util/concurrent/SynchronousQueue;

    move-result-object p1

    const-wide/16 p3, 0x5

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2943
    nop

    .line 2944
    return-void

    .line 2941
    :catch_0
    move-exception p1

    .line 2942
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
