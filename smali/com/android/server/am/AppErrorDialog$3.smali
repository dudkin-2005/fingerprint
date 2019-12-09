.class Lcom/android/server/am/AppErrorDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 240
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/android/server/am/AppErrorDialog$3;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {p1}, Lcom/android/server/am/AppErrorDialog;->cancel()V

    .line 243
    :cond_0
    return-void
.end method
