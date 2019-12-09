.class Lcom/android/server/fingerprint/FingerprintService$7;
.super Lcom/android/server/fingerprint/RemovalClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .locals 11

    .line 712
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/RemovalClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    return-object v0
.end method

.method public notifyUserActivity()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 716
    return-void
.end method
