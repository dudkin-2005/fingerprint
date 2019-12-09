.class Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomIntentReceiver"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mToken:I

.field private final mWhat:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 689
    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    .line 690
    iput p4, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    .line 691
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    .line 692
    invoke-static {p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/IntentFilter;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 693
    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 695
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 701
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mWhat:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->mToken:I

    invoke-virtual {p2, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 702
    :cond_0
    return-void
.end method
