.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RestoredPermissionGrant;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_REVOKE_ON_UPGRADE:Ljava/lang/String; = "rou"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_USER_SET:Ljava/lang/String; = "set"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERMISSION_ENTRY:Ljava/lang/String; = "perm"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RESTORED_RUNTIME_PERMISSIONS:Ljava/lang/String; = "restored-perms"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final USER_RUNTIME_GRANT_MASK:I = 0xb

.field private static mFirstAvailableUid:I

.field private static sPackageShieldGuestMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultDialerApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredUserGrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/Settings$RestoredPermissionGrant;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus.carmode"

    const-string v2, "com.oneplus.brickmode"

    const-string v3, "com.oneplus.speechassist"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/Settings;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    .line 330
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3733
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3734
    const/high16 v1, 0x10000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3735
    const/high16 v1, 0x20000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    .line 3736
    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4503
    const/16 v1, 0x1e

    new-array v2, v1, [Ljava/lang/Object;

    .line 4504
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "SYSTEM"

    aput-object v4, v2, v3

    .line 4505
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "DEBUGGABLE"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 4506
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "HAS_CODE"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    .line 4507
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v2, v10

    const-string v9, "PERSISTENT"

    const/4 v11, 0x7

    aput-object v9, v2, v11

    .line 4508
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v7

    const-string v12, "FACTORY_TEST"

    const/16 v13, 0x9

    aput-object v12, v2, v13

    .line 4509
    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v2, v15

    const-string v14, "ALLOW_TASK_REPARENTING"

    const/16 v16, 0xb

    aput-object v14, v2, v16

    .line 4510
    const/16 v14, 0x40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xc

    aput-object v14, v2, v17

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const/16 v17, 0xd

    aput-object v14, v2, v17

    .line 4511
    const/16 v14, 0x80

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xe

    aput-object v14, v2, v17

    const-string v14, "UPDATED_SYSTEM_APP"

    const/16 v17, 0xf

    aput-object v14, v2, v17

    .line 4512
    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    const-string v14, "TEST_ONLY"

    const/16 v17, 0x11

    aput-object v14, v2, v17

    .line 4513
    const/16 v14, 0x4000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x12

    aput-object v14, v2, v17

    const-string v14, "VM_SAFE_MODE"

    const/16 v17, 0x13

    aput-object v14, v2, v17

    .line 4514
    const v14, 0x8000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x14

    aput-object v14, v2, v17

    const-string v14, "ALLOW_BACKUP"

    const/16 v17, 0x15

    aput-object v14, v2, v17

    .line 4515
    const/high16 v14, 0x10000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x16

    aput-object v14, v2, v17

    const-string v14, "KILL_AFTER_RESTORE"

    const/16 v17, 0x17

    aput-object v14, v2, v17

    .line 4516
    const/high16 v14, 0x20000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x18

    aput-object v14, v2, v17

    const-string v14, "RESTORE_ANY_VERSION"

    const/16 v17, 0x19

    aput-object v14, v2, v17

    .line 4517
    const/high16 v14, 0x40000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1a

    aput-object v14, v2, v17

    const-string v14, "EXTERNAL_STORAGE"

    const/16 v17, 0x1b

    aput-object v14, v2, v17

    .line 4518
    const/high16 v14, 0x100000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1c

    aput-object v14, v2, v17

    const-string v14, "LARGE_HEAP"

    const/16 v17, 0x1d

    aput-object v14, v2, v17

    sput-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4521
    const/16 v2, 0x28

    new-array v2, v2, [Ljava/lang/Object;

    .line 4522
    const/16 v14, 0x400

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v2, v3

    .line 4523
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v2, v6

    .line 4524
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v2, v8

    .line 4525
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v2, v11

    .line 4526
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v2, v13

    .line 4527
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v15

    const-string v0, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v0, v2, v16

    .line 4528
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v2, v4

    const-string v0, "DIRECT_BOOT_AWARE"

    const/16 v4, 0xd

    aput-object v0, v2, v4

    .line 4529
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v2, v4

    const-string v0, "FORWARD_LOCK"

    const/16 v4, 0xf

    aput-object v0, v2, v4

    .line 4530
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "HAS_DOMAIN_URLS"

    const/16 v4, 0x11

    aput-object v0, v2, v4

    .line 4531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const-string v0, "HIDDEN"

    const/16 v3, 0x13

    aput-object v0, v2, v3

    .line 4532
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v2, v3

    const-string v0, "EPHEMERAL"

    const/16 v3, 0x15

    aput-object v0, v2, v3

    .line 4533
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v2, v3

    const-string v0, "ISOLATED_SPLIT_LOADING"

    const/16 v3, 0x17

    aput-object v0, v2, v3

    .line 4534
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v2, v3

    const-string v0, "OEM"

    const/16 v3, 0x19

    aput-object v0, v2, v3

    .line 4535
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    const-string v0, "PARTIALLY_DIRECT_BOOT_AWARE"

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    .line 4536
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    const-string v0, "PRIVILEGED"

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    .line 4537
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "REQUIRED_FOR_SYSTEM_USER"

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    .line 4538
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v12

    const-string v0, "STATIC_SHARED_LIBRARY"

    const/16 v1, 0x21

    aput-object v0, v2, v1

    .line 4539
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v2, v1

    const-string v0, "VENDOR"

    const/16 v1, 0x23

    aput-object v0, v2, v1

    .line 4540
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v2, v1

    const-string v0, "PRODUCT"

    const/16 v1, 0x25

    aput-object v0, v2, v1

    .line 4541
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v2, v1

    const-string v0, "VIRTUAL_PRELOAD"

    const/16 v1, 0x27

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4521
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 4
    .param p1, "permissions"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 438
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 8
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "permission"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 289
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 292
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 295
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 326
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 382
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 389
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 398
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 412
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 415
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    .line 418
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 433
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 442
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 443
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 444
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 446
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 452
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 453
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 454
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 457
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "kernelDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_113

    move-object v1, v0

    goto :goto_114

    :cond_113
    const/4 v1, 0x0

    :goto_114
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 461
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 462
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 463
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings;

    .line 133
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 8
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 1018
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    if-eqz p2, :cond_8b

    .line 1020
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x6

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_45

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1025
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_82

    .line 1026
    :cond_45
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v2, :cond_82

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1034
    :cond_82
    :goto_82
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1035
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1036
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1041
    :cond_8b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v0

    .line 1042
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_9d

    .line 1043
    if-eqz v0, :cond_a6

    if-eq v0, p1, :cond_a6

    .line 1044
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_a6

    .line 1047
    :cond_9d
    if-eqz v0, :cond_a6

    if-eq v0, p2, :cond_a6

    .line 1048
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    .line 1052
    :cond_a6
    :goto_a6
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1053
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_e4

    .line 1054
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_da

    .line 1055
    const-string v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying restored IVI for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_da
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1060
    :cond_e4
    return-void
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1198
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_6

    .line 1199
    return v0

    .line 1202
    :cond_6
    const/4 v1, 0x6

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_49

    .line 1203
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1204
    .local v2, "N":I
    add-int/lit16 v3, p1, -0x2710

    .line 1205
    .local v3, "index":I
    :goto_13
    if-lt v3, v2, :cond_1e

    .line 1206
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1209
    :cond_1e
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding duplicate user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1213
    return v0

    .line 1215
    :cond_43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .end local v2    # "N":I
    .end local v3    # "index":I
    goto :goto_73

    .line 1217
    :cond_49
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1221
    return v0

    .line 1223
    :cond_6e
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1225
    :goto_73
    const/4 v0, 0x1

    return v0
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 35
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3496
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILandroid/content/Intent;IZ)I

    move-result v1

    .line 3497
    .end local p3    # "flags":I
    .local v1, "flags":I
    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 3498
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 3497
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 3499
    .local v3, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_47

    const-string v0, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queried "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :cond_47
    const/4 v0, 0x0

    .line 3502
    .local v0, "systemMatch":I
    const/4 v5, 0x0

    .line 3503
    .local v5, "thirdPartyMatch":I
    if-eqz v3, :cond_271

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_271

    .line 3504
    const/4 v6, 0x0

    .line 3505
    .local v6, "haveAct":Z
    const/4 v12, 0x0

    .line 3506
    .local v12, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ComponentName;

    .line 3507
    .local v13, "set":[Landroid/content/ComponentName;
    move v15, v0

    move v0, v4

    .local v0, "i":I
    .local v15, "systemMatch":I
    :goto_5c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_138

    .line 3508
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3509
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v11, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v13, v0

    .line 3510
    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_b6

    .line 3511
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v2, v5, :cond_130

    .line 3515
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_b2

    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": non-system!"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    :cond_b2
    aget-object v12, v13, v0

    .line 3518
    goto/16 :goto_138

    .line 3520
    :cond_b6
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 3521
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 3522
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_f9

    const-string v2, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": default!"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    :cond_f9
    const/4 v2, 0x1

    .line 3525
    .end local v6    # "haveAct":Z
    .local v2, "haveAct":Z
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3507
    .end local v15    # "systemMatch":I
    .local v4, "systemMatch":I
    move v6, v2

    move v15, v4

    goto :goto_130

    .line 3527
    .end local v2    # "haveAct":Z
    .end local v4    # "systemMatch":I
    .restart local v6    # "haveAct":Z
    .restart local v15    # "systemMatch":I
    :cond_105
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_130

    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": skipped"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_130
    :goto_130
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_5c

    .line 3531
    .end local v0    # "i":I
    :cond_138
    :goto_138
    if-eqz v12, :cond_13d

    if-ge v5, v15, :cond_13d

    .line 3536
    const/4 v12, 0x0

    .line 3538
    :cond_13d
    if-eqz v6, :cond_1fb

    if-nez v12, :cond_1fb

    .line 3539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    .line 3540
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_154

    .line 3541
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3543
    :cond_154
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_172

    .line 3544
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_162
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_172

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3545
    .local v4, "cat":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3546
    .end local v4    # "cat":Ljava/lang/String;
    goto :goto_162

    .line 3548
    :cond_172
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_17c

    .line 3549
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3551
    :cond_17c
    if-eqz v8, :cond_181

    .line 3552
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3554
    :cond_181
    if-eqz p6, :cond_18e

    .line 3555
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v2, v0, v11}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3557
    :cond_18e
    if-eqz v9, :cond_193

    .line 3558
    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3560
    :cond_193
    if-eqz v10, :cond_198

    .line 3561
    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3563
    :cond_198
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d5

    .line 3565
    :try_start_19e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1a5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_19e .. :try_end_1a5} :catch_1ab

    .line 3568
    nop

    .line 3570
    move/from16 v22, v1

    move-object/from16 v1, p4

    goto :goto_1d9

    .line 3566
    :catch_1ab
    move-exception v0

    .line 3567
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v11, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    const-string v0, "Malformed mimetype "

    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .local v21, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v1

    move-object/from16 v1, p4

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v1    # "flags":I
    .local v22, "flags":I
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v21    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    goto :goto_1d9

    .line 3570
    .end local v22    # "flags":I
    .restart local v1    # "flags":I
    :cond_1d5
    move/from16 v22, v1

    move-object/from16 v1, p4

    .end local v1    # "flags":I
    .restart local v22    # "flags":I
    :goto_1d9
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v19, 0x1

    move-object v14, v0

    move v11, v15

    move-object v15, v2

    .end local v15    # "systemMatch":I
    .local v11, "systemMatch":I
    move/from16 v16, v11

    move-object/from16 v17, v13

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3571
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v14, p0

    move/from16 v15, p9

    move-object/from16 v23, v2

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .local v23, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3572
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v23    # "filter":Landroid/content/IntentFilter;
    nop

    .line 3588
    move-object/from16 v24, v3

    goto/16 :goto_270

    .line 3572
    .end local v11    # "systemMatch":I
    .end local v22    # "flags":I
    .restart local v1    # "flags":I
    .restart local v15    # "systemMatch":I
    :cond_1fb
    move-object/from16 v14, p0

    move/from16 v22, v1

    move v11, v15

    move-object/from16 v1, p4

    move/from16 v15, p9

    .end local v1    # "flags":I
    .end local v15    # "systemMatch":I
    .restart local v11    # "systemMatch":I
    .restart local v22    # "flags":I
    if-nez v12, :cond_24c

    .line 3573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3574
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3576
    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3578
    const-string v2, "; possible matches are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_226
    move/from16 v2, v20

    .end local v20    # "i":I
    .local v2, "i":I
    move-object/from16 v24, v3

    array-length v3, v13

    .end local v3    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-ge v2, v3, :cond_242

    .line 3580
    if-lez v2, :cond_234

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    :cond_234
    aget-object v3, v13, v2

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "i":I
    .restart local v20    # "i":I
    move-object/from16 v3, v24

    goto :goto_226

    .line 3583
    .end local v20    # "i":I
    :cond_242
    const-string v2, "PackageSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_270

    .line 3585
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_24c
    move-object/from16 v24, v3

    .end local v3    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting preferred "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; found third party match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3586
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3585
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    .end local v6    # "haveAct":Z
    .end local v12    # "haveNonSys":Landroid/content/ComponentName;
    .end local v13    # "set":[Landroid/content/ComponentName;
    :goto_270
    goto :goto_29e

    .line 3589
    .end local v11    # "systemMatch":I
    .end local v22    # "flags":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "systemMatch":I
    .restart local v1    # "flags":I
    .restart local v3    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_271
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v22, v1

    move-object/from16 v24, v3

    move-object/from16 v1, p4

    .end local v1    # "flags":I
    .end local v3    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v22    # "flags":I
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3589
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    move v11, v0

    .end local v0    # "systemMatch":I
    .restart local v11    # "systemMatch":I
    :goto_29e
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 31
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    move-object/from16 v0, p2

    .line 3386
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_1a

    .line 3387
    const-string v1, "PackageSettings"

    const-string v2, "Processing preferred:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x3

    const-string v3, "PackageSettings"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3390
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3391
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3393
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3394
    move v14, v2

    move v2, v3

    .local v2, "i":I
    .local v14, "flags":I
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v2, v4, :cond_47

    .line 3395
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    .line 3396
    .local v4, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3397
    const/high16 v5, 0x10000

    or-int/2addr v14, v5

    goto :goto_44

    .line 3399
    :cond_41
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3394
    .end local v4    # "cat":Ljava/lang/String;
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 3403
    .end local v2    # "i":I
    :cond_47
    const/4 v2, 0x1

    .line 3404
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3406
    .local v4, "hasSchemes":Z
    move/from16 v16, v2

    move v2, v3

    move v15, v4

    .end local v4    # "hasSchemes":Z
    .local v2, "ischeme":I
    .local v15, "hasSchemes":Z
    .local v16, "doNonData":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v2, v4, :cond_1b4

    .line 3407
    const/4 v4, 0x1

    .line 3408
    .local v4, "doScheme":Z
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3409
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_62

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_62

    .line 3410
    const/4 v5, 0x1

    .line 3412
    .end local v15    # "hasSchemes":Z
    .local v5, "hasSchemes":Z
    move v15, v5

    .end local v5    # "hasSchemes":Z
    .restart local v15    # "hasSchemes":Z
    :cond_62
    move/from16 v17, v4

    move v4, v3

    .local v4, "issp":I
    .local v17, "doScheme":Z
    :goto_65
    move v12, v4

    .end local v4    # "issp":I
    .local v12, "issp":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    if-ge v12, v4, :cond_b3

    .line 3413
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v4

    .line 3414
    .local v11, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3415
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    .line 3416
    .local v10, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3417
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v4

    .line 3418
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3419
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v20, v9

    move-object v9, v13

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v20, "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v10

    .end local v10    # "ssp":Landroid/os/PatternMatcher;
    .local v21, "ssp":Landroid/os/PatternMatcher;
    move-object/from16 v22, v11

    move-object/from16 v11, v18

    .end local v11    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v18, v12

    move-object/from16 v12, v19

    .end local v12    # "issp":I
    .local v18, "issp":I
    move-object v3, v13

    move/from16 v13, p4

    .end local v13    # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3421
    const/16 v17, 0x0

    .line 3412
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "ssp":Landroid/os/PatternMatcher;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "issp":I
    .restart local v4    # "issp":I
    move-object v13, v3

    const/4 v3, 0x0

    goto :goto_65

    .line 3423
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "issp":I
    .restart local v13    # "scheme":Ljava/lang/String;
    :cond_b3
    move-object v3, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v3    # "scheme":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "iauth":I
    :goto_b5
    move v13, v4

    .end local v4    # "iauth":I
    .local v13, "iauth":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-ge v13, v4, :cond_17a

    .line 3424
    const/4 v4, 0x1

    .line 3425
    .local v4, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v12

    .line 3426
    .local v12, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move/from16 v18, v17

    move/from16 v17, v4

    const/4 v4, 0x0

    .local v4, "ipath":I
    .local v17, "doAuth":Z
    .local v18, "doScheme":Z
    :goto_c6
    move v11, v4

    .end local v4    # "ipath":I
    .local v11, "ipath":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-ge v11, v4, :cond_129

    .line 3427
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v4

    .line 3428
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3429
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e3

    .line 3430
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3432
    :cond_e3
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v9

    .line 3433
    .local v9, "path":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3434
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v4

    .line 3435
    .local v8, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3436
    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v8

    move v7, v14

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    .end local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v9

    move-object v9, v3

    .end local v9    # "path":Landroid/os/PatternMatcher;
    .local v21, "path":Landroid/os/PatternMatcher;
    move-object/from16 v22, v10

    move-object/from16 v10, v19

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .restart local v22    # "builder":Landroid/net/Uri$Builder;
    move/from16 v19, v11

    move-object v11, v12

    .end local v11    # "ipath":I
    .local v19, "ipath":I
    move-object/from16 v24, v12

    move-object/from16 v12, v21

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v24, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move/from16 v25, v13

    move/from16 v13, p4

    .end local v13    # "iauth":I
    .local v25, "iauth":I
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3438
    const/16 v23, 0x0

    move/from16 v18, v23

    move/from16 v17, v23

    .line 3426
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "path":Landroid/os/PatternMatcher;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v4, v19, 0x1

    .end local v19    # "ipath":I
    .restart local v4    # "ipath":I
    move-object/from16 v12, v24

    move/from16 v13, v25

    goto :goto_c6

    .line 3440
    .end local v4    # "ipath":I
    .end local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "iauth":I
    .restart local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v13    # "iauth":I
    :cond_129
    move-object/from16 v24, v12

    move/from16 v25, v13

    const/16 v23, 0x0

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v13    # "iauth":I
    .restart local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v25    # "iauth":I
    if-eqz v17, :cond_174

    .line 3441
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3442
    .local v13, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3443
    move-object/from16 v12, v24

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    .end local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    if-eqz v4, :cond_149

    .line 3444
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3446
    :cond_149
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v11, v4

    .line 3447
    .local v11, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3448
    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v11

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v20, v11

    move-object v11, v12

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v12

    move-object/from16 v12, v19

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v21, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v19, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v19, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3450
    const/4 v4, 0x0

    .line 3423
    .end local v17    # "doAuth":Z
    .end local v18    # "doScheme":Z
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v4, "doScheme":Z
    move/from16 v17, v4

    goto :goto_176

    .end local v4    # "doScheme":Z
    .restart local v18    # "doScheme":Z
    :cond_174
    move/from16 v17, v18

    .end local v18    # "doScheme":Z
    .local v17, "doScheme":Z
    :goto_176
    add-int/lit8 v4, v25, 0x1

    .end local v25    # "iauth":I
    .local v4, "iauth":I
    goto/16 :goto_b5

    .line 3453
    .end local v4    # "iauth":I
    :cond_17a
    const/16 v23, 0x0

    if-eqz v17, :cond_1ac

    .line 3454
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3455
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3456
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v4

    .line 3457
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3458
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v12

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v19, "finalIntent":Landroid/content/Intent;
    move-object/from16 v18, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3461
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v19    # "finalIntent":Landroid/content/Intent;
    :cond_1ac
    const/16 v16, 0x0

    .line 3406
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v23

    goto/16 :goto_4d

    .line 3464
    .end local v2    # "ischeme":I
    :cond_1b4
    move/from16 v23, v3

    move/from16 v2, v23

    .local v2, "idata":I
    :goto_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_23e

    .line 3465
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    .line 3466
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v15, :cond_21c

    .line 3467
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3468
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    move/from16 v4, v23

    .local v4, "ischeme":I
    :goto_1cc
    move v12, v4

    .end local v4    # "ischeme":I
    .local v12, "ischeme":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v12, v4, :cond_21b

    .line 3469
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    .line 3470
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_212

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_212

    .line 3471
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v4

    .line 3472
    .local v10, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3473
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3474
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v10

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v11

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v11    # "scheme":Ljava/lang/String;
    .local v17, "scheme":Ljava/lang/String;
    move/from16 v18, v12

    move-object/from16 v12, v19

    .end local v12    # "ischeme":I
    .local v18, "ischeme":I
    move-object/from16 v19, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v19, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .end local v17    # "scheme":Ljava/lang/String;
    .end local v20    # "finalIntent":Landroid/content/Intent;
    goto :goto_216

    .line 3468
    .end local v18    # "ischeme":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .restart local v12    # "ischeme":I
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    :cond_212
    move/from16 v18, v12

    move-object/from16 v19, v13

    .end local v12    # "ischeme":I
    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .restart local v18    # "ischeme":I
    .restart local v19    # "builder":Landroid/net/Uri$Builder;
    :goto_216
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "ischeme":I
    .restart local v4    # "ischeme":I
    move-object/from16 v13, v19

    goto :goto_1cc

    .line 3478
    .end local v4    # "ischeme":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    :cond_21b
    goto :goto_238

    .line 3479
    :cond_21c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v4

    .line 3480
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3481
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v13

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v17, v13

    move/from16 v13, p4

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .local v17, "finalIntent":Landroid/content/Intent;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3484
    .end local v17    # "finalIntent":Landroid/content/Intent;
    :goto_238
    const/16 v16, 0x0

    .line 3464
    .end local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b8

    .line 3487
    .end local v2    # "idata":I
    :cond_23e
    if-eqz v16, :cond_251

    .line 3488
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v14

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3491
    :cond_251
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 66
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "originalPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "versionCode"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "installUser"    # Landroid/os/UserHandle;
    .param p15, "allowInstall"    # Z
    .param p16, "instantApp"    # Z
    .param p17, "virtualPreload"    # Z
    .param p18, "parentPkgName"    # Ljava/lang/String;
    .param p20, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p21, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p22, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .local p19, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p4

    move/from16 v11, p12

    move-object/from16 v9, p19

    .line 702
    if-eqz v14, :cond_83

    .line 703
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v0, :cond_32

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is adopting original package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_32
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, v14, v15}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 706
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 707
    if-eqz v9, :cond_40

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 708
    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 709
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 710
    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    .line 711
    iput v11, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 712
    move/from16 v6, p13

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 713
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 714
    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 715
    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 718
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 719
    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 720
    move-object/from16 v14, p21

    iput-object v14, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 721
    move-object/from16 v14, p22

    iput-object v14, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 723
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 829
    move-object/from16 v9, p20

    move/from16 v18, v11

    move-object v1, v12

    move-object v2, v13

    goto/16 :goto_1d6

    .line 725
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_83
    move-object/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v8, p7

    move-object/from16 v5, p8

    move-object/from16 v3, p9

    move/from16 v6, p13

    move-object/from16 v7, p18

    move-object/from16 v14, p22

    new-instance v19, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v19

    move-object v1, v15

    move-object/from16 v2, p3

    move-object v3, v10

    move-object v5, v8

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, v16

    move-wide/from16 v9, p10

    move/from16 v18, v11

    move/from16 v12, p13

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move/from16 v15, v17

    move-object/from16 v16, p21

    move-object/from16 v17, p22

    invoke-direct/range {v0 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 730
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 731
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 733
    and-int/lit8 v2, v18, 0x1

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-nez v2, :cond_149

    .line 739
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 740
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p14, :cond_d6

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    goto :goto_d7

    :cond_d6
    move v5, v4

    .line 741
    .local v5, "installUserId":I
    :goto_d7
    if-eqz v2, :cond_146

    if-eqz p15, :cond_146

    .line 742
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_146

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 749
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-eqz p14, :cond_104

    const/4 v8, -0x1

    if-ne v5, v8, :cond_fb

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 751
    move-object/from16 v9, p20

    invoke-static {v9, v8}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_106

    goto :goto_fd

    :cond_fb
    move-object/from16 v9, p20

    :goto_fd
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v8, :cond_102

    goto :goto_106

    :cond_102
    move v8, v4

    goto :goto_107

    :cond_104
    move-object/from16 v9, p20

    :cond_106
    :goto_106
    const/4 v8, 0x1

    .line 756
    .local v8, "installed":Z
    :goto_107
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_114

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_114

    .line 757
    const/4 v8, 0x0

    .line 760
    :cond_114
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v20, v0

    move/from16 v21, v10

    move/from16 v25, v8

    move/from16 v34, p16

    move/from16 v35, p17

    invoke-virtual/range {v20 .. v42}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 778
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "installed":Z
    goto :goto_df

    .line 780
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "installUserId":I
    :cond_146
    move-object/from16 v9, p20

    goto :goto_188

    .line 784
    :cond_149
    move-object/from16 v9, p20

    if-eqz p15, :cond_188

    .line 785
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    .line 786
    .restart local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_155
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_188

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 787
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v3, :cond_172

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 788
    invoke-static {v7}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_172

    .line 789
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 795
    :cond_172
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v7

    if-eqz v7, :cond_187

    sget-object v7, Lcom/android/server/pm/Settings;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 796
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 799
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_187
    goto :goto_155

    .line 802
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_188
    :goto_188
    if-eqz v1, :cond_191

    .line 803
    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 829
    move-object/from16 v2, p2

    goto :goto_1d6

    .line 806
    :cond_191
    move-object/from16 v2, p2

    if-eqz v2, :cond_1d6

    .line 811
    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 812
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 814
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 816
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    .line 817
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_1d6

    .line 818
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 819
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 820
    .local v6, "userId":I
    nop

    .line 821
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 820
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 822
    nop

    .line 823
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    .line 822
    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 824
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    goto :goto_1b7

    .line 829
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1d6
    :goto_1d6
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 5119
    if-nez p1, :cond_9

    .line 5120
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51

    .line 5123
    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5124
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v0, :cond_21

    .line 5126
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5128
    :cond_21
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 5129
    const/4 v0, 0x0

    .line 5129
    .local v0, "i":I
    :goto_26
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 5130
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5131
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5132
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_49

    .line 5133
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5129
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5137
    .end local v0    # "i":I
    :cond_4c
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5139
    :goto_51
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 4
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4467
    .local v0, "id":J
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_12
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 4471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4467
    return-object v2

    .line 4471
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4468
    :catch_12
    move-exception v2

    .line 4471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4472
    nop

    .line 4473
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getShieldPkgsInGuestMode()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    sget-object v0, Lcom/android/server/pm/Settings;->sPackageShieldGuestMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 1450
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .line 1438
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1439
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .line 1445
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1446
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 995
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4310
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4311
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x2710

    if-ge v1, v0, :cond_1e

    .line 4312
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 4313
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4314
    add-int/2addr v2, v1

    return v2

    .line 4311
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4319
    .end local v1    # "i":I
    :cond_1e
    const/16 v1, 0x270f

    if-le v0, v1, :cond_24

    .line 4320
    const/4 v1, -0x1

    return v1

    .line 4323
    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4324
    add-int/2addr v2, v0

    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5167
    const/4 v0, 0x0

    .line 5168
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz p1, :cond_28

    .line 5169
    if-nez v0, :cond_13

    .line 5170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5172
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5174
    :cond_13
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5175
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5176
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5178
    .end local v1    # "flag":I
    goto :goto_1

    .line 5179
    :cond_28
    if-eqz v0, :cond_34

    .line 5180
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5183
    :cond_34
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4492
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_24

    .line 4494
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4495
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_21

    .line 4496
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4497
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4493
    .end local v1    # "mask":I
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 4500
    .end local v0    # "i":I
    :cond_24
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1918
    const/4 v0, 0x0

    .line 1920
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1922
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1922
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3f

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    .line 1924
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3f

    .line 1925
    :cond_16
    if-eq v3, v2, :cond_5

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1c

    .line 1927
    goto :goto_5

    .line 1929
    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1930
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1931
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1932
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 1933
    if-nez v0, :cond_3b

    .line 1934
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1936
    :cond_3b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1938
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_3e
    goto :goto_5

    .line 1940
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3f
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1559
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1561
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1561
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4e

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1562
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    .line 1563
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1564
    goto :goto_4

    .line 1566
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1567
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1568
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1569
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1570
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_4d

    .line 1571
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1574
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1576
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_4d
    goto :goto_4

    .line 1577
    :cond_4e
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3597
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3599
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 3599
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 3600
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_81

    .line 3601
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 3602
    goto :goto_4

    .line 3605
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3606
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_65

    .line 3607
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3608
    .local v3, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 3609
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_64

    .line 3612
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3614
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3615
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3612
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3617
    .end local v3    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_64
    goto :goto_80

    .line 3618
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3618
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3620
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3622
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_80
    goto :goto_4

    .line 3623
    :cond_81
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4057
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4059
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 4059
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 4060
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 4061
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 4062
    goto :goto_4

    .line 4065
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4066
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 4067
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4068
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 4069
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 4071
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4071
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4075
    .end local v3    # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 4076
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4077
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4076
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4079
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4080
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4081
    :cond_70
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 39
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3627
    move-object/from16 v2, p1

    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3628
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3629
    .local v22, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3630
    .local v13, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3632
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3633
    .local v23, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3635
    .local v24, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3637
    .local v25, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3638
    .local v4, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3639
    .local v26, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3641
    .local v27, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v4, :cond_4f

    if-eqz v23, :cond_4f

    .line 3642
    move-object/from16 v4, v23

    .line 3645
    .end local v4    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v28, "primaryCpuAbiStr":Ljava/lang/String;
    :cond_4f
    move-object/from16 v28, v4

    if-nez v0, :cond_54

    .line 3646
    move-object v0, v13

    .line 3648
    .end local v0    # "resourcePathStr":Ljava/lang/String;
    .local v14, "resourcePathStr":Ljava/lang/String;
    :cond_54
    move-object v14, v0

    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3649
    .local v12, "version":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 3650
    .local v4, "versionCode":J
    if-eqz v12, :cond_67

    .line 3652
    :try_start_60
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_64} :catch_66

    move-wide v4, v6

    .line 3654
    goto :goto_67

    .line 3653
    :catch_66
    move-exception v0

    .line 3657
    .end local v4    # "versionCode":J
    .local v29, "versionCode":J
    :cond_67
    :goto_67
    move-wide/from16 v29, v4

    const/4 v0, 0x0

    .line 3658
    .local v0, "pkgFlags":I
    const/4 v4, 0x0

    .line 3659
    .local v4, "pkgPrivateFlags":I
    const/4 v11, 0x1

    or-int/lit8 v31, v0, 0x1

    .line 3660
    .end local v0    # "pkgFlags":I
    .local v31, "pkgFlags":I
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3661
    or-int/lit8 v0, v4, 0x8

    .line 3663
    .end local v4    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    move/from16 v32, v0

    goto :goto_7b

    .line 3663
    .end local v0    # "pkgPrivateFlags":I
    .restart local v4    # "pkgPrivateFlags":I
    :cond_79
    move/from16 v32, v4

    .line 3663
    .end local v4    # "pkgPrivateFlags":I
    .local v32, "pkgPrivateFlags":I
    :goto_7b
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v28

    move-object/from16 v11, v26

    move-object/from16 v33, v12

    move-object/from16 v12, v27

    .end local v12    # "version":Ljava/lang/String;
    .local v33, "version":Ljava/lang/String;
    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-wide/from16 v13, v29

    .line 3663
    .end local v13    # "codePathStr":Ljava/lang/String;
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .local v34, "codePathStr":Ljava/lang/String;
    .local v35, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v36, v15

    move/from16 v15, v31

    .line 3663
    .end local v15    # "name":Ljava/lang/String;
    .local v36, "name":Ljava/lang/String;
    move/from16 v16, v32

    move-object/from16 v17, v25

    invoke-direct/range {v4 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 3667
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3668
    .local v5, "timeStampStr":Ljava/lang/String;
    const/16 v6, 0x10

    if-eqz v5, :cond_c2

    .line 3670
    :try_start_b8
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 3671
    .local v7, "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_bf} :catch_c0

    .line 3671
    .end local v7    # "timeStamp":J
    goto :goto_c1

    .line 3672
    :catch_c0
    move-exception v0

    .line 3673
    :goto_c1
    goto :goto_d4

    .line 3675
    :cond_c2
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3676
    if-eqz v5, :cond_d4

    .line 3678
    :try_start_cb
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3679
    .restart local v7    # "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_d2} :catch_d3

    .line 3681
    .end local v7    # "timeStamp":J
    goto :goto_d4

    .line 3680
    :catch_d3
    move-exception v0

    .line 3684
    :cond_d4
    :goto_d4
    const-string/jumbo v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3685
    if-eqz v5, :cond_e5

    .line 3687
    :try_start_dd
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e3} :catch_e4

    .line 3689
    goto :goto_e5

    .line 3688
    :catch_e4
    move-exception v0

    .line 3691
    :cond_e5
    :goto_e5
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3692
    if-eqz v5, :cond_f6

    .line 3694
    :try_start_ee
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_f4} :catch_f5

    .line 3696
    goto :goto_f6

    .line 3695
    :catch_f5
    move-exception v0

    .line 3698
    :cond_f6
    :goto_f6
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3699
    .local v0, "idStr":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v0, :cond_105

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_106

    :cond_105
    move v7, v6

    :goto_106
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3700
    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_11c

    .line 3701
    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3702
    .local v7, "sharedIdStr":Ljava/lang/String;
    if-eqz v7, :cond_11a

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    :cond_11a
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3705
    .end local v7    # "sharedIdStr":Ljava/lang/String;
    :cond_11c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 3707
    .local v6, "outerDepth":I
    :cond_120
    :goto_120
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 3707
    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_19e

    const/4 v7, 0x3

    if-ne v8, v7, :cond_131

    .line 3708
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_19e

    .line 3709
    :cond_131
    if-eq v8, v7, :cond_120

    const/4 v7, 0x4

    if-ne v8, v7, :cond_137

    .line 3710
    goto :goto_120

    .line 3713
    :cond_137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 3714
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_120

    .line 3715
    :cond_14c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "child-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_170

    .line 3716
    const-string/jumbo v7, "name"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3717
    .local v7, "childPackageName":Ljava/lang/String;
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v10, :cond_16a

    .line 3718
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3720
    :cond_16a
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3721
    .end local v7    # "childPackageName":Ljava/lang/String;
    goto :goto_120

    :cond_170
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "uses-static-lib"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_181

    .line 3722
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_120

    .line 3724
    :cond_181
    const/4 v7, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <updated-package>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3725
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3724
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3726
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_120

    .line 3730
    :cond_19e
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v7, v36

    invoke-virtual {v3, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    .end local v36    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1582
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1586
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4085
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4087
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 4087
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 4088
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 4089
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 4090
    goto :goto_4

    .line 4093
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4094
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 4095
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4096
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 4097
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 4099
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4101
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4099
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4103
    .end local v3    # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 4104
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4104
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4107
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4108
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4109
    :cond_70
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 99
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 3739
    move-object/from16 v13, p1

    const/4 v1, 0x0

    .line 3740
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3741
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3742
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3743
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3744
    .local v5, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3745
    .local v6, "resourcePathStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3746
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3747
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3748
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3749
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3750
    .local v11, "cpuAbiOverrideString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3751
    .local v12, "systemStr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3752
    .local v16, "installerPackageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3753
    .local v17, "isOrphaned":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3754
    .local v18, "volumeUuid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3755
    .local v19, "categoryHintString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3756
    .local v20, "updateAvailable":Ljava/lang/String;
    const/16 v21, -0x1

    .line 3757
    .local v21, "categoryHint":I
    const/4 v15, 0x0

    .line 3758
    .local v15, "uidError":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3759
    .local v22, "pkgFlags":I
    const/16 v23, 0x0

    .line 3760
    .local v23, "pkgPrivateFlags":I
    const-wide/16 v24, 0x0

    .line 3761
    .local v24, "timeStamp":J
    const-wide/16 v26, 0x0

    .line 3762
    .local v26, "firstInstallTime":J
    const-wide/16 v28, 0x0

    .line 3763
    .local v28, "lastUpdateTime":J
    const/16 v30, 0x0

    .line 3764
    .local v30, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v31, 0x0

    .line 3765
    .local v31, "version":Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 3768
    .local v32, "versionCode":J
    move-object/from16 v34, v11

    .line 3768
    .end local v11    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_30
    const-string/jumbo v0, "name"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_892

    move-object v1, v0

    .line 3769
    :try_start_38
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3770
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_47} :catch_86a

    move-object v3, v0

    .line 3771
    :try_start_48
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4f} :catch_83f

    move-object/from16 v36, v0

    .line 3772
    .end local v15    # "uidError":Ljava/lang/String;
    .local v36, "uidError":Ljava/lang/String;
    :try_start_51
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_58} :catch_837

    move-object v4, v0

    .line 3773
    :try_start_59
    const-string v0, "codePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5f} :catch_80c

    move-object v5, v0

    .line 3774
    :try_start_60
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_67} :catch_7df

    move-object/from16 v37, v0

    .line 3776
    .end local v6    # "resourcePathStr":Ljava/lang/String;
    .local v37, "resourcePathStr":Ljava/lang/String;
    :try_start_69
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_70} :catch_7ba

    move-object/from16 v38, v0

    .line 3778
    .end local v7    # "legacyCpuAbiString":Ljava/lang/String;
    .local v38, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_72
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3780
    .local v15, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_80} :catch_7b2

    .line 3781
    .end local v8    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_80
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_87} :catch_7aa

    move-object v7, v0

    .line 3782
    .end local v9    # "primaryCpuAbiString":Ljava/lang/String;
    .local v7, "primaryCpuAbiString":Ljava/lang/String;
    :try_start_88
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8f} :catch_781

    .line 3783
    .end local v10    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_8f
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_95} :catch_779

    .line 3784
    .end local v34    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_95
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_9c} :catch_753

    move-object/from16 v20, v0

    .line 3786
    if-nez v7, :cond_a7

    if-eqz v38, :cond_a7

    .line 3787
    move-object/from16 v0, v38

    .line 3790
    .end local v7    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "primaryCpuAbiString":Ljava/lang/String;
    move-object/from16 v34, v0

    goto :goto_a9

    .line 3790
    .end local v0    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v7    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_a7
    move-object/from16 v34, v7

    .line 3790
    .end local v7    # "primaryCpuAbiString":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    :goto_a9
    :try_start_a9
    const-string/jumbo v0, "version"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b0} :catch_74c

    move-object v10, v0

    .line 3791
    .end local v31    # "version":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    if-eqz v10, :cond_bb

    .line 3793
    :try_start_b3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_b7} :catch_ba

    move-wide/from16 v31, v39

    .line 3795
    .end local v32    # "versionCode":J
    .local v31, "versionCode":J
    goto :goto_bd

    .line 3794
    .end local v31    # "versionCode":J
    .restart local v32    # "versionCode":J
    :catch_ba
    move-exception v0

    .line 3797
    :cond_bb
    move-wide/from16 v31, v32

    .line 3797
    .end local v32    # "versionCode":J
    .restart local v31    # "versionCode":J
    :goto_bd
    :try_start_bd
    const-string/jumbo v0, "installer"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_c4} :catch_72a

    move-object/from16 v33, v0

    .line 3798
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .local v33, "installerPackageName":Ljava/lang/String;
    :try_start_c6
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_c6 .. :try_end_cd} :catch_720

    move-object/from16 v57, v0

    .line 3799
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .local v57, "isOrphaned":Ljava/lang/String;
    :try_start_cf
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d6
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d6} :catch_716

    move-object/from16 v58, v0

    .line 3800
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .local v58, "volumeUuid":Ljava/lang/String;
    :try_start_d8
    const-string v0, "categoryHint"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_de} :catch_70c

    move-object v7, v0

    .line 3801
    .end local v19    # "categoryHintString":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    if-eqz v7, :cond_ea

    .line 3803
    :try_start_e1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e5
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_e5} :catch_e9

    .line 3805
    .end local v21    # "categoryHint":I
    .local v0, "categoryHint":I
    nop

    .line 3808
    move/from16 v21, v0

    goto :goto_ea

    .line 3804
    .end local v0    # "categoryHint":I
    .restart local v21    # "categoryHint":I
    :catch_e9
    move-exception v0

    .line 3808
    :cond_ea
    :goto_ea
    :try_start_ea
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_f1} :catch_6ee

    move-object v12, v0

    .line 3809
    if-eqz v12, :cond_127

    .line 3811
    :try_start_f4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_f8} :catch_fb

    move/from16 v22, v0

    .line 3813
    goto :goto_fc

    .line 3812
    :catch_fb
    move-exception v0

    .line 3814
    :goto_fc
    :try_start_fc
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_103
    .catch Ljava/lang/NumberFormatException; {:try_start_fc .. :try_end_103} :catch_114

    move-object v12, v0

    .line 3815
    if-eqz v12, :cond_110

    .line 3817
    :try_start_106
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_10a
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_10a} :catch_10e

    .line 3819
    .end local v23    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    nop

    .line 3858
    move/from16 v23, v0

    goto :goto_110

    .line 3818
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :catch_10e
    move-exception v0

    .line 3819
    nop

    .line 3858
    .end local v12    # "systemStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    :cond_110
    :goto_110
    move-object/from16 v19, v12

    goto/16 :goto_18e

    .line 3950
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v19    # "systemStr":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    :catch_114
    move-exception v0

    move-object/from16 v35, v7

    move-object/from16 v19, v12

    move-object v13, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object/from16 v24, v2

    goto/16 :goto_8b8

    .line 3823
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_127
    :try_start_127
    const-string v0, "flags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_127 .. :try_end_12d} :catch_6ee

    move-object v12, v0

    .line 3824
    if-eqz v12, :cond_170

    .line 3826
    :try_start_130
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_134
    .catch Ljava/lang/NumberFormatException; {:try_start_130 .. :try_end_134} :catch_137

    move/from16 v22, v0

    .line 3828
    goto :goto_138

    .line 3827
    :catch_137
    move-exception v0

    .line 3829
    :goto_138
    :try_start_138
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v22, v0

    if-eqz v0, :cond_140

    .line 3830
    or-int/lit8 v23, v23, 0x1

    .line 3832
    :cond_140
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v22, v0

    if-eqz v0, :cond_14a

    .line 3833
    or-int/lit8 v0, v23, 0x2

    .line 3835
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3835
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_14a
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int v0, v22, v0

    if-eqz v0, :cond_154

    .line 3836
    or-int/lit8 v0, v23, 0x4

    .line 3838
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3838
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_154
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v22, v0

    if-eqz v0, :cond_15e

    .line 3839
    or-int/lit8 v0, v23, 0x8

    .line 3841
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3841
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_15e
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_16a} :catch_114

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v22, v0

    goto :goto_18b

    .line 3847
    :cond_170
    :try_start_170
    const-string/jumbo v0, "system"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_177
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_177} :catch_6ee

    move-object v12, v0

    .line 3848
    if-eqz v12, :cond_189

    .line 3849
    :try_start_17a
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_181
    .catch Ljava/lang/NumberFormatException; {:try_start_17a .. :try_end_181} :catch_114

    if-eqz v0, :cond_185

    .line 3850
    const/4 v0, 0x1

    goto :goto_186

    :cond_185
    const/4 v0, 0x0

    :goto_186
    or-int v0, v22, v0

    goto :goto_18b

    .line 3854
    :cond_189
    or-int/lit8 v0, v22, 0x1

    .line 3858
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v22    # "pkgFlags":I
    .local v0, "pkgFlags":I
    .restart local v19    # "systemStr":Ljava/lang/String;
    :goto_18b
    move/from16 v22, v0

    goto :goto_110

    .line 3858
    .end local v0    # "pkgFlags":I
    .restart local v22    # "pkgFlags":I
    :goto_18e
    :try_start_18e
    const-string v0, "ft"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_194
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_194} :catch_6e2

    move-object v12, v0

    .line 3859
    .local v12, "timeStampStr":Ljava/lang/String;
    const/16 v11, 0x10

    if-eqz v12, :cond_1a5

    .line 3861
    :try_start_199
    invoke-static {v12, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_19d
    .catch Ljava/lang/NumberFormatException; {:try_start_199 .. :try_end_19d} :catch_1a3

    move-wide/from16 v24, v16

    .line 3863
    .end local v24    # "timeStamp":J
    .local v60, "timeStamp":J
    :goto_19f
    nop

    .line 3873
    :cond_1a0
    :goto_1a0
    move-wide/from16 v60, v24

    goto :goto_1b9

    .line 3862
    .end local v60    # "timeStamp":J
    .restart local v24    # "timeStamp":J
    :catch_1a3
    move-exception v0

    goto :goto_19f

    .line 3865
    :cond_1a5
    :try_start_1a5
    const-string/jumbo v0, "ts"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1ad
    .catch Ljava/lang/NumberFormatException; {:try_start_1a5 .. :try_end_1ad} :catch_6e2

    move-object v12, v0

    .line 3866
    if-eqz v12, :cond_1a0

    .line 3868
    :try_start_1b0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1b4
    .catch Ljava/lang/NumberFormatException; {:try_start_1b0 .. :try_end_1b4} :catch_1b7

    move-wide/from16 v24, v16

    .line 3870
    goto :goto_1a0

    .line 3869
    :catch_1b7
    move-exception v0

    goto :goto_1a0

    .line 3873
    .end local v24    # "timeStamp":J
    .restart local v60    # "timeStamp":J
    :goto_1b9
    :try_start_1b9
    const-string/jumbo v0, "it"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1b9 .. :try_end_1c1} :catch_6c6

    move-object v11, v0

    .line 3874
    .end local v12    # "timeStampStr":Ljava/lang/String;
    .local v11, "timeStampStr":Ljava/lang/String;
    if-eqz v11, :cond_1ce

    .line 3876
    const/16 v12, 0x10

    :try_start_1c6
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1ca
    .catch Ljava/lang/NumberFormatException; {:try_start_1c6 .. :try_end_1ca} :catch_1cd

    move-wide/from16 v26, v16

    .line 3878
    goto :goto_1ce

    .line 3877
    :catch_1cd
    move-exception v0

    .line 3880
    .end local v26    # "firstInstallTime":J
    .local v62, "firstInstallTime":J
    :cond_1ce
    :goto_1ce
    move-wide/from16 v62, v26

    :try_start_1d0
    const-string/jumbo v0, "ut"

    const/4 v12, 0x0

    invoke-interface {v13, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d8
    .catch Ljava/lang/NumberFormatException; {:try_start_1d0 .. :try_end_1d8} :catch_6aa

    move-object v11, v0

    .line 3881
    if-eqz v11, :cond_1e5

    .line 3883
    const/16 v12, 0x10

    :try_start_1dd
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1e1
    .catch Ljava/lang/NumberFormatException; {:try_start_1dd .. :try_end_1e1} :catch_1e4

    move-wide/from16 v28, v16

    .line 3885
    goto :goto_1e5

    .line 3884
    :catch_1e4
    move-exception v0

    .line 3887
    .end local v28    # "lastUpdateTime":J
    .local v64, "lastUpdateTime":J
    :cond_1e5
    :goto_1e5
    move-wide/from16 v64, v28

    :try_start_1e7
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_1e9
    .catch Ljava/lang/NumberFormatException; {:try_start_1e7 .. :try_end_1e9} :catch_68e

    if-eqz v0, :cond_221

    .line 3888
    :try_start_1eb
    const-string v0, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1eb .. :try_end_1f2} :catch_214

    move-object/from16 v66, v7

    :try_start_1f4
    const-string v7, "Reading package: "

    .line 3888
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .local v66, "categoryHintString":Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " userId="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sharedUserId="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_223

    .line 3950
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    :catch_214
    move-exception v0

    move-object/from16 v66, v7

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    move-object/from16 v35, v66

    const/4 v14, 0x5

    .line 3950
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3890
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_221
    move-object/from16 v66, v7

    .line 3890
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    :goto_223
    if-eqz v3, :cond_235

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_236

    .line 3950
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_22a
    move-exception v0

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v35, "categoryHintString":Ljava/lang/String;
    :goto_230
    move-object/from16 v35, v66

    :goto_232
    const/4 v14, 0x5

    goto/16 :goto_8b8

    .line 3890
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v24    # "realName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    :cond_235
    const/4 v0, 0x0

    .line 3891
    .local v0, "userId":I
    :goto_236
    if-eqz v4, :cond_23d

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_23c
    .catch Ljava/lang/NumberFormatException; {:try_start_1f4 .. :try_end_23c} :catch_22a

    goto :goto_23e

    :cond_23d
    const/4 v7, 0x0

    :goto_23e
    move v12, v7

    .line 3892
    .local v12, "sharedUserId":I
    if-nez v37, :cond_243

    .line 3893
    move-object v7, v5

    .line 3893
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    goto :goto_245

    .line 3895
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :cond_243
    move-object/from16 v7, v37

    .line 3895
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    :goto_245
    if-eqz v2, :cond_253

    .line 3896
    :try_start_247
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_24b
    .catch Ljava/lang/NumberFormatException; {:try_start_247 .. :try_end_24b} :catch_24e

    move-object/from16 v2, v16

    goto :goto_253

    .line 3950
    .end local v0    # "userId":I
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v12    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_24e
    move-exception v0

    move-object/from16 v24, v2

    move-object v13, v14

    goto :goto_230

    .line 3898
    .end local v2    # "realName":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v12    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "realName":Ljava/lang/String;
    :cond_253
    :goto_253
    move-object/from16 v24, v2

    if-nez v1, :cond_299

    .line 3899
    :try_start_257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25c
    .catch Ljava/lang/NumberFormatException; {:try_start_257 .. :try_end_25c} :catch_290

    move-object/from16 v67, v3

    :try_start_25e
    const-string v3, "Error in package manager settings: <package> has no name at "

    .line 3899
    .end local v3    # "idStr":Ljava/lang/String;
    .local v67, "idStr":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3901
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26e
    .catch Ljava/lang/NumberFormatException; {:try_start_25e .. :try_end_26e} :catch_2c8

    .line 3899
    const/4 v3, 0x5

    :try_start_26f
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/NumberFormatException; {:try_start_26f .. :try_end_272} :catch_287

    .line 3954
    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v10, v14

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v4, v67

    const/4 v3, 0x5

    .end local v0    # "userId":I
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .end local v67    # "idStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    .local v12, "lastUpdateTime":J
    .local v14, "resourcePathStr":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .local v59, "version":Ljava/lang/String;
    .local v78, "codePathStr":Ljava/lang/String;
    .local v79, "timeStamp":J
    .local v82, "firstInstallTime":J
    :goto_284
    move-object v14, v7

    goto/16 :goto_643

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "name":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    :catch_287
    move-exception v0

    move-object v13, v14

    move-object/from16 v35, v66

    move v14, v3

    move-object/from16 v3, v67

    goto/16 :goto_8b8

    .line 3950
    .end local v67    # "idStr":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_290
    move-exception v0

    move-object/from16 v67, v3

    move-object v13, v14

    move-object/from16 v35, v66

    const/4 v14, 0x5

    .line 3950
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3902
    .end local v67    # "idStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v11, "timeStampStr":Ljava/lang/String;
    .local v12, "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_299
    move-object/from16 v67, v3

    .line 3902
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    if-nez v5, :cond_2d0

    .line 3903
    :try_start_29d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3905
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2b2
    .catch Ljava/lang/NumberFormatException; {:try_start_29d .. :try_end_2b2} :catch_2c8

    .line 3903
    const/4 v3, 0x5

    :try_start_2b3
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2b6
    .catch Ljava/lang/NumberFormatException; {:try_start_2b3 .. :try_end_2b6} :catch_287

    .line 3954
    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v10, v14

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v4, v67

    goto :goto_284

    .line 3950
    .end local v0    # "userId":I
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v12    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_2c8
    move-exception v0

    move-object v13, v14

    move-object/from16 v35, v66

    move-object/from16 v3, v67

    goto/16 :goto_232

    .line 3906
    .restart local v0    # "userId":I
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v12    # "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_2d0
    const/4 v3, 0x5

    if-lez v0, :cond_475

    .line 3907
    :try_start_2d3
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_2d7
    .catch Ljava/lang/NumberFormatException; {:try_start_2d3 .. :try_end_2d7} :catch_459

    move-object/from16 v68, v4

    :try_start_2d9
    new-instance v4, Ljava/io/File;

    .line 3907
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v68, "sharedIdStr":Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2de
    .catch Ljava/lang/NumberFormatException; {:try_start_2d9 .. :try_end_2de} :catch_43d

    move-object/from16 v69, v5

    :try_start_2e0
    new-instance v5, Ljava/io/File;

    .line 3907
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v69, "codePathStr":Ljava/lang/String;
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2e5
    .catch Ljava/lang/NumberFormatException; {:try_start_2e0 .. :try_end_2e5} :catch_41f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v70, v1

    move-object v1, v14

    .line 3907
    .end local v1    # "name":Ljava/lang/String;
    .local v70, "name":Ljava/lang/String;
    move/from16 v25, v3

    move-object/from16 v71, v67

    move-object/from16 v3, v24

    .line 3907
    .end local v67    # "idStr":Ljava/lang/String;
    .local v71, "idStr":Ljava/lang/String;
    move-object/from16 v72, v68

    .line 3907
    .end local v68    # "sharedIdStr":Ljava/lang/String;
    .local v72, "sharedIdStr":Ljava/lang/String;
    move-object/from16 v73, v69

    .line 3907
    .end local v69    # "codePathStr":Ljava/lang/String;
    .local v73, "codePathStr":Ljava/lang/String;
    move-object/from16 v74, v7

    move-object/from16 v35, v66

    move-object/from16 v7, v34

    .line 3907
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .local v74, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v59, v10

    move v10, v0

    .line 3907
    .end local v10    # "version":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    move-object/from16 v25, v11

    move/from16 v75, v12

    move-wide/from16 v11, v31

    .line 3907
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v12    # "sharedUserId":I
    .local v25, "timeStampStr":Ljava/lang/String;
    .local v75, "sharedUserId":I
    move/from16 v13, v22

    move/from16 v14, v23

    :try_start_30b
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_30f
    .catch Ljava/lang/NumberFormatException; {:try_start_30b .. :try_end_30f} :catch_406

    .line 3912
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_30f
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_311
    .catch Ljava/lang/NumberFormatException; {:try_start_30f .. :try_end_311} :catch_3fa

    if-eqz v2, :cond_351

    .line 3913
    :try_start_313
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31f
    .catch Ljava/lang/NumberFormatException; {:try_start_313 .. :try_end_31f} :catch_33c

    move-object/from16 v11, v70

    :try_start_321
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v70    # "name":Ljava/lang/String;
    .local v11, "name":Ljava/lang/String;
    const-string v4, ": userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_353

    .line 3950
    .end local v0    # "userId":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v75    # "sharedUserId":I
    .restart local v70    # "name":Ljava/lang/String;
    :catch_33c
    move-exception v0

    move-object/from16 v11, v70

    move-object/from16 v30, v1

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v70    # "name":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3915
    .end local v11    # "name":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v25    # "timeStampStr":Ljava/lang/String;
    .restart local v70    # "name":Ljava/lang/String;
    .restart local v75    # "sharedUserId":I
    :cond_351
    move-object/from16 v11, v70

    .line 3915
    .end local v70    # "name":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    :goto_353
    if-nez v1, :cond_38f

    .line 3916
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3918
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3916
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_376
    .catch Ljava/lang/NumberFormatException; {:try_start_321 .. :try_end_376} :catch_37d

    .line 3954
    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    goto :goto_39e

    .line 3950
    .end local v0    # "userId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v75    # "sharedUserId":I
    :catch_37d
    move-exception v0

    move-object/from16 v30, v1

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :goto_38b
    move-object/from16 v13, p0

    goto/16 :goto_232

    .line 3920
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "userId":I
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v25    # "timeStampStr":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v75    # "sharedUserId":I
    :cond_38f
    move-wide/from16 v3, v60

    :try_start_391
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_394
    .catch Ljava/lang/NumberFormatException; {:try_start_391 .. :try_end_394} :catch_3e1

    .line 3921
    .end local v60    # "timeStamp":J
    .local v3, "timeStamp":J
    move-wide/from16 v12, v62

    :try_start_396
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_398
    .catch Ljava/lang/NumberFormatException; {:try_start_396 .. :try_end_398} :catch_3c6

    .line 3922
    .end local v62    # "firstInstallTime":J
    .local v12, "firstInstallTime":J
    move-wide/from16 v76, v12

    move-wide/from16 v12, v64

    :try_start_39c
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_39e
    .catch Ljava/lang/NumberFormatException; {:try_start_39c .. :try_end_39e} :catch_3b1

    .line 3954
    .end local v0    # "userId":I
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v64    # "lastUpdateTime":J
    .end local v75    # "sharedUserId":I
    .local v12, "lastUpdateTime":J
    .local v76, "firstInstallTime":J
    :goto_39e
    move-object/from16 v30, v1

    move-wide/from16 v79, v3

    move-object/from16 v4, v71

    move-object/from16 v1, v72

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    const/4 v3, 0x5

    move-object/from16 v10, p0

    goto/16 :goto_643

    .line 3950
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_3b1
    move-exception v0

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-wide/from16 v62, v76

    goto :goto_38b

    .end local v76    # "firstInstallTime":J
    .local v12, "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_3c6
    move-exception v0

    move-wide/from16 v76, v12

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-wide/from16 v62, v76

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v64    # "lastUpdateTime":J
    .local v12, "lastUpdateTime":J
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v12    # "lastUpdateTime":J
    .end local v76    # "firstInstallTime":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_3e1
    move-exception v0

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v12    # "lastUpdateTime":J
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v3    # "timeStamp":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v76    # "firstInstallTime":J
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v70    # "name":Ljava/lang/String;
    :catch_3fa
    move-exception v0

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v11, v70

    move-object/from16 v30, v1

    goto :goto_40f

    .line 3950
    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_406
    move-exception v0

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v11, v70

    .line 3950
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    :goto_40f
    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .line 3950
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v70    # "name":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v3    # "timeStamp":J
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    .restart local v68    # "sharedIdStr":Ljava/lang/String;
    .restart local v69    # "codePathStr":Ljava/lang/String;
    :catch_41f
    move-exception v0

    move-object v11, v1

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object/from16 v73, v69

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    const/4 v14, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .end local v67    # "idStr":Ljava/lang/String;
    .end local v68    # "sharedIdStr":Ljava/lang/String;
    .end local v69    # "codePathStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v3    # "timeStamp":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    .restart local v68    # "sharedIdStr":Ljava/lang/String;
    :catch_43d
    move-exception v0

    move-object v11, v1

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    const/4 v14, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .end local v67    # "idStr":Ljava/lang/String;
    .end local v68    # "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v3    # "timeStamp":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    :catch_459
    move-exception v0

    move-object v11, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    const/4 v14, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .end local v67    # "idStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3924
    .end local v3    # "timeStamp":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v0    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .local v11, "timeStampStr":Ljava/lang/String;
    .local v12, "sharedUserId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "categoryHintString":Ljava/lang/String;
    .restart local v67    # "idStr":Ljava/lang/String;
    :cond_475
    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-object/from16 v25, v11

    move/from16 v75, v12

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object v11, v1

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "categoryHintString":Ljava/lang/String;
    .end local v67    # "idStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .local v11, "name":Ljava/lang/String;
    .local v12, "lastUpdateTime":J
    .restart local v25    # "timeStampStr":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v72    # "sharedIdStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v75    # "sharedUserId":I
    .restart local v76    # "firstInstallTime":J
    move-object/from16 v1, v72

    if-eqz v1, :cond_60a

    .line 3925
    .end local v72    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    move/from16 v2, v75

    if-lez v2, :cond_5a9

    .line 3926
    .end local v75    # "sharedUserId":I
    .local v2, "sharedUserId":I
    :try_start_494
    new-instance v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v40

    new-instance v7, Ljava/io/File;
    :try_end_49c
    .catch Ljava/lang/NumberFormatException; {:try_start_494 .. :try_end_49c} :catch_58c

    move-object/from16 v14, v73

    :try_start_49e
    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3926
    .end local v73    # "codePathStr":Ljava/lang/String;
    .local v14, "codePathStr":Ljava/lang/String;
    new-instance v10, Ljava/io/File;
    :try_end_4a3
    .catch Ljava/lang/NumberFormatException; {:try_start_49e .. :try_end_4a3} :catch_56f

    move-object/from16 v78, v14

    move-object/from16 v14, v74

    :try_start_4a7
    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3926
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .local v14, "resourcePathStr":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v39, v5

    move-object/from16 v41, v24

    move-object/from16 v42, v7

    move-object/from16 v43, v10

    move-object/from16 v44, v6

    move-object/from16 v45, v34

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-wide/from16 v48, v31

    move/from16 v50, v22

    move/from16 v51, v23

    move-object/from16 v52, v15

    move/from16 v54, v2

    invoke-direct/range {v39 .. v56}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_4cd
    .catch Ljava/lang/NumberFormatException; {:try_start_4a7 .. :try_end_4cd} :catch_556

    .line 3932
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v5, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_4cd
    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_4d0
    .catch Ljava/lang/NumberFormatException; {:try_start_4cd .. :try_end_4d0} :catch_54d

    .line 3933
    move-wide/from16 v79, v3

    move-wide/from16 v3, v76

    :try_start_4d4
    iput-wide v3, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3934
    .end local v76    # "firstInstallTime":J
    .local v3, "firstInstallTime":J
    .restart local v79    # "timeStamp":J
    iput-wide v12, v5, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_4d8
    .catch Ljava/lang/NumberFormatException; {:try_start_4d4 .. :try_end_4d8} :catch_534

    .line 3935
    move-object/from16 v10, p0

    :try_start_4da
    iget-object v7, v10, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3936
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v7, :cond_514

    .line 3937
    const-string v7, "PackageManager"

    move/from16 v81, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3937
    .end local v0    # "userId":I
    .local v81, "userId":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4ec
    .catch Ljava/lang/NumberFormatException; {:try_start_4da .. :try_end_4ec} :catch_51d

    move-wide/from16 v82, v3

    :try_start_4ee
    const-string v3, "Reading package "

    .line 3937
    .end local v3    # "firstInstallTime":J
    .restart local v82    # "firstInstallTime":J
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": sharedUserId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50d
    .catch Ljava/lang/NumberFormatException; {:try_start_4ee .. :try_end_50d} :catch_50e

    goto :goto_516

    .line 3950
    .end local v2    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v81    # "userId":I
    :catch_50e
    move-exception v0

    move-object v4, v1

    move-object/from16 v30, v5

    goto/16 :goto_5f8

    .line 3954
    .end local v82    # "firstInstallTime":J
    .restart local v3    # "firstInstallTime":J
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_514
    move-wide/from16 v82, v3

    .line 3954
    .end local v3    # "firstInstallTime":J
    .restart local v82    # "firstInstallTime":J
    :goto_516
    move-object/from16 v30, v5

    move-object/from16 v4, v71

    const/4 v3, 0x5

    goto/16 :goto_643

    .line 3950
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v82    # "firstInstallTime":J
    .restart local v3    # "firstInstallTime":J
    :catch_51d
    move-exception v0

    move-wide/from16 v82, v3

    move-object v4, v1

    move-object/from16 v30, v5

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    const/4 v14, 0x5

    move-object v13, v10

    move-object/from16 v10, v59

    goto :goto_54b

    :catch_534
    move-exception v0

    move-wide/from16 v82, v3

    move-object v4, v1

    move-object/from16 v30, v5

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v3    # "firstInstallTime":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .local v1, "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .local v5, "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v82    # "firstInstallTime":J
    :goto_54b
    goto/16 :goto_8b8

    .line 3950
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v82    # "firstInstallTime":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .local v5, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v14    # "resourcePathStr":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    .restart local v78    # "codePathStr":Ljava/lang/String;
    :catch_54d
    move-exception v0

    move-wide/from16 v79, v3

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object/from16 v30, v5

    goto :goto_55c

    .line 3950
    .end local v5    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_556
    move-exception v0

    move-wide/from16 v79, v3

    move-wide/from16 v82, v76

    move-object v4, v1

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .local v5, "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_55c
    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v3    # "timeStamp":J
    .end local v76    # "firstInstallTime":J
    .restart local v79    # "timeStamp":J
    .restart local v82    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .local v14, "codePathStr":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    :catch_56f
    move-exception v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v14

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v3    # "timeStamp":J
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .local v14, "resourcePathStr":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v82    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .restart local v3    # "timeStamp":J
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    :catch_58c
    move-exception v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    .end local v3    # "timeStamp":J
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v14    # "resourcePathStr":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v82    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3940
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .restart local v0    # "userId":I
    .restart local v2    # "sharedUserId":I
    .restart local v3    # "timeStamp":J
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v25    # "timeStampStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v76    # "firstInstallTime":J
    :cond_5a9
    move/from16 v81, v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object/from16 v10, p0

    .line 3940
    .end local v0    # "userId":I
    .end local v3    # "timeStamp":J
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v76    # "firstInstallTime":J
    .restart local v14    # "resourcePathStr":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v81    # "userId":I
    .restart local v82    # "firstInstallTime":J
    :try_start_5b5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has bad sharedId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5da
    .catch Ljava/lang/NumberFormatException; {:try_start_5b5 .. :try_end_5da} :catch_5f6

    .line 3940
    const/4 v3, 0x5

    :try_start_5db
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_5de
    .catch Ljava/lang/NumberFormatException; {:try_start_5db .. :try_end_5de} :catch_5e2

    .line 3954
    move-object/from16 v4, v71

    goto/16 :goto_643

    .line 3950
    .end local v2    # "sharedUserId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v81    # "userId":I
    :catch_5e2
    move-exception v0

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v13, v10

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    goto/16 :goto_8b8

    :catch_5f6
    move-exception v0

    move-object v4, v1

    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v71    # "idStr":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "name":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_5f8
    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    const/4 v14, 0x5

    move-object v13, v10

    move-object/from16 v10, v59

    goto/16 :goto_8b8

    .line 3946
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v0    # "userId":I
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v25    # "timeStampStr":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    .restart local v73    # "codePathStr":Ljava/lang/String;
    .restart local v74    # "resourcePathStr":Ljava/lang/String;
    .restart local v75    # "sharedUserId":I
    .restart local v76    # "firstInstallTime":J
    :cond_60a
    move/from16 v81, v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move/from16 v2, v75

    move-wide/from16 v82, v76

    const/4 v3, 0x5

    move-object/from16 v10, p0

    .line 3946
    .end local v0    # "userId":I
    .end local v3    # "timeStamp":J
    .end local v73    # "codePathStr":Ljava/lang/String;
    .end local v74    # "resourcePathStr":Ljava/lang/String;
    .end local v75    # "sharedUserId":I
    .end local v76    # "firstInstallTime":J
    .restart local v2    # "sharedUserId":I
    .restart local v14    # "resourcePathStr":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v81    # "userId":I
    .restart local v82    # "firstInstallTime":J
    :try_start_619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad userId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62b
    .catch Ljava/lang/NumberFormatException; {:try_start_619 .. :try_end_62b} :catch_679

    move-object/from16 v4, v71

    :try_start_62d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v71    # "idStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    const-string v5, " at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3946
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_643
    .catch Ljava/lang/NumberFormatException; {:try_start_62d .. :try_end_643} :catch_666

    .line 3954
    .end local v2    # "sharedUserId":I
    .end local v25    # "timeStampStr":Ljava/lang/String;
    .end local v81    # "userId":I
    :goto_643
    nop

    .line 3955
    move-object v15, v1

    move-object v7, v6

    move-object/from16 v17, v9

    move-wide/from16 v64, v12

    move-object/from16 v16, v14

    move/from16 v6, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    move-object/from16 v5, v58

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v12, v4

    move-object v9, v8

    move-object v13, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v33

    move-object/from16 v8, v34

    move-object/from16 v4, v57

    goto/16 :goto_8fd

    .line 3950
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_666
    move-exception v0

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v3, v4

    move-object v13, v10

    move-object/from16 v10, v59

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_8b8

    .end local v4    # "idStr":Ljava/lang/String;
    .restart local v71    # "idStr":Ljava/lang/String;
    :catch_679
    move-exception v0

    move-object/from16 v4, v71

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v3, v4

    move-object v13, v10

    move-object/from16 v10, v59

    move-object v4, v1

    move-object v1, v11

    .end local v71    # "idStr":Ljava/lang/String;
    .restart local v4    # "idStr":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .end local v24    # "realName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_68e
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v82    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "lastUpdateTime":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v28    # "lastUpdateTime":J
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    :catch_6aa
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    .restart local v82    # "firstInstallTime":J
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .end local v82    # "firstInstallTime":J
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v26    # "firstInstallTime":J
    .restart local v60    # "timeStamp":J
    :catch_6c6
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    .restart local v79    # "timeStamp":J
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v78    # "codePathStr":Ljava/lang/String;
    .end local v79    # "timeStamp":J
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .local v24, "timeStamp":J
    :catch_6e2
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v4, v3

    const/4 v3, 0x5

    goto :goto_6fb

    .line 3950
    .end local v19    # "systemStr":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    :catch_6ee
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v19, v12

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v19    # "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_6fb
    move-object v13, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move-object/from16 v24, v2

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    .line 3950
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v78    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_70c
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_739

    .line 3950
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    :catch_716
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_737

    .line 3950
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    :catch_720
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_735

    .line 3950
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    :catch_72a
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    move-object/from16 v33, v16

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_735
    move-object/from16 v57, v17

    :goto_737
    move-object/from16 v58, v18

    :goto_739
    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3950
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v78    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_74c
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    goto :goto_75b

    .line 3950
    .end local v34    # "primaryCpuAbiString":Ljava/lang/String;
    .local v7, "primaryCpuAbiString":Ljava/lang/String;
    :catch_753
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    move-object/from16 v34, v7

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .restart local v34    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_75b
    move-object v13, v14

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    goto/16 :goto_80a

    .end local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v2    # "realName":Ljava/lang/String;
    .local v7, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_779
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    move-object v13, v14

    goto :goto_789

    .line 3950
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    :catch_781
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object v8, v10

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_789
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v9, v34

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object/from16 v34, v7

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v7, v37

    goto/16 :goto_80a

    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v2    # "realName":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_7aa
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    goto :goto_7c4

    .line 3950
    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_7b2
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    goto :goto_7c3

    .line 3950
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    :catch_7ba
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_7c3
    move-object v6, v8

    :goto_7c4
    move-object v8, v10

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    goto :goto_802

    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v2    # "realName":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_7df
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_802
    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    .line 3950
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    :goto_80a
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v78    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_80c
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    .end local v3    # "idStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v4, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v4, "sharedIdStr":Ljava/lang/String;
    :catch_837
    move-exception v0

    move-object v11, v1

    move-object v1, v3

    move-object v13, v14

    move-object/from16 v38, v7

    move-object v1, v11

    goto :goto_848

    .line 3950
    .end local v36    # "uidError":Ljava/lang/String;
    .local v15, "uidError":Ljava/lang/String;
    :catch_83f
    move-exception v0

    move-object v11, v1

    move-object v1, v3

    move-object v13, v14

    move-object/from16 v38, v7

    move-object v1, v11

    move-object/from16 v36, v15

    .line 3950
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v15    # "uidError":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_848
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    .end local v3    # "idStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    .restart local v15    # "uidError":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .local v24, "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_86a
    move-exception v0

    move-object v11, v1

    move-object v13, v14

    const/4 v14, 0x5

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    .end local v1    # "name":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    goto :goto_8b8

    .line 3950
    .end local v11    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :catch_892
    move-exception v0

    move-object v13, v14

    const/4 v14, 0x5

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    .line 3951
    .end local v2    # "realName":Ljava/lang/String;
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v15    # "uidError":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .local v24, "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_8b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has bad userId "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3953
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3951
    invoke-static {v14, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3955
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move-object v11, v1

    move-object v12, v3

    move-object v15, v4

    move-object/from16 v78, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v59, v10

    move-object/from16 v10, v20

    move-object/from16 v1, v30

    move-object/from16 v3, v33

    move-object/from16 v2, v36

    move-object/from16 v4, v57

    move-object/from16 v5, v58

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v8, v34

    .end local v20    # "updateAvailable":Ljava/lang/String;
    .end local v21    # "categoryHint":I
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v34    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "uidError":Ljava/lang/String;
    .local v3, "installerPackageName":Ljava/lang/String;
    .local v4, "isOrphaned":Ljava/lang/String;
    .local v5, "volumeUuid":Ljava/lang/String;
    .local v6, "categoryHint":I
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v8, "primaryCpuAbiString":Ljava/lang/String;
    .local v9, "secondaryCpuAbiString":Ljava/lang/String;
    .local v10, "updateAvailable":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .local v12, "idStr":Ljava/lang/String;
    .local v15, "sharedIdStr":Ljava/lang/String;
    .local v16, "resourcePathStr":Ljava/lang/String;
    .local v17, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v78    # "codePathStr":Ljava/lang/String;
    :goto_8fd
    if-eqz v1, :cond_ba0

    .line 3956
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3957
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 3958
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 3959
    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3960
    iput v6, v1, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3961
    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3962
    iput-object v8, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3963
    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3964
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3966
    const-string v0, "enabled"

    move-object/from16 v14, p1

    move-object/from16 v84, v2

    move-object/from16 v85, v4

    const/4 v2, 0x0

    invoke-interface {v14, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3967
    .end local v2    # "uidError":Ljava/lang/String;
    .local v4, "enabledStr":Ljava/lang/String;
    .local v84, "uidError":Ljava/lang/String;
    .local v85, "isOrphaned":Ljava/lang/String;
    if-eqz v4, :cond_9a1

    .line 3969
    :try_start_935
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_939
    .catch Ljava/lang/NumberFormatException; {:try_start_935 .. :try_end_939} :catch_945

    move-object/from16 v86, v5

    const/4 v5, 0x0

    :try_start_93c
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_93f
    .catch Ljava/lang/NumberFormatException; {:try_start_93c .. :try_end_93f} :catch_943

    .line 3983
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .local v86, "volumeUuid":Ljava/lang/String;
    nop

    .line 3988
    move/from16 v87, v6

    goto :goto_9aa

    .line 3970
    :catch_943
    move-exception v0

    goto :goto_949

    .line 3970
    .end local v86    # "volumeUuid":Ljava/lang/String;
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    :catch_945
    move-exception v0

    move-object/from16 v86, v5

    const/4 v5, 0x0

    .line 3971
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v86    # "volumeUuid":Ljava/lang/String;
    :goto_949
    const-string/jumbo v2, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95a

    .line 3972
    move/from16 v87, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3972
    .end local v6    # "categoryHint":I
    .local v87, "categoryHint":I
    goto :goto_9a0

    .line 3973
    .end local v87    # "categoryHint":I
    .restart local v6    # "categoryHint":I
    :cond_95a
    move/from16 v87, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 3973
    .end local v6    # "categoryHint":I
    .restart local v87    # "categoryHint":I
    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_96b

    .line 3974
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9a0

    .line 3975
    :cond_96b
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_977

    .line 3976
    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_9a0

    .line 3978
    :cond_977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has bad enabled value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3981
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3978
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3983
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_9a0
    goto :goto_9aa

    .line 3985
    .end local v86    # "volumeUuid":Ljava/lang/String;
    .end local v87    # "categoryHint":I
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    .restart local v6    # "categoryHint":I
    :cond_9a1
    move-object/from16 v86, v5

    move/from16 v87, v6

    const/4 v5, 0x0

    .line 3985
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "categoryHint":I
    .restart local v86    # "volumeUuid":Ljava/lang/String;
    .restart local v87    # "categoryHint":I
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3988
    :goto_9aa
    if-eqz v3, :cond_9b1

    .line 3989
    iget-object v0, v13, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3992
    :cond_9b1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3994
    .local v0, "outerDepth":I
    :goto_9b5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v6, v2

    .line 3994
    .local v6, "type":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_b99

    const/4 v2, 0x3

    if-ne v6, v2, :cond_9cf

    .line 3995
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_9c7

    goto :goto_9cf

    .line 4050
    .end local v0    # "outerDepth":I
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_9c7
    move-object/from16 v89, v3

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    goto/16 :goto_b9f

    .line 3996
    .restart local v0    # "outerDepth":I
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_9cf
    :goto_9cf
    if-eq v6, v2, :cond_b7f

    const/4 v2, 0x4

    if-ne v6, v2, :cond_9e4

    .line 3997
    nop

    .line 3992
    move/from16 v88, v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_b8c

    .line 4000
    :cond_9e4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4002
    .local v2, "tagName":Ljava/lang/String;
    const-string v5, "disabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a05

    .line 4003
    const/4 v5, 0x0

    invoke-direct {v13, v1, v14, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 4049
    .end local v0    # "outerDepth":I
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .local v88, "outerDepth":I
    .local v89, "installerPackageName":Ljava/lang/String;
    .local v90, "enabledStr":Ljava/lang/String;
    .local v91, "type":I
    .local v92, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v95, "primaryCpuAbiString":Ljava/lang/String;
    :goto_9f4
    move/from16 v88, v0

    :goto_9f6
    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move/from16 v91, v6

    move-object/from16 v92, v7

    :goto_9fe
    move-object/from16 v95, v8

    const/4 v3, 0x1

    :goto_a01
    const/4 v4, 0x0

    :goto_a02
    const/4 v5, 0x5

    goto/16 :goto_b7e

    .line 4004
    .end local v88    # "outerDepth":I
    .end local v89    # "installerPackageName":Ljava/lang/String;
    .end local v90    # "enabledStr":Ljava/lang/String;
    .end local v91    # "type":I
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_a05
    const/4 v5, 0x0

    const-string v5, "enabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a13

    .line 4005
    const/4 v5, 0x0

    invoke-direct {v13, v1, v14, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_9f4

    .line 4006
    :cond_a13
    const/4 v5, 0x0

    const-string/jumbo v5, "sigs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a27

    .line 4007
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move/from16 v88, v0

    iget-object v0, v13, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 4007
    .end local v0    # "outerDepth":I
    .restart local v88    # "outerDepth":I
    invoke-virtual {v5, v14, v0}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_9f6

    .line 4008
    .end local v88    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_a27
    move/from16 v88, v0

    .line 4008
    .end local v0    # "outerDepth":I
    .restart local v88    # "outerDepth":I
    const-string/jumbo v0, "perms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a49

    .line 4009
    nop

    .line 4010
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4009
    invoke-virtual {v13, v14, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4011
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 4049
    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move v3, v5

    move/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    goto :goto_a01

    .line 4012
    :cond_a49
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa6

    .line 4013
    const-string/jumbo v0, "identifier"

    const/4 v5, 0x0

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4014
    .end local v4    # "enabledStr":Ljava/lang/String;
    .local v3, "id":J
    .restart local v89    # "installerPackageName":Ljava/lang/String;
    .restart local v90    # "enabledStr":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4015
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_a8b

    .line 4016
    iget-object v5, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move/from16 v91, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4016
    .end local v6    # "type":I
    .restart local v91    # "type":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v93, v0

    move-object/from16 v92, v7

    const/4 v7, 0x1

    add-int/lit8 v0, v18, 0x1

    .line 4016
    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v93, "refCt":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9f

    .line 4018
    .end local v91    # "type":I
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v93    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_a8b
    move-object/from16 v93, v0

    move/from16 v91, v6

    move-object/from16 v92, v7

    const/4 v7, 0x1

    .line 4018
    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v91    # "type":I
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v93    # "refCt":Ljava/lang/Integer;
    iget-object v0, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4020
    :goto_a9f
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 4021
    .end local v3    # "id":J
    .end local v93    # "refCt":Ljava/lang/Integer;
    goto/16 :goto_9fe

    .line 4021
    .end local v89    # "installerPackageName":Ljava/lang/String;
    .end local v90    # "enabledStr":Ljava/lang/String;
    .end local v91    # "type":I
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v3, "installerPackageName":Ljava/lang/String;
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_aa6
    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move/from16 v91, v6

    move-object/from16 v92, v7

    .line 4021
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v89    # "installerPackageName":Ljava/lang/String;
    .restart local v90    # "enabledStr":Ljava/lang/String;
    .restart local v91    # "type":I
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab9

    .line 4021
    .end local v2    # "tagName":Ljava/lang/String;
    goto/16 :goto_9fe

    .line 4023
    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_ab9
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad5

    .line 4024
    const-string/jumbo v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 4025
    .local v3, "id":J
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 4026
    .end local v3    # "id":J
    goto/16 :goto_9fe

    :cond_ad5
    const-string v0, "defined-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2f

    .line 4027
    const-string/jumbo v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4028
    .local v4, "id":J
    const-string v0, "alias"

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4029
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4030
    .local v3, "refCt":Ljava/lang/Integer;
    if-eqz v3, :cond_b16

    .line 4031
    iget-object v6, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v94, v3

    move-object/from16 v95, v8

    const/4 v3, 0x1

    add-int/lit8 v8, v18, 0x1

    .end local v3    # "refCt":Ljava/lang/Integer;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .local v94, "refCt":Ljava/lang/Integer;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b28

    .line 4033
    .end local v94    # "refCt":Ljava/lang/Integer;
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v3    # "refCt":Ljava/lang/Integer;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b16
    move-object/from16 v94, v3

    move-object/from16 v95, v8

    const/4 v3, 0x1

    .line 4033
    .end local v3    # "refCt":Ljava/lang/Integer;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v94    # "refCt":Ljava/lang/Integer;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    iget-object v6, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4035
    :goto_b28
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 4036
    .end local v0    # "alias":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v94    # "refCt":Ljava/lang/Integer;
    goto/16 :goto_a01

    .line 4036
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b2f
    move-object/from16 v95, v8

    const/4 v3, 0x1

    .line 4036
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    const-string v0, "domain-verification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3f

    .line 4037
    invoke-direct {v13, v14, v1}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_a01

    .line 4038
    :cond_b3f
    const-string v0, "child-package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b61

    .line 4039
    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v14, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4040
    .local v0, "childPackageName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v5, :cond_b5a

    .line 4041
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 4043
    :cond_b5a
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4044
    .end local v0    # "childPackageName":Ljava/lang/String;
    goto/16 :goto_a02

    .line 4045
    :cond_b61
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <package>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4046
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4045
    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4047
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4049
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_b7e
    goto :goto_b8c

    .line 3992
    .end local v88    # "outerDepth":I
    .end local v89    # "installerPackageName":Ljava/lang/String;
    .end local v90    # "enabledStr":Ljava/lang/String;
    .end local v91    # "type":I
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v3, "installerPackageName":Ljava/lang/String;
    .local v4, "enabledStr":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b7f
    move/from16 v88, v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 3992
    .end local v0    # "outerDepth":I
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v88    # "outerDepth":I
    .restart local v89    # "installerPackageName":Ljava/lang/String;
    .restart local v90    # "enabledStr":Ljava/lang/String;
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    :goto_b8c
    move/from16 v0, v88

    move-object/from16 v3, v89

    move-object/from16 v4, v90

    move-object/from16 v7, v92

    move-object/from16 v8, v95

    const/4 v5, 0x0

    goto/16 :goto_9b5

    .line 4050
    .end local v88    # "outerDepth":I
    .end local v89    # "installerPackageName":Ljava/lang/String;
    .end local v90    # "enabledStr":Ljava/lang/String;
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b99
    move-object/from16 v89, v3

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    .line 4050
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v89    # "installerPackageName":Ljava/lang/String;
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    :goto_b9f
    goto :goto_bb3

    .line 4051
    .end local v84    # "uidError":Ljava/lang/String;
    .end local v85    # "isOrphaned":Ljava/lang/String;
    .end local v86    # "volumeUuid":Ljava/lang/String;
    .end local v87    # "categoryHint":I
    .end local v89    # "installerPackageName":Ljava/lang/String;
    .end local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v95    # "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "uidError":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .local v4, "isOrphaned":Ljava/lang/String;
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    .local v6, "categoryHint":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_ba0
    move-object/from16 v14, p1

    move-object/from16 v84, v2

    move-object/from16 v89, v3

    move-object/from16 v85, v4

    move-object/from16 v86, v5

    move/from16 v87, v6

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    .end local v2    # "uidError":Ljava/lang/String;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "isOrphaned":Ljava/lang/String;
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "categoryHint":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v84    # "uidError":Ljava/lang/String;
    .restart local v85    # "isOrphaned":Ljava/lang/String;
    .restart local v86    # "volumeUuid":Ljava/lang/String;
    .restart local v87    # "categoryHint":I
    .restart local v89    # "installerPackageName":Ljava/lang/String;
    .restart local v92    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v95    # "primaryCpuAbiString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4053
    :goto_bb3
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1537
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1539
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1539
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_52

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1540
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_52

    .line 1541
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1542
    goto :goto_4

    .line 1544
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1546
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1547
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1548
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_51

    .line 1549
    :cond_35
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1549
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1552
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1554
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_4

    .line 1555
    :cond_52
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1592
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_7a

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1593
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_7a

    .line 1594
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1595
    goto :goto_4

    .line 1597
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1599
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1600
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_56

    .line 1601
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1601
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_56
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_79

    .line 1606
    :cond_60
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1609
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_79
    goto :goto_4

    .line 1610
    :cond_7a
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4112
    const/4 v0, 0x0

    .line 4113
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4114
    .local v1, "idStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4115
    .local v2, "pkgFlags":I
    const/4 v3, 0x0

    .line 4116
    .local v3, "pkgPrivateFlags":I
    const/4 v4, 0x0

    move-object v5, v4

    .line 4118
    .local v5, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x5

    :try_start_7
    const-string/jumbo v7, "name"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 4119
    const-string/jumbo v7, "userId"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 4120
    if-eqz v1, :cond_1e

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 4121
    .local v7, "userId":I
    :goto_1f
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "system"

    invoke-interface {p1, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4122
    or-int/lit8 v2, v2, 0x1

    .line 4124
    :cond_31
    if-nez v0, :cond_4c

    .line 4125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4125
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4128
    :cond_4c
    if-nez v7, :cond_77

    .line 4129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: shared-user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4129
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4134
    :cond_77
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v2, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    move-object v5, v4

    if-nez v4, :cond_9b

    .line 4136
    const/4 v4, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurred while parsing settings at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4137
    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_9b} :catch_9c

    .line 4145
    .end local v7    # "userId":I
    :cond_9b
    :goto_9b
    goto :goto_c5

    .line 4141
    :catch_9c
    move-exception v4

    .line 4142
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4142
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4147
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_c5
    if-eqz v5, :cond_125

    .line 4148
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 4150
    .local v4, "outerDepth":I
    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 4150
    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_124

    const/4 v7, 0x3

    if-ne v8, v7, :cond_dc

    .line 4151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_124

    .line 4152
    :cond_dc
    if-eq v8, v7, :cond_cb

    const/4 v7, 0x4

    if-ne v8, v7, :cond_e2

    .line 4153
    goto :goto_cb

    .line 4156
    :cond_e2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4157
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 4158
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_123

    .line 4159
    :cond_f7
    const-string/jumbo v9, "perms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 4160
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_123

    .line 4162
    :cond_108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4162
    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4164
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4166
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_123
    goto :goto_cb

    .line 4167
    .end local v4    # "outerDepth":I
    .end local v8    # "type":I
    :cond_124
    goto :goto_128

    .line 4168
    :cond_125
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4170
    :goto_128
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1170
    return-void

    .line 1172
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1173
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1174
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1175
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1176
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1177
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 1178
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 1172
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1181
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1182
    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1239
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 1240
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1241
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1242
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_14
    goto :goto_1a

    .line 1244
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1246
    :goto_1a
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1247
    return-void
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    .line 1185
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1186
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1e

    .line 1187
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_19

    .line 1188
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1189
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1e

    .line 1191
    :cond_19
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    .line 1194
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    return-void
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1250
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_14

    .line 1251
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1252
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1253
    .local v1, "index":I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1254
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_13
    goto :goto_19

    .line 1255
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1257
    :goto_19
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 4302
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 4303
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4305
    :cond_6
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .registers 29
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p6, "primaryCpuAbi"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p8, "pkgFlags"    # I
    .param p9, "pkgPrivateFlags"    # I
    .param p11, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p12, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p13, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .local p10, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    .line 845
    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 846
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v8, v1, :cond_67

    .line 847
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_2f

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    const-string v10, "<nothing>"

    :goto_31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    if-eqz v1, :cond_3e

    iget-object v10, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    const-string v10, "<nothing>"

    :goto_40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 847
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 851
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 855
    :cond_67
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x3e7

    if-nez v8, :cond_fb

    .line 856
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 857
    .local v8, "isSystem":Z
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    if-eqz v8, :cond_86

    const-string v12, " system"

    goto :goto_88

    :cond_86
    const-string v12, ""

    :goto_88
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 857
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    if-nez v8, :cond_f0

    .line 867
    and-int/lit8 v10, p8, 0x1

    if-eqz v10, :cond_eb

    if-nez p1, :cond_eb

    .line 868
    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v11

    .line 869
    .local v11, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v11, :cond_eb

    .line 870
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_eb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 878
    .local v13, "userInfo":Landroid/content/pm/UserInfo;
    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v9, :cond_df

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 879
    invoke-static {v1}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 880
    :cond_df
    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 883
    .end local v13    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_e5
    nop

    .line 870
    move-object/from16 v1, p2

    const/16 v9, 0x3e7

    goto :goto_c7

    .line 890
    .end local v11    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_eb
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_f2

    .line 892
    :cond_f0
    move-object/from16 v1, p5

    :goto_f2
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 893
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .end local v8    # "isSystem":Z
    goto :goto_fd

    .line 899
    :cond_fb
    move-object/from16 v1, p5

    :goto_fd
    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_115

    .line 900
    const/16 v8, 0x3e7

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_115

    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 901
    invoke-static {v9}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_115

    .line 902
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 906
    :cond_115
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_169

    .line 907
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 908
    .restart local v8    # "isSystem":Z
    const-string v9, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    if-eqz v8, :cond_132

    const-string v12, " system"

    goto :goto_134

    :cond_132
    const-string v12, ""

    :goto_134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " resource path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 908
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 915
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 920
    .end local v8    # "isSystem":Z
    :cond_169
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 921
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v9, -0xe0009

    and-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 925
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v9, p8, 0x1

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 926
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v9, p9, 0x8

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 928
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x20000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 930
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 932
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x80000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 934
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 935
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 936
    if-eqz v4, :cond_1b1

    .line 937
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 940
    :cond_1b1
    if-eqz v5, :cond_1be

    if-eqz v6, :cond_1be

    array-length v11, v5

    array-length v12, v6

    if-ne v11, v12, :cond_1be

    .line 942
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 943
    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_1c3

    .line 945
    :cond_1be
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 946
    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 948
    :goto_1c3
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2783
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2784
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2783
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2787
    goto :goto_35

    .line 2785
    :catch_12
    move-exception v0

    .line 2786
    .local v0, "ignored":Ljava/io/IOException;
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2696
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2698
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2701
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2702
    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 41
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "parentPackageName"    # Ljava/lang/String;
    .param p16, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p17, "usesStaticLibraryNames"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .local p15, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    .line 611
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 612
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v19, 0x0

    if-eqz v13, :cond_2e

    .line 613
    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_18

    .line 614
    return-object v13

    .line 616
    :cond_18
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 618
    return-object v19

    .line 620
    :cond_2e
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    move-object/from16 v1, v20

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    .end local v13    # "p":Lcom/android/server/pm/PackageSetting;
    .local v21, "p":Lcom/android/server/pm/PackageSetting;
    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 624
    .end local v21    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 625
    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 626
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-object v1

    .line 629
    :cond_6a
    return-object v19
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    .line 3045
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3046
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3048
    :cond_d
    return-void
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 638
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 639
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_10

    .line 640
    return-object v0

    .line 642
    :cond_10
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 644
    return-object v1

    .line 646
    :cond_26
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 647
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 648
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 649
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-object v0

    .line 652
    :cond_3a
    return-object v1
.end method

.method addUserToSettingLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 955
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_b

    .line 957
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_12

    .line 960
    :cond_b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 962
    :goto_12
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v0, :cond_17

    .line 968
    return-void

    .line 963
    :cond_17
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be assigned a valid UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 965
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be assigned a valid UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    .line 3308
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 3309
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    .line 3311
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3313
    .local v3, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    nop

    .line 3313
    .local v2, "i":I
    :goto_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 3314
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3315
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3313
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 3319
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "i":I
    .end local v3    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_49
    goto :goto_a

    .line 3322
    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "etc/preferred-apps"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3323
    .local v0, "preferredDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_1bd

    .line 3326
    :cond_63
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_85

    .line 3327
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    return-void

    .line 3332
    :cond_85
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    :goto_8a
    if-ge v2, v4, :cond_1bc

    aget-object v5, v1, v2

    .line 3333
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 3334
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    goto/16 :goto_1b0

    .line 3337
    :cond_bf
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_e2

    .line 3338
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preferred apps file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    goto/16 :goto_1b0

    .line 3342
    :cond_e2
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_fc

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading default preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_fc
    const/4 v6, 0x0

    move-object v7, v6

    .line 3345
    .local v7, "str":Ljava/io/InputStream;
    :try_start_fe
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    .line 3346
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 3347
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3350
    :goto_110
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v9, v6

    .line 3350
    .local v9, "type":I
    const/4 v10, 0x2

    if-eq v6, v10, :cond_11b

    if-eq v9, v3, :cond_11b

    .line 3350
    .end local v9    # "type":I
    goto :goto_110

    .line 3355
    .restart local v9    # "type":I
    :cond_11b
    if-eq v9, v10, :cond_13d

    .line 3356
    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not have start tag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_138} :catch_191
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_138} :catch_174
    .catchall {:try_start_fe .. :try_end_138} :catchall_172

    .line 3370
    nop

    .line 3372
    :try_start_139
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_1ae

    goto :goto_1ad

    .line 3359
    :cond_13d
    :try_start_13d
    const-string/jumbo v6, "preferred-activities"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16a

    .line 3360
    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not start with \'preferred-activities\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13d .. :try_end_165} :catch_191
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_165} :catch_174
    .catchall {:try_start_13d .. :try_end_165} :catchall_172

    .line 3370
    nop

    .line 3372
    :try_start_166
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_169} :catch_1ae

    goto :goto_1ad

    .line 3364
    :cond_16a
    :try_start_16a
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_16d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16a .. :try_end_16d} :catch_191
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_174
    .catchall {:try_start_16a .. :try_end_16d} :catchall_172

    .line 3370
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    nop

    .line 3372
    :try_start_16e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_1ae

    goto :goto_1ad

    .line 3370
    :catchall_172
    move-exception v1

    goto :goto_1b4

    .line 3367
    :catch_174
    move-exception v6

    .line 3368
    .local v6, "e":Ljava/io/IOException;
    :try_start_175
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18b
    .catchall {:try_start_175 .. :try_end_18b} :catchall_172

    .line 3370
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_1b0

    .line 3372
    :try_start_18d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_1ae

    goto :goto_1ad

    .line 3365
    :catch_191
    move-exception v6

    .line 3366
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_192
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a8
    .catchall {:try_start_192 .. :try_end_1a8} :catchall_172

    .line 3370
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v7, :cond_1b0

    .line 3372
    :try_start_1aa
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1ae

    .line 3374
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :goto_1ad
    goto :goto_1b0

    .line 3373
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "str":Ljava/io/InputStream;
    :catch_1ae
    move-exception v6

    goto :goto_1ad

    .line 3332
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :cond_1b0
    :goto_1b0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8a

    .line 3370
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "str":Ljava/io/InputStream;
    :goto_1b4
    if-eqz v7, :cond_1bb

    .line 3372
    :try_start_1b6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1ba

    .line 3374
    goto :goto_1bb

    .line 3373
    :catch_1ba
    move-exception v2

    .line 3374
    :cond_1bb
    :goto_1bb
    throw v1

    .line 3378
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :cond_1bc
    return-void

    .line 3324
    :cond_1bd
    :goto_1bd
    return-void
