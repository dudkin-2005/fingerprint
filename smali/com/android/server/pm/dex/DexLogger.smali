.class public Lcom/android/server/pm/dex/DexLogger;
.super Ljava/lang/Object;
.source "DexLogger.java"

# interfaces
.implements Lcom/android/server/pm/dex/DexManager$Listener;


# static fields
.field private static final DCL_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DexLogger"


# instance fields
.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInstallLock"
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 64
    iput-object p2, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 65
    iput-object p3, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static getListener(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)Lcom/android/server/pm/dex/DexManager$Listener;
    .locals 1

    .line 58
    new-instance v0, Lcom/android/server/pm/dex/DexLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/dex/DexLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onReconcileSecondaryDexFile(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Ljava/lang/String;I)V
    .locals 8

    .line 74
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 76
    nop

    .line 77
    iget-object v7, p0, Lcom/android/server/pm/dex/DexLogger;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object v1, p3

    move v3, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 81
    :catch_0
    move-exception p1

    .line 82
    :try_start_1
    const-string p4, "DexLogger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got InstallerException when hashing dex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 p1, 0x0

    :goto_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-nez p1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 91
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object p3

    .line 93
    array-length p4, p1

    const/16 v0, 0x20

    if-ne p4, v0, :cond_1

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 97
    :cond_1
    invoke-virtual {p0, v6, p3}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object p1

    .line 101
    new-instance p4, Landroid/util/ArraySet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p4, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/dex/DexLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 104
    invoke-interface {v1, v0, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 106
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v6, :cond_2

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :cond_2
    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    .line 112
    :goto_2
    goto :goto_1

    .line 113
    :cond_3
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/dex/DexLogger;->writeDclEvent(ILjava/lang/String;)V

    .line 115
    goto :goto_3

    .line 117
    :cond_4
    return-void

    .line 85
    :goto_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method writeDclEvent(ILjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dcl"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const p1, 0x534e4554

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 122
    return-void
.end method
