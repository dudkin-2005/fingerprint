.class Lcom/android/server/devicepolicy/CertificateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/CertificateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/CertificateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 136
    invoke-static {}, Landroid/os/storage/StorageManager;->inCryptKeeperBounce()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;->getSendingUserId()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 140
    iget-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor$1;->this$0:Lcom/android/server/devicepolicy/CertificateMonitor;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V

    .line 141
    return-void
.end method