.end method

.method applyPendingPermissionGrantsLPw(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 478
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 479
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 480
    .local v0, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_84

    .line 484
    :cond_12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 485
    .local v1, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_83

    .line 489
    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 490
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_42

    .line 491
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find supposedly installed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_42
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 496
    .local v3, "perms":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    .line 497
    .local v5, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 498
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_6e

    .line 499
    iget-boolean v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v7, :cond_67

    .line 500
    invoke-virtual {v3, v6, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 502
    :cond_67
    const/16 v7, 0xb

    iget v8, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    invoke-virtual {v3, v6, p2, v7, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 504
    .end local v5    # "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6e
    goto :goto_4a

    .line 507
    :cond_6f
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_7e

    .line 509
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 511
    :cond_7e
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 512
    return-void

    .line 486
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "perms":Lcom/android/server/pm/permission/PermissionsState;
    :cond_83
    :goto_83
    return-void

    .line 481
    .end local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    :cond_84
    :goto_84
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1470
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1471
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    .line 1470
    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .line 1306
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1307
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1308
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1309
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 1313
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    .line 1314
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v1, :cond_50

    .line 1315
    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v1, v2

    .line 1316
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1317
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_79

    .line 1318
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1322
    :cond_50
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1323
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_79

    .line 1324
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and with domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_79
    :goto_79
    return-object v1
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .registers 28
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    .line 4180
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4181
    :try_start_9
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4182
    .local v0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 4183
    .local v4, "packagesCount":I
    new-array v5, v4, [Ljava/lang/String;

    .line 4184
    .local v5, "volumeUuids":[Ljava/lang/String;
    new-array v6, v4, [Ljava/lang/String;

    .line 4185
    .local v6, "names":[Ljava/lang/String;
    new-array v7, v4, [I

    .line 4186
    .local v7, "appIds":[I
    new-array v8, v4, [Ljava/lang/String;

    .line 4187
    .local v8, "seinfos":[Ljava/lang/String;
    new-array v9, v4, [I

    .line 4188
    .local v9, "targetSdkVersions":[I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4189
    .local v10, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_23
    if-ge v13, v4, :cond_a9

    .line 4190
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    .line 4191
    .local v15, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_9e

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v14, :cond_3c

    .line 4192
    nop

    .line 4189
    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v17, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :goto_36
    move-object/from16 v12, p4

    move-object/from16 v17, v0

    goto/16 :goto_a2

    .line 4196
    .end local v17    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3c
    const/16 v14, 0x3e7

    if-ne v11, v14, :cond_4c

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4197
    invoke-static {v14}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4c

    .line 4198
    invoke-virtual {v15, v12, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4199
    goto :goto_36

    .line 4207
    :cond_4c
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v14

    if-nez v14, :cond_66

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 4208
    invoke-static {v14}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_66

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4209
    invoke-static {v14}, Lcom/android/server/pm/OemPackageManagerHelper;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_63

    goto :goto_66

    .line 4210
    :cond_63
    move-object/from16 v12, p4

    goto :goto_73

    .line 4209
    :cond_66
    :goto_66
    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_9 .. :try_end_68} :catchall_113

    .line 4210
    move-object/from16 v12, p4

    :try_start_6a
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_73

    const/16 v16, 0x1

    goto :goto_75

    :cond_73
    :goto_73
    const/16 v16, 0x0

    :goto_75
    move/from16 v14, v16

    .line 4213
    .local v14, "shouldInstall":Z
    invoke-virtual {v15, v14, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4214
    if-nez v14, :cond_7f

    .line 4215
    invoke-virtual {v1, v15}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4219
    :cond_7f
    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    aput-object v0, v5, v13

    .line 4220
    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v0, v6, v13

    .line 4221
    iget v0, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v0, v7, v13

    .line 4222
    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v0, v8, v13

    .line 4223
    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v0, v9, v13

    .end local v14    # "shouldInstall":Z
    .end local v15    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_a2

    .line 4189
    .end local v17    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :cond_9e
    move-object/from16 v12, p4

    move-object/from16 v17, v0

    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .restart local v17    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :goto_a2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    const/4 v12, 0x0

    goto/16 :goto_23

    .line 4225
    .end local v10    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v13    # "i":I
    .end local v17    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    :cond_a9
    move-object/from16 v12, p4

    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_6a .. :try_end_ac} :catchall_118

    move-object v13, v5

    .end local v5    # "volumeUuids":[Ljava/lang/String;
    .local v13, "volumeUuids":[Ljava/lang/String;
    move-object v14, v6

    .end local v6    # "names":[Ljava/lang/String;
    .local v14, "names":[Ljava/lang/String;
    move-object v15, v7

    .end local v7    # "appIds":[I
    .local v15, "appIds":[I
    move-object/from16 v17, v8

    .end local v8    # "seinfos":[Ljava/lang/String;
    .local v17, "seinfos":[Ljava/lang/String;
    move-object/from16 v18, v9

    .end local v9    # "targetSdkVersions":[I
    .local v18, "targetSdkVersions":[I
    move v10, v4

    .line 4226
    .end local v4    # "packagesCount":I
    .local v10, "packagesCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b5
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ge v9, v10, :cond_f1

    .line 4227
    aget-object v0, v14, v9

    if-nez v0, :cond_c2

    .line 4228
    nop

    .line 4226
    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_ec

    .line 4231
    :cond_c2
    const/4 v0, 0x3

    move/from16 v19, v0

    .line 4233
    .local v19, "flags":I
    :try_start_c5
    aget-object v4, v13, v9

    aget-object v5, v14, v9

    const/4 v7, 0x3

    aget v8, v15, v9

    aget-object v0, v17, v9

    aget v20, v18, v9
    :try_end_d0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_c5 .. :try_end_d0} :catch_e0

    move-object/from16 v3, p2

    move v6, v11

    move/from16 v21, v9

    move-object v9, v0

    .end local v9    # "i":I
    .local v21, "i":I
    move/from16 v22, v10

    move/from16 v10, v20

    .end local v10    # "packagesCount":I
    .local v22, "packagesCount":I
    :try_start_da
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_dd
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_da .. :try_end_dd} :catch_de

    .line 4237
    goto :goto_ec

    .line 4235
    :catch_de
    move-exception v0

    goto :goto_e5

    .end local v21    # "i":I
    .end local v22    # "packagesCount":I
    .restart local v9    # "i":I
    .restart local v10    # "packagesCount":I
    :catch_e0
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    .line 4236
    .end local v9    # "i":I
    .end local v10    # "packagesCount":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v21    # "i":I
    .restart local v22    # "packagesCount":I
    :goto_e5
    const-string v3, "PackageSettings"

    const-string v4, "Failed to prepare app data"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4226
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v19    # "flags":I
    :goto_ec
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .local v0, "i":I
    move/from16 v10, v22

    goto :goto_b5

    .line 4239
    .end local v0    # "i":I
    .end local v22    # "packagesCount":I
    .restart local v10    # "packagesCount":I
    :cond_f1
    move/from16 v22, v10

    .end local v10    # "packagesCount":I
    .restart local v22    # "packagesCount":I
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 4240
    :try_start_f6
    invoke-virtual {v1, v2, v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4241
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_110

    .line 4244
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 4245
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->setGMSEnabledSetting(Landroid/os/UserHandle;I)V

    .line 4249
    :cond_10f
    return-void

    .line 4241
    :catchall_110
    move-exception v0

    :try_start_111
    monitor-exit v4
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw v0

    .line 4225
    .end local v13    # "volumeUuids":[Ljava/lang/String;
    .end local v14    # "names":[Ljava/lang/String;
    .end local v15    # "appIds":[I
    .end local v17    # "seinfos":[Ljava/lang/String;
    .end local v18    # "targetSdkVersions":[I
    .end local v22    # "packagesCount":I
    :catchall_113
    move-exception v0

    move-object/from16 v12, p4

    :goto_116
    :try_start_116
    monitor-exit v3
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_118

    throw v0

    :catchall_118
    move-exception v0

    goto :goto_116
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 551
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 552
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 553
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not an installed package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v1

    .line 556
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 558
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 559
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_59

    .line 560
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 562
    :cond_59
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    if-eqz p2, :cond_68

    .line 569
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 570
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 572
    .end local v1    # "newp":Lcom/android/server/pm/PackageSetting;
    :cond_68
    const/4 v1, 0x1

    return v1

    .line 574
    :cond_6a
    return v1
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5142
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 5143
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5144
    const-string/jumbo v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5145
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5144
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5147
    :cond_16
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    .line 5189
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5190
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    .line 5191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5193
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_30

    .line 5194
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 5195
    goto :goto_17

    .line 5197
    :cond_30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5198
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5199
    const-string v3, ", flags="

    .line 5200
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    .line 5199
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5201
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_17

    .line 5203
    :cond_59
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 4570
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    .line 4570
    if-eqz v9, :cond_196

    .line 4571
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4573
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_21
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4576
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4578
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4579
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4580
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4581
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4582
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4583
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    const-string v0, "?"

    :goto_5a
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4584
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4585
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_b5

    .line 4586
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "splt,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4587
    const-string v0, "base,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4588
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4589
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_b5

    .line 4590
    const/4 v13, 0x0

    .line 4590
    .local v13, "i":I
    :goto_85
    move v0, v13

    .line 4590
    .end local v13    # "i":I
    .local v0, "i":I
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b5

    .line 4591
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4592
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4593
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4590
    add-int/lit8 v13, v0, 0x1

    .line 4590
    .end local v0    # "i":I
    .restart local v13    # "i":I
    goto :goto_85

    .line 4597
    .end local v13    # "i":I
    :cond_b5
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_195

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4598
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    const-string v2, "-"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4600
    const-string/jumbo v2, "usr"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4601
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4602
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4603
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string v2, "I"

    goto :goto_f0

    :cond_ed
    const-string/jumbo v2, "i"

    :goto_f0
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string v2, "B"

    goto :goto_100

    :cond_fe
    const-string v2, "b"

    :goto_100
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4606
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    if-eqz v2, :cond_10e

    const-string v2, "SU"

    goto :goto_111

    :cond_10e
    const-string/jumbo v2, "su"

    :goto_111
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4607
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    if-eqz v2, :cond_11f

    const-string v2, "S"

    goto :goto_122

    :cond_11f
    const-string/jumbo v2, "s"

    :goto_122
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4608
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_131

    const-string/jumbo v2, "l"

    goto :goto_133

    :cond_131
    const-string v2, "L"

    :goto_133
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4609
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_141

    const-string v2, "IA"

    goto :goto_144

    :cond_141
    const-string/jumbo v2, "ia"

    :goto_144
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4610
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v2

    if-eqz v2, :cond_152

    const-string v2, "VPI"

    goto :goto_155

    :cond_152
    const-string/jumbo v2, "vpi"

    :goto_155
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4611
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v2

    .line 4612
    .local v2, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v2, :cond_163

    const-string v3, "HA"

    goto :goto_166

    :cond_163
    const-string/jumbo v3, "ha"

    :goto_166
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4613
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4614
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4615
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 4616
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4617
    if-eqz v3, :cond_186

    move-object v4, v3

    goto :goto_188

    :cond_186
    const-string v4, "?"

    :goto_188
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4618
    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4619
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4620
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "harmfulAppWarning":Ljava/lang/String;
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_b9

    .line 4621
    :cond_195
    return-void

    .line 4624
    :cond_196
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4625
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1a5

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_1a7

    :cond_1a5
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_1a7
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4626
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4627
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4630
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1d0

    .line 4631
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4632
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4635
    :cond_1d0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4637
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1ee

    .line 4638
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4640
    :cond_1ee
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4641
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4642
    if-nez v10, :cond_23e

    .line 4643
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4645
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4647
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4649
    :cond_23e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4650
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_26b

    .line 4651
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4652
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4654
    :cond_26b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4655
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_595

    .line 4656
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2b4

    .line 4657
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 4658
    .local v0, "parentPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4659
    .local v1, "pps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_292

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29d

    .line 4660
    :cond_292
    iget-object v2, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4662
    :cond_29d
    if-eqz v1, :cond_2b3

    .line 4663
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  parentPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4664
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_2ae

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_2b0

    :cond_2ae
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_2b0
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4666
    .end local v0    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_2b3
    goto :goto_315

    :cond_2b4
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_315

    .line 4667
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4668
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4669
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4669
    .local v1, "i":I
    :goto_2cb
    if-ge v1, v0, :cond_310

    .line 4670
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 4671
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4672
    .local v3, "cps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2ed

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f8

    .line 4673
    :cond_2ed
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4675
    :cond_2f8
    if-eqz v3, :cond_30d

    .line 4676
    if-lez v1, :cond_301

    .line 4677
    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4679
    :cond_301
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_308

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_30a

    :cond_308
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_30a
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4669
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "cps":Lcom/android/server/pm/PackageSetting;
    :cond_30d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2cb

    .line 4682
    .end local v1    # "i":I
    :cond_310
    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    .end local v0    # "childCount":I
    :cond_315
    :goto_315
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4685
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4686
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4687
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4688
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4689
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4691
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4692
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v1, :cond_38c

    .line 4693
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  privateFlags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4694
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4696
    :cond_38c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dataDir="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  supportsScreens=["

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4698
    const/4 v1, 0x1

    .line 4699
    .local v1, "first":Z
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3be

    .line 4700
    if-nez v1, :cond_3b7

    .line 4701
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4702
    :cond_3b7
    const/4 v1, 0x0

    .line 4703
    const-string/jumbo v2, "small"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    :cond_3be
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3d6

    .line 4706
    if-nez v1, :cond_3cf

    .line 4707
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4708
    :cond_3cf
    const/4 v1, 0x0

    .line 4709
    const-string/jumbo v2, "medium"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4711
    :cond_3d6
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_3ee

    .line 4712
    if-nez v1, :cond_3e7

    .line 4713
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4714
    :cond_3e7
    const/4 v1, 0x0

    .line 4715
    const-string/jumbo v2, "large"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4717
    :cond_3ee
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_407

    .line 4718
    if-nez v1, :cond_400

    .line 4719
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4720
    :cond_400
    const/4 v1, 0x0

    .line 4721
    const-string/jumbo v2, "xlarge"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4723
    :cond_407
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_41f

    .line 4724
    if-nez v1, :cond_418

    .line 4725
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4726
    :cond_418
    const/4 v1, 0x0

    .line 4727
    const-string/jumbo v2, "resizeable"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4729
    :cond_41f
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_436

    .line 4730
    if-nez v1, :cond_430

    .line 4731
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4732
    :cond_430
    const/4 v1, 0x0

    .line 4733
    const-string v2, "anyDensity"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4735
    :cond_436
    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4736
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_476

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_476

    .line 4737
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    const/4 v2, 0x0

    .line 4738
    .local v2, "i":I
    :goto_454
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_476

    .line 4739
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4740
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    add-int/lit8 v2, v2, 0x1

    goto :goto_454

    .line 4743
    .end local v2    # "i":I
    :cond_476
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v2, :cond_4a5

    .line 4744
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4745
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4746
    const-string/jumbo v2, "name:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4747
    const-string v2, " version:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 4749
    :cond_4a5
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_4e0

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e0

    .line 4750
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    const/4 v2, 0x0

    .line 4751
    .restart local v2    # "i":I
    :goto_4be
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e0

    .line 4752
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4751
    add-int/lit8 v2, v2, 0x1

    goto :goto_4be

    .line 4755
    .end local v2    # "i":I
    :cond_4e0
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_529

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 4756
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_529

    .line 4757
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesStaticLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4758
    const/4 v2, 0x0

    .line 4758
    .restart local v2    # "i":I
    :goto_4f9
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_529

    .line 4759
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4760
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " version:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v3, v3, v2

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 4758
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f9

    .line 4764
    .end local v2    # "i":I
    :cond_529
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_564

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4765
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_564

    .line 4766
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    const/4 v2, 0x0

    .line 4767
    .restart local v2    # "i":I
    :goto_542
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_564

    .line 4768
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4769
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4767
    add-int/lit8 v2, v2, 0x1

    goto :goto_542

    .line 4772
    .end local v2    # "i":I
    :cond_564
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_595

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_595

    .line 4774
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    const/4 v2, 0x0

    .line 4775
    .restart local v2    # "i":I
    :goto_57a
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_595

    .line 4776
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    add-int/lit8 v2, v2, 0x1

    goto :goto_57a

    .line 4780
    .end local v0    # "apkSigningVersion":I
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_595
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4781
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4782
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4784
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4785
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4786
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4788
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4789
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5e2

    .line 4790
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4791
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    :cond_5e2
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_5f3

    .line 4794
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4795
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    :cond_5f3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4798
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4799
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4800
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4801
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4802
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4804
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_64a

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_64a

    .line 4805
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4806
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4809
    :cond_64a
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_6d1

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6d1

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6d1

    .line 4810
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 4811
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4812
    const/4 v1, 0x0

    .line 4812
    .local v1, "i":I
    :goto_66b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d1

    .line 4813
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 4814
    .local v2, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz v10, :cond_684

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4815
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_684

    .line 4816
    goto :goto_6ce

    .line 4818
    :cond_684
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4819
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4820
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4821
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6b0

    .line 4822
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4824
    :cond_6b0
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6bd

    .line 4825
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4827
    :cond_6bd
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_6cb

    .line 4828
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4830
    :cond_6cb
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4812
    .end local v2    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_6ce
    add-int/lit8 v1, v1, 0x1

    goto :goto_66b

    .line 4834
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    .end local v1    # "i":I
    :cond_6d1
    if-nez v10, :cond_6d5

    if-eqz p9, :cond_719

    :cond_6d5
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_719

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_719

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4836
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_719

    .line 4837
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4838
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    const/4 v1, 0x0

    .line 4839
    .restart local v1    # "i":I
    :goto_6f6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_719

    .line 4840
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4841
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_70b

    .line 4842
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70b

    .line 4843
    goto :goto_716

    .line 4845
    :cond_70b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    .end local v2    # "perm":Ljava/lang/String;
    :goto_716
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f6

    .line 4849
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_719
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_721

    if-nez v10, :cond_721

    if-eqz p9, :cond_739

    .line 4850
    :cond_721
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4851
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4854
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_739
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_73d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_900

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4855
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4856
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4857
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4858
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4859
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4860
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4861
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4862
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4863
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4864
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7b6

    .line 4865
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4866
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4867
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4868
    const-string v1, " dialogMessage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4871
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    :cond_7b6
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4872
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4873
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4875
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4876
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4877
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4878
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4879
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4880
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4882
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    .line 4883
    .local v4, "overlayPaths":[Ljava/lang/String;
    if-eqz v4, :cond_823

    array-length v0, v4

    if-lez v0, :cond_823

    .line 4884
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4885
    array-length v0, v4

    const/4 v1, 0x0

    :goto_811
    if-ge v1, v0, :cond_823

    aget-object v2, v4, v1

    .line 4886
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4885
    .end local v2    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_811

    .line 4890
    :cond_823
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 4891
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v3, :cond_836

    .line 4892
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4893
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    :cond_836
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_881

    .line 4897
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 4898
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4900
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    .line 4899
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v17, v2

    move-object v2, v15

    .line 4899
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v17, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v15, v3

    move-object v3, v10

    .line 4899
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v15, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v18, v4

    move-object/from16 v4, v16

    .line 4899
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .local v18, "overlayPaths":[Ljava/lang/String;
    move-object v13, v5

    move/from16 v5, p9

    .line 4899
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v13, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4899
    .end local v17    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_885

    .line 4903
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v18    # "overlayPaths":[Ljava/lang/String;
    .restart local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4    # "overlayPaths":[Ljava/lang/String;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_881
    move-object v15, v3

    move-object/from16 v18, v4

    move-object v13, v5

    .line 4903
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v13    # "user":Landroid/content/pm/UserInfo;
    .restart local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v18    # "overlayPaths":[Ljava/lang/String;
    :goto_885
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4904
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_898

    .line 4905
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4909
    :cond_898
    if-nez v10, :cond_8fe

    .line 4910
    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4911
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_8cc

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8cc

    .line 4912
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4914
    .local v3, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_8b4

    .line 4917
    :cond_8cc
    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4918
    if-eqz v1, :cond_8fe

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8fe

    .line 4919
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4921
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4922
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_8e6

    .line 4925
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v18    # "overlayPaths":[Ljava/lang/String;
    :cond_8fe
    goto/16 :goto_73d

    .line 4926
    :cond_900
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4930
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 4930
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4931
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4932
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 4933
    .local v0, "printedSomething":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    .line 4934
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 4935
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4936
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4937
    goto :goto_28

    .line 4939
    :cond_4b
    if-eqz v12, :cond_58

    .line 4940
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 4941
    goto :goto_28

    .line 4944
    :cond_58
    if-nez p5, :cond_64

    if-eqz v13, :cond_64

    .line 4945
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_66

    .line 4948
    :cond_64
    move-object/from16 v9, p4

    :goto_66
    if-nez p5, :cond_79

    if-nez v0, :cond_79

    .line 4949
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 4950
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4951
    :cond_73
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    const/4 v0, 0x1

    .line 4954
    .end local v0    # "printedSomething":Z
    .local v16, "printedSomething":Z
    :cond_79
    move/from16 v16, v0

    const-string v5, "  "

    if-eqz p5, :cond_84

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    nop

    :cond_84
    if-eqz v13, :cond_89

    move/from16 v17, v3

    goto :goto_8b

    :cond_89
    move/from16 v17, v2

    :goto_8b
    move-object v0, v15

    move-object v1, v14

    move-object v2, v5

    move-object v3, v4

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v8, v18

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    .line 4956
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    nop

    .line 4934
    move/from16 v0, v16

    goto :goto_28

    .line 4958
    .end local v16    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_9c
    const/4 v0, 0x0

    .line 4959
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_110

    if-nez v12, :cond_110

    .line 4960
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4961
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_d4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    .line 4962
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    .line 4963
    goto :goto_b1

    .line 4965
    :cond_d4
    if-nez p5, :cond_ed

    .line 4966
    if-nez v0, :cond_e7

    .line 4967
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 4968
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4969
    :cond_e1
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    const/4 v0, 0x1

    .line 4972
    :cond_e7
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f3

    .line 4974
    :cond_ed
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4976
    :goto_f3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4977
    if-eqz p5, :cond_101

    const-string v8, " -> "

    goto :goto_103

    :cond_101
    const-string v8, ","

    :goto_103
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4978
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_b1

    .line 4982
    :cond_110
    const/4 v0, 0x0

    .line 4983
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_17b

    if-nez v12, :cond_17b

    .line 4984
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4985
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4986
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    .line 4987
    goto :goto_125

    .line 4989
    :cond_144
    if-nez p5, :cond_157

    if-nez v0, :cond_157

    .line 4990
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_151

    .line 4991
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4992
    :cond_151
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4993
    const/4 v0, 0x1

    .line 4995
    :cond_157
    const-string v10, "  "

    if-eqz p5, :cond_15f

    const-string v8, "dis"

    move-object v11, v8

    goto :goto_160

    :cond_15f
    move-object v11, v4

    :goto_160
    if-eqz v13, :cond_165

    move/from16 v17, v3

    goto :goto_167

    :cond_165
    move/from16 v17, v2

    :goto_167
    move-object v8, v15

    move-object v9, v14

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v18

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    .line 4997
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    nop

    .line 4984
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_125

    .line 4999
    :cond_17b
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5002
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 5004
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 5005
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_24

    .line 5006
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 5007
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 5005
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5009
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 5013
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    :goto_9
    move v4, v1

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_9

    :goto_d
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    .line 5015
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5072
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    return-void
.end method

.method dumpRestoredPermissionGrantsLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5077
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b2

    .line 5078
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5079
    const-string v0, "Restored (pending) permission grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5080
    const/4 v0, 0x0

    move v1, v0

    .local v1, "userIndex":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 5081
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 5082
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 5083
    .local v2, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_ab

    .line 5084
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5085
    .local v3, "userId":I
    const-string v4, "  User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5087
    move v4, v0

    .local v4, "pkgIndex":I
    :goto_39
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_ab

    .line 5088
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 5089
    .local v5, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v5, :cond_a8

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_a8

    .line 5090
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5091
    .local v6, "pkgName":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " :"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    .line 5094
    .local v8, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5095
    iget-object v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5096
    iget-boolean v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v9, :cond_83

    .line 5097
    const-string v9, " GRANTED"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5099
    :cond_83
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8e

    .line 5100
    const-string v9, " user_set"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5102
    :cond_8e
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_99

    .line 5103
    const-string v9, " user_fixed"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5105
    :cond_99
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_a4

    .line 5106
    const-string v9, " revoke_on_upgrade"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5108
    :cond_a4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5109
    .end local v8    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    goto :goto_64

    .line 5087
    .end local v5    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 5080
    .end local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .end local v3    # "userId":I
    .end local v4    # "pkgIndex":I
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 5114
    .end local v1    # "userIndex":I
    :cond_af
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5116
    :cond_b2
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5151
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_57

    .line 5152
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5153
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5154
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_2e

    .line 5155
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 5156
    goto :goto_15

    .line 5158
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5160
    const-string v2, ", flags="

    .line 5161
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5160
    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5162
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_15

    .line 5164
    :cond_57
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 5019
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 5019
    const/4 v0, 0x0

    .line 5020
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5021
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_27

    .line 5022
    goto :goto_11

    .line 5024
    :cond_27
    if-eqz v8, :cond_34

    .line 5025
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 5026
    goto :goto_11

    .line 5028
    :cond_34
    if-nez p5, :cond_104

    .line 5029
    if-nez v0, :cond_47

    .line 5030
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5031
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5032
    :cond_41
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    const/4 v0, 0x1

    .line 5035
    .end local v0    # "printedSomething":Z
    .local v11, "printedSomething":Z
    :cond_47
    move v11, v0

    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5036
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5037
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5038
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5039
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    const-string v12, "    "

    .line 5042
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5044
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 5045
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v13}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 5047
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v4, v5

    const/4 v14, 0x0

    move v3, v14

    :goto_89
    if-ge v3, v4, :cond_101

    aget v2, v5, v3

    .line 5048
    .local v2, "userId":I
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 5049
    .local v1, "gids":[I
    nop

    .line 5050
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    .line 5051
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a3

    goto :goto_aa

    .line 5047
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v1    # "gids":[I
    .end local v2    # "userId":I
    :cond_a3
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_fa

    .line 5052
    .restart local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .restart local v1    # "gids":[I
    .restart local v2    # "userId":I
    :cond_aa
    :goto_aa
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "User "

    .line 5052
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .local v16, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    const-string v2, "  "

    .line 5053
    .end local v2    # "userId":I
    .local v17, "userId":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_e8

    const/4 v0, 0x1

    move v15, v0

    goto :goto_e9

    :cond_e8
    move v15, v14

    :goto_e9
    move-object v0, v6

    move-object/from16 v18, v1

    move-object v1, v7

    .end local v1    # "gids":[I
    .local v18, "gids":[I
    move/from16 v19, v3

    move-object v3, v8

    move/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 5047
    .end local v16    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v17    # "userId":I
    .end local v18    # "gids":[I
    :goto_fa
    add-int/lit8 v3, v19, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_89

    .line 5058
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_101
    nop

    .line 5061
    move v0, v11

    goto :goto_119

    .line 5059
    .end local v11    # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_104
    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5061
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_119
    goto/16 :goto_11

    .line 5062
    :cond_11b
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5065
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5066
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 5067
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5066
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5069
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4545
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4546
    const/4 v0, 0x0

    .line 4546
    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 4547
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4548
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4549
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4550
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4551
    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4552
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4554
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4556
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4557
    const-string/jumbo v3, "sdkVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4558
    const-string v3, "databaseVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4559
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4560
    const-string v3, "fingerprint"

    iget-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4561
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4562
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4546
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4564
    .end local v0    # "i":I
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4565
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1279
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_15

    .line 1280
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1281
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1283
    :cond_15
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1270
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1271
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1272
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1274
    :cond_15
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1260
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1261
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1262
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1263
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1265
    :cond_15
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 25
    .param p1, "name"    # Ljava/lang/String;

    move-object/from16 v15, p0

    .line 578
    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 579
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_2c

    .line 580
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x0

    return-object v0

    .line 584
    :cond_2c
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_40

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_40

    .line 585
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 587
    :cond_40
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    move/from16 v18, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v19, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v1

    move-object v1, v14

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v17

    .end local v13    # "p":Lcom/android/server/pm/PackageSetting;
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 593
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1480
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1481
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_15

    .line 1482
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1483
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    :cond_15
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4389
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4390
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4393
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4391
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1909
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1910
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 1911
    const/4 v1, 0x0

    return v1

    .line 1913
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4397
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4398
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4399
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_17

    .line 4402
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4403
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4400
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1419
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method getDefaultDialerPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1432
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 4360
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4361
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1493
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4457
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4458
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4461
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4459
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4373
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4374
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4377
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    .line 4375
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1294
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1295
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1296
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_24
    const/4 v1, 0x0

    return-object v1

    .line 1300
    :cond_26
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1334
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1335
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1336
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1340
    :cond_26
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 1370
    if-nez p1, :cond_7

    .line 1371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1373
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1375
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1376
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1377
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1378
    goto :goto_16

    .line 1380
    :cond_3d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_16

    .line 1382
    :cond_41
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1489
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 532
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_5f

    if-eqz p4, :cond_5f

    .line 533
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 534
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 535
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_42

    .line 540
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 537
    :cond_42
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 543
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5
    .param p1, "uid"    # I

    .line 1229
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_17

    .line 1230
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1231
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1232
    .local v1, "index":I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return-object v2

    .line 1234
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .line 4328
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4329
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4331
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4334
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4482
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 4483
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4484
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4485
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4482
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4488
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "parentPackageName"    # Ljava/lang/String;
    .param p2, "childPackageName"    # Ljava/lang/String;

    .line 4339
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4340
    .local v0, "packageCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_47

    .line 4341
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4342
    .local v3, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4343
    goto :goto_44

    .line 4345
    :cond_1f
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4346
    goto :goto_44

    .line 4348
    :cond_28
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 4349
    .local v4, "childCount":I
    move v5, v1

    .local v5, "j":I
    :goto_2f
    if-ge v5, v4, :cond_44

    .line 4350
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4351
    .local v6, "currChildPackageName":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 4352
    const/4 v1, 0x1

    return v1

    .line 4349
    .end local v6    # "currChildPackageName":Ljava/lang/String;
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 4340
    .end local v3    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "childCount":I
    .end local v5    # "j":I
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4356
    .end local v2    # "i":I
    :cond_47
    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1003
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_e

    .line 1004
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1008
    :cond_e
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_24

    .line 1009
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1011
    :cond_24
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 1012
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 7
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4365
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4366
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    return v1

    .line 4368
    :cond_e
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4369
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4381
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4382
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4385
    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    .line 4383
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1475
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1476
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1477
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1497
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    return-void
.end method

.method public processRestoredPermissionGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I

    .line 2063
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2065
    return-void
.end method

.method pruneSharedUsersLPw()V
    .registers 9

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 658
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 659
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_2d

    .line 660
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    goto :goto_f

    .line 664
    :cond_2d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 665
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 666
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 667
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 669
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4c
    goto :goto_33

    .line 670
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_4d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_5e

    .line 671
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5e
    goto :goto_f

    .line 674
    :cond_5f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 675
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 677
    .end local v1    # "i":I
    :cond_72
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2022
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2024
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2026
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_b3

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1a

    .line 2027
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_b3

    .line 2028
    :cond_1a
    if-eq v2, v1, :cond_9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_20

    .line 2029
    goto :goto_9

    .line 2032
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2033
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 2034
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2035
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2036
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2037
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_69

    .line 2039
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2040
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_94

    .line 2041
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored IVI for existing app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2041
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 2045
    :cond_69
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_94

    .line 2047
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored IVI for pending app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2047
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_94
    :goto_94
    goto :goto_b1

    .line 2052
    :cond_95
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2052
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2055
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2057
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_b1
    goto/16 :goto_9

    .line 2058
    :cond_b3
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1639
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1641
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1642
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1642
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1643
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_55

    .line 1644
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1645
    goto :goto_9

    .line 1647
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1648
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1649
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1650
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1651
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_54

    .line 1652
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1654
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1655
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1657
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_54
    goto :goto_9

    .line 1658
    :cond_55
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1659
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_66

    .line 1661
    :cond_61
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1663
    :goto_66
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1616
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1616
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_67

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1617
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_67

    .line 1618
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1619
    goto :goto_4

    .line 1621
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 1623
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1625
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_66

    :cond_35
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1626
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1627
    .restart local v3    # "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1628
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_66

    .line 1629
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1631
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1632
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1634
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_66
    goto :goto_4

    .line 1635
    :cond_67
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2288
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2290
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 2290
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_e0

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2292
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_e0

    .line 2293
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2295
    goto :goto_4

    .line 2297
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2298
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 2299
    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2301
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 2302
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_52

    .line 2303
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2305
    goto :goto_4

    .line 2308
    :cond_52
    const-string/jumbo v7, "granted"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2309
    .local v7, "grantedStr":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v7, :cond_65

    .line 2310
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    goto :goto_65

    :cond_63
    move v3, v8

    nop

    .line 2312
    .local v3, "granted":Z
    :cond_65
    :goto_65
    const-string v9, "flags"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2313
    .local v5, "flagsStr":Ljava/lang/String;
    if-eqz v5, :cond_74

    .line 2314
    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    nop

    .line 2316
    .local v8, "flags":I
    :cond_74
    const/16 v9, 0xff

    const/4 v10, -0x1

    if-eqz v3, :cond_9d

    .line 2317
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_99

    .line 2319
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c0

    .line 2322
    :cond_99
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_c0

    .line 2326
    :cond_9d
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_bd

    .line 2328
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c0

    .line 2331
    :cond_bd
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2335
    .end local v3    # "granted":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "flagsStr":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "grantedStr":Ljava/lang/String;
    .end local v8    # "flags":I
    :goto_c0
    goto :goto_de

    .line 2336
    :cond_c1
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <permissions>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2336
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2340
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_de
    goto/16 :goto_4

    .line 2341
    :cond_e0
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 3051
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    .line 3051
    const/4 v2, 0x0

    .line 3052
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_47

    .line 3054
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 3055
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    const-string v0, "Need to read from backup settings file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3058
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3062
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_45} :catch_46

    .line 3068
    :cond_45
    goto :goto_47

    .line 3066
    :catch_46
    move-exception v0

    .line 3071
    :cond_47
    :goto_47
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3072
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3073
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3074
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3077
    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_97

    .line 3078
    :try_start_60
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_88

    .line 3079
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v7, "No settings file found\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    const-string v0, "No settings file; creating initial state"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3084
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3085
    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3086
    return v6

    .line 3088
    :cond_88
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    goto :goto_97

    .line 3225
    :catch_91
    move-exception v0

    goto/16 :goto_2f5

    .line 3220
    :catch_94
    move-exception v0

    goto/16 :goto_32c

    .line 3090
    :cond_97
    :goto_97
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 3091
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3094
    :goto_a5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .line 3094
    .local v8, "type":I
    const/4 v9, 0x2

    if-eq v0, v9, :cond_b0

    if-eq v8, v5, :cond_b0

    .line 3094
    .end local v8    # "type":I
    goto :goto_a5

    .line 3099
    .restart local v8    # "type":I
    :cond_b0
    if-eq v8, v9, :cond_c7

    .line 3100
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3103
    const-string v0, "PackageManager"

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    return v6

    .line 3108
    :cond_c7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3108
    .local v0, "outerDepth":I
    :goto_cb
    move v9, v0

    .line 3109
    .end local v0    # "outerDepth":I
    .local v9, "outerDepth":I
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    if-eq v0, v5, :cond_2f1

    const/4 v0, 0x3

    if-ne v8, v0, :cond_dc

    .line 3110
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v9, :cond_2f1

    .line 3111
    :cond_dc
    if-eq v8, v0, :cond_2ee

    if-ne v8, v3, :cond_e2

    .line 3112
    goto/16 :goto_2ee

    .line 3115
    :cond_e2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 3116
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 3117
    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3118
    :cond_f5
    const-string/jumbo v0, "permissions"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 3119
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3120
    :cond_105
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 3121
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3122
    :cond_115
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 3123
    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3124
    :cond_123
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 3124
    .end local v10    # "tagName":Ljava/lang/String;
    goto/16 :goto_2ed

    .line 3126
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_12e
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 3129
    invoke-virtual {v1, v7, v6}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2ed

    .line 3130
    :cond_13c
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 3133
    invoke-direct {v1, v7, v6}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2ed

    .line 3134
    :cond_14a
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 3137
    invoke-direct {v1, v7, v6}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2ed

    .line 3138
    :cond_157
    const-string v0, "default-browser"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 3139
    invoke-virtual {v1, v7, v6}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2ed

    .line 3140
    :cond_164
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 3141
    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3142
    :cond_172
    const-string v0, "cleaning-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1b2

    .line 3143
    const-string/jumbo v0, "name"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 3144
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v0, "user"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 3145
    .local v13, "userStr":Ljava/lang/String;
    const-string v0, "code"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_191
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_191} :catch_94
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_191} :catch_91

    move-object v11, v0

    .line 3146
    .local v11, "codeStr":Ljava/lang/String;
    if-eqz v12, :cond_1b0

    .line 3147
    const/4 v14, 0x0

    .line 3148
    .local v14, "userId":I
    move v15, v5

    .line 3150
    .local v15, "andCode":Z
    if-eqz v13, :cond_1a0

    .line 3151
    :try_start_198
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_198 .. :try_end_19c} :catch_19e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_198 .. :try_end_19c} :catch_94
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19c} :catch_91

    move v14, v0

    goto :goto_1a0

    .line 3153
    :catch_19e
    move-exception v0

    goto :goto_1a1

    .line 3154
    :cond_1a0
    :goto_1a0
    nop

    .line 3155
    :goto_1a1
    if-eqz v11, :cond_1a8

    .line 3156
    :try_start_1a3
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v15, v0

    .line 3158
    :cond_1a8
    new-instance v0, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v0, v14, v12, v15}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 3160
    .end local v11    # "codeStr":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "userStr":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "andCode":Z
    :cond_1b0
    goto/16 :goto_2ed

    :cond_1b2
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 3161
    const-string/jumbo v0, "new"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3162
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v12, "old"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3163
    .local v11, "oname":Ljava/lang/String;
    if-eqz v0, :cond_1d2

    if-eqz v11, :cond_1d2

    .line 3164
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3166
    .end local v0    # "nname":Ljava/lang/String;
    .end local v11    # "oname":Ljava/lang/String;
    :cond_1d2
    goto/16 :goto_2ed

    :cond_1d4
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 3167
    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ed

    .line 3168
    :cond_1e2
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_215

    .line 3170
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3172
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3175
    .local v11, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v12, "internal"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3176
    const-string v12, "external"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3177
    const-string v12, "fingerprint"

    .line 3178
    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3180
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2ed

    :cond_215
    const-string v0, "database-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 3182
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3184
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3187
    .restart local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v12, "internal"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3188
    const-string v12, "external"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3190
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2ed

    :cond_23d
    const-string/jumbo v0, "verifier"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    .line 3191
    const-string v0, "device"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a3 .. :try_end_24c} :catch_94
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_24c} :catch_91

    move-object v11, v0

    .line 3193
    .local v11, "deviceIdentity":Ljava/lang/String;
    :try_start_24d
    invoke-static {v11}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_253
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24d .. :try_end_253} :catch_254
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24d .. :try_end_253} :catch_94
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_253} :catch_91

    .line 3197
    goto :goto_26f

    .line 3194
    :catch_254
    move-exception v0

    .line 3195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_255
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Discard invalid verifier device id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3196
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3195
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "deviceIdentity":Ljava/lang/String;
    :goto_26f
    goto/16 :goto_2ed

    :cond_271
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    .line 3199
    const-string v0, "enforcement"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3200
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3201
    const-string v11, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28c

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_28e

    :cond_28c
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_28e
    iput-object v11, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3202
    .end local v0    # "enforcement":Ljava/lang/String;
    goto :goto_2ed

    :cond_291
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    .line 3203
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_2ed

    .line 3204
    :cond_2a2
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d0

    .line 3205
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3207
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3208
    .local v11, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v12, "sdkVersion"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3209
    const-string v12, "databaseVersion"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3210
    const-string v12, "fingerprint"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3211
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v11    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_2ed

    .line 3212
    :cond_2d0
    const-string v0, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3212
    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3216
    .end local v10    # "tagName":Ljava/lang/String;
    :goto_2ed
    nop

    .line 3108
    :cond_2ee
    :goto_2ee
    move v0, v9

    goto/16 :goto_cb

    .line 3218
    :cond_2f1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_255 .. :try_end_2f4} :catch_94
    .catch Ljava/io/IOException; {:try_start_255 .. :try_end_2f4} :catch_91

    .line 3218
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "outerDepth":I
    goto :goto_362

    .line 3225
    :goto_2f5
    nop

    .line 3226
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading settings: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3228
    const-string v3, "PackageManager"

    const-string v7, "Error reading package manager settings"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3228
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_363

    .line 3220
    :goto_32c
    nop

    .line 3221
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading settings: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3223
    const-string v3, "PackageManager"

    const-string v7, "Error reading package manager settings"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3229
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_362
    nop

    .line 3242
    :goto_363
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3244
    .local v0, "N":I
    move v3, v6

    .line 3244
    .local v3, "i":I
    :goto_36a
    if-ge v3, v0, :cond_3e3

    .line 3245
    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 3246
    .local v7, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v8

    .line 3247
    .local v8, "sharedUserId":I
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v9

    .line 3248
    .local v9, "idObj":Ljava/lang/Object;
    instance-of v10, v9, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_38d

    .line 3249
    move-object v10, v9

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 3250
    .local v10, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v10, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3251
    iget v11, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v11, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3252
    invoke-direct {v1, v7, v10}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3253
    .end local v10    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_3e0

    :cond_38d
    if-eqz v9, :cond_3b8

    .line 3254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not a shared uid\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3256
    .local v10, "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3258
    .end local v10    # "msg":Ljava/lang/String;
    goto :goto_3e0

    .line 3259
    :cond_3b8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not defined\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3261
    .restart local v10    # "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3262
    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3244
    .end local v7    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "sharedUserId":I
    .end local v9    # "idObj":Ljava/lang/Object;
    .end local v10    # "msg":Ljava/lang/String;
    :goto_3e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_36a

    .line 3265
    .end local v3    # "i":I
    :cond_3e3
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3267
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_40f

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3268
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f9

    goto :goto_40f

    .line 3276
    :cond_3f9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3fd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3277
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3278
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_3fd

    .line 3270
    :cond_40f
    :goto_40f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3271
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3272
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3274
    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3281
    :cond_41f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_423
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_437

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3282
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3283
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_423

    .line 3289
    :cond_437
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3290
    .local v3, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_441
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45f

    .line 3291
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3292
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v6

    .line 3293
    .local v6, "id":Ljava/lang/Object;
    if-eqz v6, :cond_45e

    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_45e

    .line 3294
    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3296
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "id":Ljava/lang/Object;
    :cond_45e
    goto :goto_441

    .line 3298
    :cond_45f
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read completed successfully: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3299
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shared uids\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3298
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3303
    return v5
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 54
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 1669
    move/from16 v15, p1

    const/4 v2, 0x0

    .line 1670
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v14

    .line 1671
    .local v14, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    .line 1672
    .local v13, "backupFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_47

    .line 1674
    :try_start_14
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1675
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1678
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1682
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_45} :catch_46

    .line 1688
    :cond_45
    goto :goto_47

    .line 1686
    :catch_46
    move-exception v0

    .line 1692
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v25, "str":Ljava/io/FileInputStream;
    :cond_47
    :goto_47
    move-object/from16 v25, v2

    const/4 v11, 0x6

    if-nez v25, :cond_135

    .line 1693
    :try_start_4c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_50} :catch_129
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_11e

    if-nez v0, :cond_e8

    .line 1694
    :try_start_52
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1702
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_74} :catch_dd
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_74} :catch_d3

    .line 1703
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move v3, v15

    move v11, v12

    move-object/from16 v12, v16

    move-object/from16 v30, v13

    move-object/from16 v13, v17

    .end local v13    # "backupFile":Ljava/io/File;
    .local v30, "backupFile":Ljava/io/File;
    move-object/from16 v31, v14

    move-object/from16 v14, v18

    .line 1703
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v28

    move-object/from16 v24, v29

    :try_start_b6
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_b9} :catch_c8
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_c2

    .line 1721
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    nop

    .line 1702
    move-object/from16 v13, v30

    move-object/from16 v14, v31

    const/4 v11, 0x6

    move/from16 v15, p1

    goto :goto_68

    .line 1884
    :catch_c2
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_fd

    .line 1877
    :catch_c8
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_106

    .line 1722
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_ce
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 1722
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    return-void

    .line 1884
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_d3
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    .line 1884
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_4f9

    .line 1877
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_dd
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    .line 1877
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_537

    .line 1724
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_e8
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 1724
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :try_start_ec
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_ee} :catch_114
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ee} :catch_10b

    move-object/from16 v15, v31

    :try_start_f0
    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_f3} :catch_101
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f8

    .line 1724
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v15, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v25, v0

    .line 1726
    move-object/from16 v14, v25

    goto :goto_13a

    .line 1884
    :catch_f8
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    .line 1884
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    .local v47, "userPackagesStateFile":Ljava/io/File;
    :goto_fd
    move/from16 v3, p1

    goto/16 :goto_4f9

    .line 1877
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v25    # "str":Ljava/io/FileInputStream;
    :catch_101
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    .line 1877
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_106
    move/from16 v3, p1

    :goto_108
    const/4 v5, 0x6

    goto/16 :goto_537

    .line 1884
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v25    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_10b
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    .line 1884
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_4f9

    .line 1877
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_114
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1877
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_537

    .line 1884
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .local v14, "userPackagesStateFile":Ljava/io/File;
    :catch_11e
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    .line 1884
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_4f9

    .line 1877
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_129
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    .line 1877
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_537

    .line 1726
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_135
    move-object/from16 v30, v13

    move-object v15, v14

    move-object/from16 v14, v25

    .line 1726
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    :goto_13a
    :try_start_13a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1727
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1730
    :goto_147
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13a .. :try_end_14b} :catch_530
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_14b} :catch_4f3

    move v3, v2

    .line 1730
    .local v3, "type":I
    const/4 v11, 0x2

    const/4 v6, 0x1

    if-eq v2, v11, :cond_153

    if-eq v3, v6, :cond_153

    .line 1730
    .end local v3    # "type":I
    goto :goto_147

    .line 1735
    .restart local v3    # "type":I
    :cond_153
    if-eq v3, v11, :cond_16b

    .line 1736
    :try_start_155
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    const/4 v2, 0x5

    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_162
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_155 .. :try_end_162} :catch_167
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_162} :catch_163

    .line 1739
    return-void

    .line 1884
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_163
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_fd

    .line 1877
    :catch_167
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_106

    .line 1742
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    :cond_16b
    const/4 v2, 0x0

    .line 1744
    .local v2, "maxAppLinkGeneration":I
    :try_start_16c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v13, v4

    .line 1745
    .local v13, "outerDepth":I
    const/4 v10, 0x0

    move v9, v2

    move-object v2, v10

    .line 1746
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    .local v9, "maxAppLinkGeneration":I
    :goto_174
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_178} :catch_530
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_178} :catch_4f3

    move v3, v4

    if-eq v4, v6, :cond_4d1

    const/4 v8, 0x3

    if-ne v3, v8, :cond_192

    .line 1748
    :try_start_17e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4
    :try_end_182
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17e .. :try_end_182} :catch_167
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_182} :catch_163

    if-le v4, v13, :cond_185

    goto :goto_192

    .line 1873
    :cond_185
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    goto/16 :goto_4dc

    .line 1749
    :cond_192
    :goto_192
    if-eq v3, v8, :cond_4ab

    if-ne v3, v12, :cond_1ac

    .line 1751
    nop

    .line 1745
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    goto/16 :goto_4be

    .line 1754
    :cond_1ac
    :try_start_1ac
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 1755
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ac .. :try_end_1b8} :catch_4a1
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b8} :catch_498

    if-eqz v4, :cond_40a

    .line 1756
    :try_start_1ba
    const-string/jumbo v4, "name"

    invoke-interface {v0, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1757
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;
    :try_end_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ba .. :try_end_1c9} :catch_401
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c9} :catch_3f8

    move-object/from16 v25, v5

    .line 1758
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v25, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v25, :cond_1ea

    .line 1759
    :try_start_1cd
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No package known for stopped package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cd .. :try_end_1e6} :catch_167
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1e6} :catch_163

    .line 1762
    nop

    .line 1745
    move-object/from16 v2, v25

    goto :goto_174

    .line 1765
    :cond_1ea
    :try_start_1ea
    const-string v2, "ceDataInode"

    move/from16 v33, v9

    const-wide/16 v8, 0x0

    .line 1765
    .end local v9    # "maxAppLinkGeneration":I
    .local v33, "maxAppLinkGeneration":I
    invoke-static {v0, v2, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v2, v4

    move-wide v4, v8

    .line 1767
    .local v2, "name":Ljava/lang/String;
    .local v4, "ceDataInode":J
    const-string/jumbo v8, "inst"

    invoke-static {v0, v8, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object v9, v7

    move v7, v8

    .line 1769
    .local v7, "installed":Z
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "stopped"

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    const/4 v12, 0x3

    .line 1771
    .local v8, "stopped":Z
    const-string/jumbo v6, "nl"

    invoke-static {v0, v6, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v39, v9

    move/from16 v12, v33

    move v9, v6

    .line 1776
    .end local v33    # "maxAppLinkGeneration":I
    .local v9, "notLaunched":Z
    .local v12, "maxAppLinkGeneration":I
    .local v39, "tagName":Ljava/lang/String;
    const-string v6, "blocked"

    invoke-interface {v0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1777
    .local v6, "blockedStr":Ljava/lang/String;
    if-nez v6, :cond_21f

    .line 1778
    move/from16 v16, v11

    goto :goto_223

    :cond_21f
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1779
    .local v16, "hidden":Z
    :goto_223
    const-string/jumbo v11, "hidden"

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1780
    .local v11, "hiddenStr":Ljava/lang/String;
    if-nez v11, :cond_22f

    .line 1781
    move/from16 v17, v16

    goto :goto_233

    :cond_22f
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_233
    move-wide/from16 v41, v4

    move-object v4, v10

    move/from16 v10, v17

    .line 1783
    .end local v4    # "ceDataInode":J
    .end local v16    # "hidden":Z
    .local v10, "hidden":Z
    .local v41, "ceDataInode":J
    const-string/jumbo v5, "suspended"

    const/4 v4, 0x0

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    move/from16 v26, v5

    .line 1785
    .local v26, "suspended":Z
    const-string/jumbo v4, "suspending-package"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, "suspendingPackage":Ljava/lang/String;
    const-string/jumbo v5, "suspend_dialog_message"

    move/from16 v45, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_254
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ea .. :try_end_254} :catch_401
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_254} :catch_3f8

    .line 1787
    .end local v3    # "type":I
    .local v45, "type":I
    move/from16 v27, v13

    move-object v13, v5

    .line 1789
    .local v13, "dialogMessage":Ljava/lang/String;
    .local v27, "outerDepth":I
    if-eqz v26, :cond_260

    if-nez v4, :cond_260

    .line 1790
    :try_start_25b
    const-string v3, "android"
    :try_end_25d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25b .. :try_end_25d} :catch_167
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_25d} :catch_163

    .line 1793
    .end local v4    # "suspendingPackage":Ljava/lang/String;
    .local v3, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v28, v3

    goto :goto_262

    .line 1793
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    .restart local v4    # "suspendingPackage":Ljava/lang/String;
    :cond_260
    move-object/from16 v28, v4

    .line 1793
    .end local v4    # "suspendingPackage":Ljava/lang/String;
    .local v28, "suspendingPackage":Ljava/lang/String;
    :goto_262
    :try_start_262
    const-string v3, "blockUninstall"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v29, v3

    .line 1795
    .local v29, "blockUninstall":Z
    const-string/jumbo v3, "instant-app"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    .line 1797
    .local v16, "instantApp":Z
    const-string/jumbo v3, "virtual-preload"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 1799
    .local v17, "virtualPreload":Z
    const-string v3, "enabled"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v31, v6

    const/4 v4, 0x1

    move v6, v3

    .line 1801
    .local v6, "enabled":I
    .local v31, "blockedStr":Ljava/lang/String;
    const-string v3, "enabledCaller"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1803
    .local v18, "enabledCaller":Ljava/lang/String;
    const-string/jumbo v3, "harmful-app-warning"

    .line 1804
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1805
    .local v24, "harmfulAppWarning":Ljava/lang/String;
    const-string v3, "domainVerificationStatus"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1808
    .local v21, "verifState":I
    const-string v3, "app-link-generation"

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    .line 1810
    .local v5, "linkGeneration":I
    if-le v5, v12, :cond_2a5

    .line 1811
    move v3, v5

    .line 1813
    .end local v12    # "maxAppLinkGeneration":I
    .local v3, "maxAppLinkGeneration":I
    move/from16 v33, v3

    goto :goto_2a7

    .line 1813
    .end local v3    # "maxAppLinkGeneration":I
    .restart local v12    # "maxAppLinkGeneration":I
    :cond_2a5
    move/from16 v33, v12

    .line 1813
    .end local v12    # "maxAppLinkGeneration":I
    .restart local v33    # "maxAppLinkGeneration":I
    :goto_2a7
    const-string/jumbo v3, "install-reason"

    const/4 v12, 0x0

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 1816
    .local v23, "installReason":I
    const/4 v3, 0x0

    .line 1817
    .local v3, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1818
    .local v19, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 1819
    .local v20, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v22, 0x0

    .line 1821
    .local v22, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    move-object/from16 v37, v3

    move-object/from16 v40, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v22

    .line 1821
    .end local v3    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v22    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v34, "packageDepth":I
    .local v37, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v40, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v43, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v44, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :goto_2c2
    move/from16 v3, v34

    .line 1822
    .end local v34    # "packageDepth":I
    .local v3, "packageDepth":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_2c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_262 .. :try_end_2c8} :catch_401
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_2c8} :catch_3f8

    move/from16 v47, v12

    .line 1822
    .end local v45    # "type":I
    .local v47, "type":I
    if-eq v12, v4, :cond_38f

    move/from16 v12, v47

    const/4 v4, 0x3

    if-ne v12, v4, :cond_2de

    .line 1824
    .end local v47    # "type":I
    .local v12, "type":I
    :try_start_2d1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_2d8

    goto :goto_2de

    .line 1848
    :cond_2d8
    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_395

    .line 1825
    :cond_2de
    :goto_2de
    const/4 v4, 0x3

    if-eq v12, v4, :cond_381

    const/4 v4, 0x4

    if-ne v12, v4, :cond_2eb

    .line 1827
    nop

    .line 1821
    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_385

    .line 1829
    :cond_2eb
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v19, -0x1

    move/from16 v48, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 1829
    .end local v3    # "packageDepth":I
    .local v48, "packageDepth":I
    move-object/from16 v49, v11

    .line 1829
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .local v49, "hiddenStr":Ljava/lang/String;
    const v11, -0x78da70f9

    if-eq v3, v11, :cond_331

    const v11, -0x75017ede

    if-eq v3, v11, :cond_326

    const v11, -0x5ee8613f

    if-eq v3, v11, :cond_31a

    const v11, -0x54ce12c2

    if-eq v3, v11, :cond_30e

    goto :goto_33b

    :cond_30e
    const-string/jumbo v3, "suspended-launcher-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    const/16 v19, 0x3

    goto :goto_33b

    :cond_31a
    const-string/jumbo v3, "suspended-app-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    const/16 v19, 0x2

    goto :goto_33b

    :cond_326
    const-string v3, "enabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    const/16 v19, 0x0

    goto :goto_33b

    :cond_331
    const-string v3, "disabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33b

    const/16 v19, 0x1

    :cond_33b
    :goto_33b
    packed-switch v19, :pswitch_data_56e

    .line 1843
    const-string v3, "PackageSettings"

    goto :goto_35d

    .line 1840
    :pswitch_341
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v44, v3

    .line 1841
    goto :goto_385

    .line 1837
    :pswitch_348
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v43, v3

    .line 1838
    goto :goto_385

    .line 1834
    :pswitch_34f
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v40, v3

    .line 1835
    goto :goto_385

    .line 1831
    :pswitch_356
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v37, v3

    .line 1832
    goto :goto_385

    .line 1843
    :goto_35d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " under tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pkg"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_380
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d1 .. :try_end_380} :catch_167
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_380} :catch_163

    goto :goto_385

    .line 1821
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .restart local v3    # "packageDepth":I
    .restart local v11    # "hiddenStr":Ljava/lang/String;
    :cond_381
    move/from16 v48, v3

    move-object/from16 v49, v11

    .line 1821
    .end local v3    # "packageDepth":I
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :goto_385
    move/from16 v45, v12

    move/from16 v34, v48

    move-object/from16 v11, v49

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2c2

    .line 1848
    .end local v12    # "type":I
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .restart local v3    # "packageDepth":I
    .restart local v11    # "hiddenStr":Ljava/lang/String;
    .restart local v47    # "type":I
    :cond_38f
    move/from16 v48, v3

    move-object/from16 v49, v11

    move/from16 v12, v47

    .line 1848
    .end local v3    # "packageDepth":I
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .end local v47    # "type":I
    .restart local v12    # "type":I
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :goto_395
    if-eqz v29, :cond_3aa

    .line 1849
    move/from16 v4, p1

    const/4 v11, 0x1

    :try_start_39a
    invoke-virtual {v1, v4, v2, v11}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_39d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39a .. :try_end_39d} :catch_3a4
    .catch Ljava/io/IOException; {:try_start_39a .. :try_end_39d} :catch_39e

    goto :goto_3ad

    .line 1884
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v12    # "type":I
    .end local v13    # "dialogMessage":Ljava/lang/String;
    .end local v16    # "instantApp":Z
    .end local v17    # "virtualPreload":Z
    .end local v18    # "enabledCaller":Ljava/lang/String;
    .end local v21    # "verifState":I
    .end local v23    # "installReason":I
    .end local v24    # "harmfulAppWarning":Ljava/lang/String;
    .end local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "suspended":Z
    .end local v27    # "outerDepth":I
    .end local v28    # "suspendingPackage":Ljava/lang/String;
    .end local v29    # "blockUninstall":Z
    .end local v31    # "blockedStr":Ljava/lang/String;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "tagName":Ljava/lang/String;
    .end local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "ceDataInode":J
    .end local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    :catch_39e
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_4f9

    .line 1877
    :catch_3a4
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_108

    .line 1851
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "linkGeneration":I
    .restart local v6    # "enabled":I
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v12    # "type":I
    .restart local v13    # "dialogMessage":Ljava/lang/String;
    .restart local v16    # "instantApp":Z
    .restart local v17    # "virtualPreload":Z
    .restart local v18    # "enabledCaller":Ljava/lang/String;
    .restart local v21    # "verifState":I
    .restart local v23    # "installReason":I
    .restart local v24    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "suspended":Z
    .restart local v27    # "outerDepth":I
    .restart local v28    # "suspendingPackage":Ljava/lang/String;
    .restart local v29    # "blockUninstall":Z
    .restart local v31    # "blockedStr":Ljava/lang/String;
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "tagName":Ljava/lang/String;
    .restart local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "ceDataInode":J
    .restart local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :cond_3aa
    move/from16 v4, p1

    const/4 v11, 0x1

    :goto_3ad
    move-object/from16 v32, v2

    move-object/from16 v2, v25

    .line 1851
    .end local v2    # "name":Ljava/lang/String;
    .local v32, "name":Ljava/lang/String;
    move/from16 v34, v48

    move v3, v4

    .line 1851
    .end local v48    # "packageDepth":I
    .restart local v34    # "packageDepth":I
    move/from16 v36, v11

    move-object/from16 v35, v49

    const/16 v38, 0x2

    move/from16 v11, v26

    .line 1851
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .local v35, "hiddenStr":Ljava/lang/String;
    move/from16 v45, v12

    const/16 v46, 0x4

    move-object/from16 v12, v28

    .line 1851
    .end local v12    # "type":I
    .restart local v45    # "type":I
    move-object/from16 v50, v14

    move-object/from16 v14, v43

    .line 1851
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v50, "str":Ljava/io/FileInputStream;
    move-object/from16 v47, v15

    move-object/from16 v15, v44

    .line 1851
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v47, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v19, v37

    move-object/from16 v20, v40

    move/from16 v22, v5

    move v1, v4

    move/from16 v51, v36

    move/from16 v36, v5

    move-wide/from16 v4, v41

    const/16 v41, 0x0

    move/from16 v42, v51

    :try_start_3db
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_3de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3db .. :try_end_3de} :catch_3f0
    .catch Ljava/io/IOException; {:try_start_3db .. :try_end_3de} :catch_3e8

    .line 1856
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v13    # "dialogMessage":Ljava/lang/String;
    .end local v16    # "instantApp":Z
    .end local v17    # "virtualPreload":Z
    .end local v18    # "enabledCaller":Ljava/lang/String;
    .end local v21    # "verifState":I
    .end local v23    # "installReason":I
    .end local v24    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "suspended":Z
    .end local v28    # "suspendingPackage":Ljava/lang/String;
    .end local v29    # "blockUninstall":Z
    .end local v31    # "blockedStr":Ljava/lang/String;
    .end local v32    # "name":Ljava/lang/String;
    .end local v34    # "packageDepth":I
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "ceDataInode":J
    .end local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    nop

    .line 1871
    move v3, v1

    move-object/from16 v2, v25

    move/from16 v9, v33

    move-object/from16 v1, p0

    goto/16 :goto_487

    .line 1884
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "outerDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v39    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    :catch_3e8
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_4f9

    .line 1877
    :catch_3f0
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_108

    .line 1884
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_3f8
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_49d

    .line 1877
    :catch_401
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_4a6

    .line 1856
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "type":I
    .local v7, "tagName":Ljava/lang/String;
    .local v9, "maxAppLinkGeneration":I
    .local v13, "outerDepth":I
    :cond_40a
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v39, v7

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v1, p1

    move v12, v9

    .end local v3    # "type":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v12, "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v39    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :try_start_41f
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v4, v39

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_428
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41f .. :try_end_428} :catch_490
    .catch Ljava/io/IOException; {:try_start_41f .. :try_end_428} :catch_488

    .line 1856
    .end local v39    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    if-eqz v3, :cond_435

    .line 1857
    move v3, v1

    move-object/from16 v1, p0

    :try_start_42d
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_486

    .line 1884
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    :catch_431
    move-exception v0

    goto :goto_48c

    .line 1877
    :catch_433
    move-exception v0

    goto :goto_494

    .line 1858
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    :cond_435
    move v3, v1

    move-object/from16 v1, p0

    const-string/jumbo v5, "persistent-preferred-activities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_445

    .line 1859
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_486

    .line 1860
    :cond_445
    const-string v5, "crossProfile-intent-filters"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_451

    .line 1861
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_486

    .line 1862
    :cond_451
    const-string v5, "default-apps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 1863
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_486

    .line 1864
    :cond_45d
    const-string v5, "block-uninstall-packages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_469

    .line 1865
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_486

    .line 1867
    :cond_469
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <stopped-packages>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1867
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_486
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42d .. :try_end_486} :catch_433
    .catch Ljava/io/IOException; {:try_start_42d .. :try_end_486} :catch_431

    .line 1871
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_486
    move v9, v12

    .line 1871
    .end local v12    # "maxAppLinkGeneration":I
    .restart local v9    # "maxAppLinkGeneration":I
    :goto_487
    goto :goto_4bf

    .line 1884
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    :catch_488
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    .line 1884
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_48c
    move-object/from16 v14, v50

    goto/16 :goto_4f9

    .line 1877
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :catch_490
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    .line 1877
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_494
    move-object/from16 v14, v50

    goto/16 :goto_108

    .line 1884
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_498
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_49d
    move/from16 v3, p1

    .line 1884
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4f9

    .line 1877
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4a1
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_4a6
    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1877
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_537

    .line 1745
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_4ab
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    .end local v3    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :goto_4be
    move v9, v12

    .line 1745
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :goto_4bf
    move/from16 v13, v27

    move/from16 v11, v38

    move-object/from16 v10, v41

    move/from16 v6, v42

    move/from16 v3, v45

    move/from16 v12, v46

    move-object/from16 v15, v47

    move-object/from16 v14, v50

    goto/16 :goto_174

    .line 1873
    :cond_4d1
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    .line 1873
    .end local v3    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :goto_4dc
    move-object/from16 v4, v50

    :try_start_4de
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1875
    .end local v50    # "str":Ljava/io/FileInputStream;
    .local v4, "str":Ljava/io/FileInputStream;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v5, v3, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4e8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4de .. :try_end_4e8} :catch_4ef
    .catch Ljava/io/IOException; {:try_start_4de .. :try_end_4e8} :catch_4ec

    .line 1889
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    nop

    .line 1890
    move-object v14, v4

    goto/16 :goto_56d

    .line 1884
    :catch_4ec
    move-exception v0

    move-object v14, v4

    goto :goto_4f9

    .line 1877
    :catch_4ef
    move-exception v0

    move-object v14, v4

    goto/16 :goto_108

    .line 1884
    .end local v4    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4f3
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    .line 1885
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_4f9
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1887
    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_56d

    .line 1877
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_530
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1878
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_537
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1881
    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1889
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 1890
    :goto_56d
    return-void

    :pswitch_data_56e
    .packed-switch 0x0
        :pswitch_356
        :pswitch_34f
        :pswitch_348
        :pswitch_341
    .end packed-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1510
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1510
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_81

    .line 1512
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1513
    goto :goto_4

    .line 1516
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_65

    .line 1518
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1519
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 1520
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_64

    .line 1522
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1524
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1522
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1527
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_64
    goto :goto_80

    .line 1528
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1530
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1532
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_80
    goto :goto_4

    .line 1533
    :cond_81
    return-void
