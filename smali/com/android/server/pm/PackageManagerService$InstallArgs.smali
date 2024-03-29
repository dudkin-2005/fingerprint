.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field abiOverride:Ljava/lang/String;

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final traceCookie:I

.field final traceMethod:Ljava/lang/String;

.field final user:Landroid/os/UserHandle;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V
    .registers 15
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "volumeUuid"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "abiOverride"    # Ljava/lang/String;
    .param p10, "installGrantPermissions"    # [Ljava/lang/String;
    .param p11, "traceMethod"    # Ljava/lang/String;
    .param p12, "traceCookie"    # I
    .param p13, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p14, "installReason"    # I

    .line 16604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16605
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 16606
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 16607
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    .line 16608
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 16609
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    .line 16610
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->volumeUuid:Ljava/lang/String;

    .line 16611
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    .line 16612
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->instructionSets:[Ljava/lang/String;

    .line 16613
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 16614
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 16615
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    .line 16616
    iput p12, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    .line 16617
    iput-object p13, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 16618
    iput p14, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installReason:I

    .line 16619
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method doPostCopy(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 16655
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    .line 16646
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 16671
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isEphemeral()Z
    .registers 2

    .line 16667
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isExternalAsec()Z
    .registers 2

    .line 16663
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isFwdLocked()Z
    .registers 3

    .line 16659
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
