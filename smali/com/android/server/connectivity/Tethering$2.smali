.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/os/ResultReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    iput p3, p0, Lcom/android/server/connectivity/Tethering$2;->val$type:I

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 543
    if-nez p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    iget p2, p0, Lcom/android/server/connectivity/Tethering$2;->val$type:I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V

    goto :goto_0

    .line 546
    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {p2, v0, p1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 548
    :goto_0
    return-void
.end method
