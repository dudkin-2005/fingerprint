.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 0

    .line 119
    const/4 p1, -0x1

    return p1
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0

    .line 146
    return-void
.end method

.method public forceSecurityLogs()J
    .locals 2

    .line 156
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 0

    .line 78
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 104
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 99
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 0

    .line 151
    const/4 p1, 0x0

    return p1
.end method

.method public isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 142
    const/4 p1, 0x0

    return p1
.end method

.method public isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 0

    .line 82
    const/4 p1, 0x1

    return p1
.end method

.method public removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 0

    .line 129
    const/4 p1, 0x0

    return p1
.end method

.method public setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 161
    return-void
.end method

.method public setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    .line 95
    return-void
.end method

.method public setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .locals 0

    .line 87
    const/4 p1, 0x0

    return p1
.end method

.method public setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    return-object p2
.end method

.method public setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 138
    return-void
.end method

.method public setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    .line 92
    return-void
.end method

.method public setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    return-void
.end method

.method abstract systemReady(I)V
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 69
    return-void
.end method

.method public updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 0

    .line 124
    const/4 p1, 0x0

    return p1
.end method
