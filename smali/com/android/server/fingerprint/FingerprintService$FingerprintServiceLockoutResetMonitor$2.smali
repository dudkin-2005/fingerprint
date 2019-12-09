.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1286
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1289
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->releaseWakelock()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->access$1600(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    .line 1291
    return-void
.end method
