.class Lcom/android/server/pm/PackageManagerService$ScanRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanRequest"
.end annotation


# instance fields
.field public final disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final isPlatformPackage:Z

.field public final oldPkg:Landroid/content/pm/PackageParser$Package;

.field public final oldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final originalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final parseFlags:I

.field public final pkg:Landroid/content/pm/PackageParser$Package;

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final realPkgName:Ljava/lang/String;

.field public final scanFlags:I

.field public final sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/SharedUserSetting;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;)V
    .locals 0

    .line 10158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10159
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 10160
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkg:Landroid/content/pm/PackageParser$Package;

    .line 10161
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 10162
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    .line 10163
    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p1, p4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 10164
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 10165
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->originalPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 10166
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->realPkgName:Ljava/lang/String;

    .line 10167
    iput p8, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->parseFlags:I

    .line 10168
    iput p9, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->scanFlags:I

    .line 10169
    iput-boolean p10, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->isPlatformPackage:Z

    .line 10170
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->user:Landroid/os/UserHandle;

    .line 10171
    return-void
.end method
