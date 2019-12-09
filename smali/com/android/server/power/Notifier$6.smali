.class Lcom/android/server/power/Notifier$6;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 689
    iget-object p1, p0, Lcom/android/server/power/Notifier$6;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 690
    return-void
.end method
