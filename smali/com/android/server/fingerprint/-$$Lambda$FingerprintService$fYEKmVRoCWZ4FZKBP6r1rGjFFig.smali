.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$fYEKmVRoCWZ4FZKBP6r1rGjFFig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$fYEKmVRoCWZ4FZKBP6r1rGjFFig;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$fYEKmVRoCWZ4FZKBP6r1rGjFFig;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->lambda$getFingerprintInScreenDaemon$0(Lcom/android/server/fingerprint/FingerprintService;J)V

    return-void
.end method