.end method

.method readStoppedLPw()V
    .registers 16

    .line 2426
    const/4 v0, 0x0

    .line 2427
    .local v0, "str":Ljava/io/FileInputStream;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_45

    .line 2429
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 2430
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    const-string v1, "Need to read from backup stopped packages file"

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2433
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2437
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_43} :catch_44

    .line 2443
    :cond_43
    goto :goto_45

    .line 2441
    :catch_44
    move-exception v1

    .line 2447
    :cond_45
    :goto_45
    const/4 v1, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_8a

    .line 2448
    :try_start_49
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 2449
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No stopped packages file found\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    const-string v4, "No stopped packages file file; assuming all started"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2455
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2456
    .local v4, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2457
    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2458
    .end local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_67

    .line 2459
    :cond_7a
    return-void

    .line 2461
    :cond_7b
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    goto :goto_8a

    .line 2518
    :catch_84
    move-exception v2

    goto/16 :goto_137

    .line 2511
    :catch_87
    move-exception v2

    goto/16 :goto_16e

    .line 2463
    :cond_8a
    :goto_8a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2464
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2467
    :goto_92
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .line 2467
    .local v7, "type":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v8, :cond_9e

    if-eq v7, v9, :cond_9e

    .line 2467
    .end local v7    # "type":I
    goto :goto_92

    .line 2472
    .restart local v7    # "type":I
    :cond_9e
    if-eq v7, v8, :cond_ae

    .line 2473
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    const/4 v2, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2476
    return-void

    .line 2479
    :cond_ae
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2480
    .local v6, "outerDepth":I
    :cond_b2
    :goto_b2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v9, :cond_133

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c2

    .line 2482
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_133

    .line 2483
    :cond_c2
    if-eq v7, v8, :cond_b2

    if-ne v7, v2, :cond_c7

    .line 2485
    goto :goto_b2

    .line 2488
    :cond_c7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2489
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_115

    .line 2490
    const-string/jumbo v10, "name"

    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2491
    .local v10, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 2492
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v11, :cond_fb

    .line 2493
    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2494
    const-string v12, "1"

    const-string/jumbo v13, "nl"

    invoke-interface {v4, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 2495
    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_111

    .line 2498
    :cond_fb
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_111
    :goto_111
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2502
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_132

    .line 2503
    :cond_115
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2504
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2503
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2507
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_132
    goto :goto_b2

    .line 2509
    :cond_133
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_136} :catch_87
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_136} :catch_84

    .line 2509
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "outerDepth":I
    .end local v7    # "type":I
    goto :goto_1a4

    .line 2518
    :goto_137
    nop

    .line 2519
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2521
    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2521
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1a5

    .line 2511
    :goto_16e
    nop

    .line 2512
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2515
    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2524
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1a4
    nop

    .line 2525
    :goto_1a5
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outPs"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2378
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2380
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 2380
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2381
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    .line 2382
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2383
    goto :goto_4

    .line 2385
    :cond_1b
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2388
    .local v3, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2390
    .local v4, "libVersion":J
    :try_start_2c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_30} :catch_32

    move-wide v4, v6

    .line 2393
    goto :goto_33

    .line 2391
    :catch_32
    move-exception v6

    .line 2395
    :goto_33
    if-eqz v1, :cond_4f

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4f

    .line 2396
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2398
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2402
    :cond_4f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2403
    .end local v1    # "libName":Ljava/lang/String;
    .end local v3    # "libVersionStr":Ljava/lang/String;
    .end local v4    # "libVersion":J
    goto :goto_4

    .line 2404
    :cond_53
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 4273
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4276
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4277
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4280
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4281
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_57

    .line 4282
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4283
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4284
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4285
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4286
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4287
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4288
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_4e

    .line 4289
    const/4 v5, 0x1

    .line 4290
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4292
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_4e
    goto :goto_38

    .line 4293
    :cond_4f
    if-eqz v5, :cond_54

    .line 4294
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4281
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 4297
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_57
    monitor-exit v0

    .line 4298
    return-void

    .line 4297
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1386
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1387
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_26

    .line 1388
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_24

    .line 1389
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_24
    const/4 v1, 0x0

    return v1

    .line 1393
    :cond_26
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1394
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget v3, p2, v2

    .line 1400
    .local v3, "userId":I
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1399
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1402
    :cond_f
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1145
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_42

    .line 1146
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1148
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_3a

    .line 1149
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1150
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 1151
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 1153
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    .line 1156
    :cond_3a
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 1157
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1160
    :cond_42
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4252
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4253
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4254
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4255
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_a

    .line 4256
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4257
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4258
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4259
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4260
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4261
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4263
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    # invokes: Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V
    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4265
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4269
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4270
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1893
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1894
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1b

    .line 1895
    if-nez v0, :cond_17

    .line 1896
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1897
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1899
    :cond_17
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1900
    :cond_1b
    if-eqz v0, :cond_2b

    .line 1901
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1902
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1903
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1906
    :cond_2b
    :goto_2b
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1406
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1407
    const/4 v0, 0x0

    return v0

    .line 1409
    :cond_5
    if-eqz p1, :cond_d

    .line 1410
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    .line 1412
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1414
    :goto_12
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1415
    const/4 v0, 0x1

    return v0
.end method

.method setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1423
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1424
    const/4 v0, 0x0

    return v0

    .line 1426
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1427
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1428
    const/4 v0, 0x1

    return v0
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4449
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4450
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_16

    .line 4453
    if-nez p2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4454
    return-void

    .line 4451
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 520
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_14

    .line 521
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 522
    if-eqz p2, :cond_14

    .line 523
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_14
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 12
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 4416
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4417
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4418
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_63

    .line 4421
    if-nez p4, :cond_42

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_15

    goto :goto_42

    .line 4422
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4424
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4434
    :cond_42
    :goto_42
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_62

    .line 4435
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4437
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 4438
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 4439
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4441
    :cond_5d
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4443
    :cond_60
    const/4 v2, 0x1

    return v2

    .line 4445
    :cond_62
    return v3

    .line 4419
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 1345
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1346
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 1347
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_25

    .line 1348
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package known: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_25
    return v1

    .line 1354
    :cond_26
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_37

    .line 1355
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 1356
    .local v1, "alwaysGeneration":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_38

    .line 1358
    .end local v1    # "alwaysGeneration":I
    :cond_37
    nop

    .line 1361
    .restart local v1    # "alwaysGeneration":I
    :goto_38
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1362
    return v3
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 15
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 1071
    const/16 v0, -0x2710

    if-eqz p1, :cond_ab

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_a

    goto/16 :goto_ab

    .line 1078
    :cond_a
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_f

    .line 1079
    return v0

    .line 1082
    :cond_f
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1085
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1086
    .local v3, "eachPerm":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 1087
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v4, :cond_2e

    .line 1088
    goto :goto_19

    .line 1092
    :cond_2e
    const/4 v5, 0x0

    .line 1093
    .local v5, "used":Z
    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1094
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1095
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1096
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 1097
    const/4 v5, 0x1

    .line 1098
    goto :goto_60

    .line 1100
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_5f
    goto :goto_35

    .line 1101
    :cond_60
    :goto_60
    if-eqz v5, :cond_63

    .line 1102
    goto :goto_19

    .line 1105
    :cond_63
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 1106
    .local v6, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 1110
    .local v7, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_92

    .line 1111
    const/4 v8, 0x0

    .line 1112
    .local v8, "reqByDisabledSysPkg":Z
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1113
    .local v10, "permission":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 1114
    const/4 v8, 0x1

    .line 1115
    goto :goto_8f

    .line 1117
    .end local v10    # "permission":Ljava/lang/String;
    :cond_8e
    goto :goto_7a

    .line 1118
    :cond_8f
    :goto_8f
    if-eqz v8, :cond_92

    .line 1119
    goto :goto_19

    .line 1125
    .end local v8    # "reqByDisabledSysPkg":Z
    :cond_92
    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-virtual {v6, v4, p2, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1128
    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a1

    .line 1130
    const/4 v0, -0x1

    return v0

    .line 1134
    :cond_a1
    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    if-ne v8, v9, :cond_a8

    .line 1136
    return p2

    .line 1138
    .end local v3    # "eachPerm":Ljava/lang/String;
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "used":Z
    .end local v6    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v7    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_a8
    goto/16 :goto_19

    .line 1140
    :cond_aa
    return v0

    .line 1072
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_ab
    :goto_ab
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4407
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4408
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_11

    .line 4411
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4409
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2007
    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2008
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2009
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_23

    .line 2010
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2011
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    .line 2012
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v4, :cond_20

    .line 2013
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2009
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2016
    .end local v2    # "i":I
    :cond_23
    const-string v2, "all-intent-filter-verifications"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1464
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1465
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1464
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1467
    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    .line 1455
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1456
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_b

    return-void

    .line 1458
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1459
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1460
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_f

    .line 1461
    :cond_21
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2088
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_35

    .line 2089
    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2090
    const/4 v1, 0x0

    .line 2090
    .local v1, "i":I
    :goto_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 2091
    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2092
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2093
    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2090
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2095
    .end local v1    # "i":I
    :cond_30
    const-string v1, "block-uninstall-packages"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2097
    :cond_35
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2364
    .local p2, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 2365
    return-void

    .line 2367
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2368
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 2368
    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_24

    .line 2369
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2370
    .local v2, "childPackageName":Ljava/lang/String;
    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2371
    const-string/jumbo v3, "name"

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2372
    const-string v3, "child-package"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    .end local v2    # "childPackageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2374
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1978
    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1979
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1980
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_34

    .line 1981
    invoke-virtual {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1982
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    invoke-virtual {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1984
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1985
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_18

    .line 1987
    :cond_34
    const-string v2, "crossProfile-intent-filters"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2069
    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2070
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2071
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2072
    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2073
    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2076
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2077
    .local v2, "defaultDialer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 2078
    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2079
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2080
    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2082
    :cond_42
    const-string v3, "default-apps"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2083
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2886
    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2887
    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 2889
    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2891
    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2892
    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2893
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2894
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2895
    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2896
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 2897
    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2899
    :cond_63
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 2900
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2902
    :cond_6f
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 2903
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2905
    :cond_7b
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 2906
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2908
    :cond_87
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 2909
    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2912
    :cond_92
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_a3

    .line 2913
    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_af

    .line 2915
    :cond_a3
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2918
    :goto_af
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_bb

    .line 2919
    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2922
    :cond_bb
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2924
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2927
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_d6

    .line 2928
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 2929
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 2928
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2932
    :cond_d6
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2933
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1993
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1994
    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1995
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1996
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_2f

    .line 1997
    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote domain verification for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1997
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_2f
    const-string v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    :cond_34
    return-void
.end method

.method writeKernelMappingLPr()V
    .registers 7

    .line 2705
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2707
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2708
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2709
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_1e

    aget-object v5, v0, v4

    .line 2710
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2709
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2713
    :cond_1e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2715
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2716
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2717
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_28

    .line 2720
    :cond_3d
    nop

    .local v3, "i":I
    :goto_3e
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 2721
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2724
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2720
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_3e

    .line 2727
    .end local v3    # "i":I
    :cond_5d
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2730
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_a7

    if-eqz p1, :cond_a7

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_c

    goto/16 :goto_a7

    .line 2732
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2733
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 2734
    .local v3, "firstTime":Z
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v4

    .line 2735
    .local v4, "excludedUserIds":[I
    if-nez v3, :cond_2e

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2736
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v2, v1

    nop

    .line 2739
    .local v2, "userIdsChanged":Z
    :cond_2e
    :goto_2e
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2741
    .local v5, "dir":Ljava/io/File;
    if-eqz v3, :cond_4a

    .line 2742
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 2744
    new-instance v6, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v6

    .line 2745
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    :cond_4a
    iget v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v7, :cond_5c

    .line 2750
    new-instance v6, Ljava/io/File;

    const-string v7, "appid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2751
    .local v6, "appIdFile":Ljava/io/File;
    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2755
    .end local v6    # "appIdFile":Ljava/io/File;
    :cond_5c
    if-eqz v2, :cond_a6

    .line 2757
    move v6, v1

    .local v6, "i":I
    :goto_5f
    array-length v7, v4

    if-ge v6, v7, :cond_7f

    .line 2758
    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v7, :cond_70

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v8, v4, v6

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 2760
    :cond_70
    new-instance v7, Ljava/io/File;

    const-string v8, "excluded_userids"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v8, v4, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2757
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 2766
    .end local v6    # "i":I
    :cond_7f
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v6, :cond_a4

    .line 2767
    nop

    .local v1, "i":I
    :goto_84
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_a4

    .line 2768
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v1

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 2769
    new-instance v6, Ljava/io/File;

    const-string v7, "clear_userid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v7, v7, v1

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2767
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 2777
    .end local v1    # "i":I
    :cond_a4
    iput-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2779
    :cond_a6
    return-void

    .line 2730
    .end local v0    # "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    .end local v2    # "userIdsChanged":Z
    .end local v3    # "firstTime":Z
    .end local v4    # "excludedUserIds":[I
    .end local v5    # "dir":Ljava/io/File;
    :cond_a7
    :goto_a7
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3032
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3033
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3034
    const-string v2, "alias"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3035
    const-string/jumbo v2, "identifier"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3036
    const-string v2, "defined-keyset"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3037
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_c

    .line 3038
    :cond_43
    return-void
.end method

.method writeLPr()V
    .registers 13

    .line 2530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2534
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2539
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2540
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 2541
    const-string v2, "PackageManager"

    const-string v3, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    return-void

    .line 2547
    :cond_26
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2548
    const-string v2, "PackageManager"

    const-string v3, "Preserving older settings backup"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_32
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2555
    :try_start_37
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2556
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2559
    .local v3, "str":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2560
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2561
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2562
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2564
    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    const/4 v5, 0x0

    move v6, v5

    .line 2566
    .local v6, "i":I
    :goto_68
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_ab

    .line 2567
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2568
    .local v8, "volumeUuid":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2570
    .local v9, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2571
    const-string/jumbo v10, "volumeUuid"

    invoke-static {v4, v10, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2572
    const-string/jumbo v10, "sdkVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2573
    const-string v10, "databaseVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2574
    const-string v10, "fingerprint"

    iget-object v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2575
    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    .end local v8    # "volumeUuid":Ljava/lang/String;
    .end local v9    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 2578
    .end local v6    # "i":I
    :cond_ab
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v6, :cond_c6

    .line 2579
    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2580
    const-string v6, "device"

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2581
    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2584
    :cond_c6
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v6, :cond_e8

    .line 2585
    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    const-string v6, "enforcement"

    .line 2587
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_dd

    const-string v8, "1"

    goto :goto_df

    :cond_dd
    const-string v8, "0"

    .line 2586
    :goto_df
    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2588
    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2591
    :cond_e8
    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2592
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2593
    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2595
    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2596
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2597
    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2599
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_114
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_124

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2600
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2601
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_114

    .line 2603
    :cond_124
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2604
    .restart local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2605
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_12e

    .line 2607
    :cond_13e
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_148
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 2608
    .local v8, "usr":Lcom/android/server/pm/SharedUserSetting;
    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2609
    const-string/jumbo v9, "name"

    iget-object v10, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2610
    const-string/jumbo v9, "userId"

    iget v10, v8, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2611
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2610
    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2612
    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v10, "sigs"

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2613
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    .line 2614
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 2613
    invoke-virtual {p0, v4, v9}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2615
    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2616
    .end local v8    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_148

    .line 2618
    :cond_18a
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1d2

    .line 2619
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_198
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageCleanItem;

    .line 2620
    .local v8, "item":Landroid/content/pm/PackageCleanItem;
    iget v9, v8, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 2621
    .local v9, "userStr":Ljava/lang/String;
    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2622
    const-string/jumbo v10, "name"

    iget-object v11, v8, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2623
    const-string v10, "code"

    iget-boolean v11, v8, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v11, :cond_1c1

    const-string/jumbo v11, "true"

    goto :goto_1c3

    :cond_1c1
    const-string v11, "false"

    :goto_1c3
    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2624
    const-string/jumbo v10, "user"

    invoke-interface {v4, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2625
    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2626
    .end local v8    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_198

    .line 2629
    :cond_1d2
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_215

    .line 2630
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_215

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2631
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2632
    const-string/jumbo v9, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2633
    const-string/jumbo v9, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2634
    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2635
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1e4

    .line 2638
    :cond_215
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 2639
    .local v6, "numIVIs":I
    if-lez v6, :cond_246

    .line 2640
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_228

    .line 2641
    const-string v8, "PackageSettings"

    const-string v9, "Writing restored-ivi entries to packages.xml"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_228
    const-string/jumbo v8, "restored-ivi"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2644
    nop

    .line 2644
    .local v5, "i":I
    :goto_22f
    if-ge v5, v6, :cond_23f

    .line 2645
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2646
    .local v8, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2644
    .end local v8    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_22f

    .line 2648
    .end local v5    # "i":I
    :cond_23f
    const-string/jumbo v5, "restored-ivi"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_251

    .line 2650
    :cond_246
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v5, :cond_251

    .line 2651
    const-string v5, "PackageSettings"

    const-string v8, "  no restored IVI entries to write"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_251
    :goto_251
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2657
    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2659
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2661
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2662
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2663
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 2667
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2668
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1b0

    const/4 v8, -0x1

    invoke-static {v5, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2673
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2674
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2677
    const-string/jumbo v5, "package"

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 2677
    invoke-static {v5, v7, v8}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_290} :catch_291

    .line 2679
    return-void

    .line 2681
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "numIVIs":I
    :catch_291
    move-exception v2

    .line 2682
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PackageManager"

    const-string v4, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    .end local v2    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 2687
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2c1

    .line 2688
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up mangled file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :cond_2c1
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2937
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2938
    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2939
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 2940
    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2942
    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2943
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2944
    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2947
    :cond_34
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 2948
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2950
    :cond_40
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 2951
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    :cond_4c
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 2954
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2956
    :cond_58
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 2957
    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2960
    :cond_63
    const-string/jumbo v0, "publicFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    const-string/jumbo v0, "privateFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2962
    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2963
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2964
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2965
    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_bb

    .line 2967
    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c7

    .line 2969
    :cond_bb
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2971
    :goto_c7
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_d4

    .line 2972
    const-string/jumbo v0, "uidError"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2974
    :cond_d4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_e0

    .line 2975
    const-string/jumbo v0, "installer"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2977
    :cond_e0
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v0, :cond_ed

    .line 2978
    const-string/jumbo v0, "isOrphaned"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2980
    :cond_ed
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_f9

    .line 2981
    const-string/jumbo v0, "volumeUuid"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2983
    :cond_f9
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_109

    .line 2984
    const-string v0, "categoryHint"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 2985
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2984
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2987
    :cond_109
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_115

    .line 2988
    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2990
    :cond_115
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v0, :cond_122

    .line 2991
    const-string/jumbo v0, "updateAvailable"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2994
    :cond_122
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2996
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2998
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v2, "sigs"

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3000
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 3001
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 3000
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 3003
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3004
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3005
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3006
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 3008
    const-string/jumbo v0, "package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3009
    return-void
.end method

.method writePackageListLPr()V
    .registers 2

    .line 2791
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2792
    return-void
.end method

.method writePackageListLPr(I)V
    .registers 19
    .param p1, "creatingUserId"    # I

    move-object/from16 v1, p0

    .line 2796
    move/from16 v2, p1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2797
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2798
    .local v0, "userIds":[I
    const/4 v6, 0x0

    .line 2798
    .local v6, "i":I
    :goto_14
    array-length v7, v0

    if-ge v6, v7, :cond_24

    .line 2799
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v0, v6

    .line 2798
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 2801
    .end local v6    # "i":I
    :cond_24
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2b

    .line 2802
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 2806
    .end local v0    # "userIds":[I
    .local v6, "userIds":[I
    :cond_2b
    move-object v6, v0

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 2807
    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v0, v8, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v8, v0

    .line 2809
    .local v8, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    .line 2811
    .local v9, "writeTarget":Ljava/io/File;
    const/4 v0, 0x0

    move-object v10, v0

    .line 2813
    .local v10, "writer":Ljava/io/BufferedWriter;
    :try_start_57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2814
    .local v0, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v11

    .line 2815
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2817
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2818
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_87
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_152

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2819
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v14, :cond_a7

    goto/16 :goto_126

    .line 2827
    :cond_a7
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2828
    .local v14, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2829
    .local v15, "dataPath":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b5

    const/4 v3, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x0

    .line 2830
    .local v3, "isDebug":Z
    :goto_b6
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v5

    .line 2833
    .local v5, "gids":[I
    const/16 v1, 0x20

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_cb

    .line 2834
    nop

    .line 2818
    move-object/from16 v1, p0

    goto/16 :goto_14f

    .line 2852
    :cond_cb
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2853
    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    iget v1, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2856
    if-eqz v3, :cond_e3

    const-string v1, " 1 "

    goto :goto_e5

    :cond_e3
    const-string v1, " 0 "

    :goto_e5
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2858
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    if-eqz v5, :cond_117

    array-length v1, v5

    if-lez v1, :cond_117

    .line 2862
    const/4 v1, 0x0

    aget v2, v5, v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2863
    const/4 v2, 0x1

    .line 2863
    .local v2, "i":I
    :goto_106
    array-length v1, v5

    if-ge v2, v1, :cond_11d

    .line 2864
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    aget v1, v5, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2863
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_106

    .line 2868
    .end local v2    # "i":I
    :cond_117
    const-string/jumbo v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2870
    :cond_11d
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2872
    .end local v3    # "isDebug":Z
    .end local v5    # "gids":[I
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "dataPath":Ljava/lang/String;
    goto :goto_14b

    .line 2821
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_126
    :goto_126
    const-string v1, "android"

    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    .line 2822
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to missing metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_14b
    :goto_14b
    move-object/from16 v1, p0

    move/from16 v2, p1

    :goto_14f
    const/4 v3, 0x1

    goto/16 :goto_87

    .line 2873
    :cond_152
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 2874
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2875
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 2876
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_15e} :catch_15f

    .line 2881
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_16d

    .line 2877
    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    :catch_15f
    move-exception v0

    .line 2878
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageSettings"

    const-string v2, "Failed to write packages.list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2879
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2880
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2882
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16d
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 20
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 2103
    move/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2107
    .local v3, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    .line 2108
    .local v5, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v6

    .line 2109
    .local v6, "backupFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2110
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2115
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2116
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 2117
    const-string v0, "PackageManager"

    const-string v7, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    return-void

    .line 2123
    :cond_36
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2124
    const-string v0, "PackageManager"

    const-string v7, "Preserving older stopped packages backup"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_40
    :try_start_40
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    .line 2130
    .local v7, "fstr":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    .line 2132
    .local v8, "str":Ljava/io/BufferedOutputStream;
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v9, v0

    .line 2133
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2134
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2135
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v9, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2137
    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2139
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    .line 2140
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    move-object v14, v0

    .line 2143
    .local v14, "ustate":Landroid/content/pm/PackageUserState;
    const-string/jumbo v0, "pkg"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2144
    const-string/jumbo v0, "name"

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v9, v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2145
    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-eqz v0, :cond_a9

    .line 2146
    const-string v0, "ceDataInode"

    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2148
    :cond_a9
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_b6

    .line 2149
    const-string/jumbo v0, "inst"

    const-string v10, "false"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2151
    :cond_b6
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_c4

    .line 2152
    const-string/jumbo v0, "stopped"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2154
    :cond_c4
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_d2

    .line 2155
    const-string/jumbo v0, "nl"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2157
    :cond_d2
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_e0

    .line 2158
    const-string/jumbo v0, "hidden"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2160
    :cond_e0
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_170

    .line 2161
    const-string/jumbo v0, "suspended"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2162
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_fb

    .line 2163
    const-string/jumbo v0, "suspending-package"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    :cond_fb
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    if-eqz v0, :cond_108

    .line 2167
    const-string/jumbo v0, "suspend_dialog_message"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    :cond_108
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_13c

    .line 2171
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_113} :catch_2a7

    .line 2173
    :try_start_113
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_118
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_113 .. :try_end_118} :catch_119
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_118} :catch_2a7

    .line 2177
    goto :goto_135

    .line 2174
    :catch_119
    move-exception v0

    .line 2175
    .local v0, "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11a
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2178
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_135
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2180
    :cond_13c
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_170

    .line 2181
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_147} :catch_2a7

    .line 2183
    :try_start_147
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_14c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_147 .. :try_end_14c} :catch_14d
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14c} :catch_2a7

    .line 2187
    goto :goto_169

    .line 2184
    :catch_14d
    move-exception v0

    .line 2185
    .restart local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14e
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_169
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    :cond_170
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_17e

    .line 2192
    const-string/jumbo v0, "instant-app"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2194
    :cond_17e
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_18c

    .line 2195
    const-string/jumbo v0, "virtual-preload"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2197
    :cond_18c
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_1a8

    .line 2198
    const-string v0, "enabled"

    iget v10, v14, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2199
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2198
    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_1a8

    .line 2201
    const-string v0, "enabledCaller"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    :cond_1a8
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_1b3

    .line 2207
    const-string v0, "domainVerificationStatus"

    iget v10, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2210
    :cond_1b3
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_1be

    .line 2211
    const-string v0, "app-link-generation"

    iget v10, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2214
    :cond_1be
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_1cf

    .line 2215
    const-string/jumbo v0, "install-reason"

    iget v10, v14, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2216
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2215
    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    :cond_1cf
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_1dc

    .line 2219
    const-string/jumbo v0, "harmful-app-warning"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2222
    :cond_1dc
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_216

    .line 2223
    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2224
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_210

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2225
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_1f0

    .line 2229
    :cond_210
    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2231
    :cond_216
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_250

    .line 2232
    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2233
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2234
    .restart local v10    # "name":Ljava/lang/String;
    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2235
    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2236
    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2237
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_22a

    .line 2238
    :cond_24a
    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2241
    :cond_250
    const-string/jumbo v0, "pkg"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2242
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ustate":Landroid/content/pm/PackageUserState;
    nop

    .line 2139
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_7a

    .line 2244
    :cond_25c
    const/4 v10, 0x1

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2245
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2246
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2247
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2248
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2250
    const-string/jumbo v0, "package-restrictions"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2252
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2254
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2255
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2256
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 2260
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2261
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x1b0

    const/4 v11, -0x1

    invoke-static {v0, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package-user-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    .line 2266
    invoke-static {v0, v10, v11}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2a6
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_2a6} :catch_2a7

    .line 2270
    return-void

    .line 2271
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .end local v8    # "str":Ljava/io/BufferedOutputStream;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2a7
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2278
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 2279
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2d3

    .line 2280
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up mangled file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_2d3
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3042
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2345
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2346
    return-void

    .line 2349
    :cond_7
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2351
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2352
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2353
    const-string/jumbo v3, "name"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2354
    const-string/jumbo v3, "granted"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2355
    const-string v3, "flags"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2356
    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2357
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_12

    .line 2359
    :cond_50
    const-string/jumbo v0, "perms"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2360
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1964
    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1965
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1966
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v0, :cond_35

    .line 1967
    invoke-virtual {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1968
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1969
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1970
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1971
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_19

    .line 1973
    :cond_35
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1974
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1950
    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1951
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1952
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v0, :cond_35

    .line 1953
    invoke-virtual {v0}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 1954
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    invoke-virtual {v3, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1956
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1957
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_19

    .line 1959
    :cond_35
    const-string/jumbo v2, "preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1960
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5206
    if-eqz p2, :cond_8

    .line 5207
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_d

    .line 5209
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5211
    :goto_d
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3013
    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3014
    const-string/jumbo v0, "identifier"

    .line 3015
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 3014
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3016
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3017
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3021
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3022
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2a

    aget-wide v3, v0, v2

    .line 3023
    .local v3, "id":J
    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3024
    const-string/jumbo v5, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3025
    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3022
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3028
    :cond_2a
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 976
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_9

    .line 977
    return-void

    .line 980
    :cond_9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 981
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_14

    .line 982
    return-void

    .line 984
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 985
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_29

    .line 986
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_2f

    .line 987
    :cond_29
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 988
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    :goto_2f
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 989
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 991
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_40
    goto :goto_18

    .line 992
    :cond_41
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .registers 12
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2408
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_3a

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_11

    goto :goto_3a

    .line 2412
    :cond_11
    array-length v0, p2

    .line 2413
    .local v0, "libCount":I
    const/4 v1, 0x0

    .line 2413
    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_39

    .line 2414
    aget-object v2, p2, v1

    .line 2415
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2416
    .local v3, "libVersion":J
    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2417
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2418
    const-string/jumbo v5, "version"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2419
    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2413
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2421
    .end local v1    # "i":I
    :cond_39
    return-void

    .line 2410
    .end local v0    # "libCount":I
    :cond_3a
    :goto_3a
    return-void
.end method
