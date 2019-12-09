.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final FLAG_PARALLEL_APP:I = 0x4000000

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field static final MAX_MANAGED_PROFILES:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PARALLEL_APP_USER_ID:I = 0x3e7

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 248
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 513
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 514
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .line 523
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 524
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;

    .line 527
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 238
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 328
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    .line 342
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 349
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 360
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 366
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 382
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 391
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 394
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 528
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 529
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 530
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 531
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 532
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 533
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_90
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 535
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 537
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    .local v2, "userZeroDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 539
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 542
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 543
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 544
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 545
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 546
    .end local v2    # "userZeroDir":Ljava/io/File;
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_90 .. :try_end_cd} :catchall_eb

    .line 547
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 548
    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 549
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 550
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    return-void

    .line 546
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/IntentSender;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/pm/UserManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/IBinder;
    .registers 1

    .line 141
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .line 819
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 820
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_d

    .line 821
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 823
    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 827
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 830
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4
    .param p0, "creationFlags"    # I

    .line 1907
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_22

    .line 1908
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 1909
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1912
    :cond_22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1916
    :goto_28
    return-void

    .line 1913
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1894
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1898
    return-void

    .line 1895
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1152
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1153
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_3f

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_3f

    if-nez v0, :cond_14

    .line 1156
    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1158
    :cond_14
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3f

    .line 1161
    :cond_1b
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1161
    invoke-static {v1, v2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1166
    return-void

    .line 1163
    :cond_28
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1159
    :cond_3f
    :goto_3f
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1847
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    .line 1852
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1853
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1855
    return-void

    .line 1858
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    :cond_33
    :goto_33
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1878
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1881
    return-void

    .line 1879
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 1950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1951
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 1952
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1954
    :cond_26
    :goto_26
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2570
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2571
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2572
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2573
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2575
    :cond_16
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 6
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1476
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1477
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 1478
    .local v1, "global":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1480
    .local v2, "local":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1482
    return-object v0

    .line 1484
    :cond_27
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1485
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1486
    invoke-static {v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1488
    return-object v3
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .line 2604
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2609
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 2610
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_b

    .line 2611
    :cond_8
    const-string/jumbo v0, "no_add_user"

    .line 2612
    .local v0, "restriction":Ljava/lang/String;
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2613
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add user. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const/4 v1, 0x0

    return-object v1

    .line 2616
    :cond_32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 2621
    move-object/from16 v5, p4

    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2622
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2629
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    const/4 v0, 0x0

    if-eqz v6, :cond_24

    invoke-interface {v6}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 2631
    const-string v7, "UserManagerService"

    const-string v8, "Cannot add user. Not enough space on disk."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    return-object v0

    .line 2634
    :cond_24
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2a

    const/4 v7, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v7, 0x0

    .line 2635
    .local v7, "isGuest":Z
    :goto_2b
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_31

    const/4 v10, 0x1

    goto :goto_32

    :cond_31
    const/4 v10, 0x0

    .line 2636
    .local v10, "isManagedProfile":Z
    :goto_32
    and-int/lit8 v11, v3, 0x8

    if-eqz v11, :cond_38

    const/4 v11, 0x1

    goto :goto_39

    :cond_38
    const/4 v11, 0x0

    .line 2637
    .local v11, "isRestricted":Z
    :goto_39
    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_3f

    const/4 v12, 0x1

    goto :goto_40

    :cond_3f
    const/4 v12, 0x0

    .line 2638
    .local v12, "isDemo":Z
    :goto_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2641
    .local v13, "ident":J
    const/high16 v15, 0x4000000

    and-int v16, v3, v15

    if-eqz v16, :cond_4d

    const/16 v16, 0x1

    goto :goto_4f

    :cond_4d
    const/16 v16, 0x0

    .line 2642
    .local v16, "isParallelUser":Z
    :goto_4f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move/from16 v18, v17

    .line 2648
    .local v18, "callingUid":I
    :try_start_55
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_38e

    .line 2649
    const/16 v17, 0x0

    .line 2650
    .local v17, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v9, -0x2710

    if-eq v4, v9, :cond_7a

    .line 2651
    :try_start_5e
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_72

    .line 2652
    :try_start_61
    invoke-direct {v1, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v19

    move-object/from16 v17, v19

    .line 2653
    monitor-exit v9
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_6f

    .line 2654
    if-nez v17, :cond_7a

    :try_start_6a
    monitor-exit v15
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_72

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2654
    return-object v0

    .line 2653
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v9
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 2766
    .end local v17    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_72
    move-exception v0

    move-object/from16 v20, v6

    move-wide v1, v13

    move/from16 v21, v18

    goto/16 :goto_386

    .line 2659
    .restart local v17    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_7a
    move-object/from16 v9, v17

    .line 2659
    .end local v17    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .local v9, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v16, :cond_cc

    const/16 v8, 0x3e7

    :try_start_80
    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result v8
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_c4

    if-nez v8, :cond_9c

    const/16 v8, 0x3e8

    move-object/from16 v20, v6

    move/from16 v6, v18

    if-ne v6, v8, :cond_a0

    .end local v18    # "callingUid":I
    .local v6, "callingUid":I
    .local v20, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :try_start_8e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v8
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_98

    if-eqz v8, :cond_95

    goto :goto_a0

    .line 2663
    :cond_95
    move/from16 v21, v6

    goto :goto_d0

    .line 2766
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_98
    move-exception v0

    move/from16 v21, v6

    goto :goto_f8

    .line 2660
    .end local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v18    # "callingUid":I
    :cond_9c
    move-object/from16 v20, v6

    move/from16 v6, v18

    .line 2660
    .end local v18    # "callingUid":I
    .local v6, "callingUid":I
    .restart local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_a0
    :goto_a0
    :try_start_a0
    const-string v8, "UserManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_be

    move/from16 v21, v6

    :try_start_a9
    const-string v6, "Cannot add more Parallel user "

    .line 2660
    .end local v6    # "callingUid":I
    .local v21, "callingUid":I
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    monitor-exit v15
    :try_end_b9
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    const/4 v0, 0x0

    return-object v0

    .line 2766
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v21    # "callingUid":I
    .restart local v6    # "callingUid":I
    :catchall_be
    move-exception v0

    move/from16 v21, v6

    move-wide v1, v13

    .line 2766
    .end local v6    # "callingUid":I
    .restart local v21    # "callingUid":I
    goto/16 :goto_386

    .line 2766
    .end local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v21    # "callingUid":I
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v18    # "callingUid":I
    :catchall_c4
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v21, v18

    move-wide v1, v13

    .line 2766
    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v18    # "callingUid":I
    .restart local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v21    # "callingUid":I
    goto/16 :goto_386

    .line 2663
    .end local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v21    # "callingUid":I
    .restart local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v18    # "callingUid":I
    :cond_cc
    move-object/from16 v20, v6

    move/from16 v21, v18

    .line 2663
    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v18    # "callingUid":I
    .restart local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v21    # "callingUid":I
    :goto_d0
    if-nez v16, :cond_fb

    if-eqz v10, :cond_fb

    .line 2664
    const/4 v0, 0x0

    :try_start_d5
    invoke-virtual {v1, v4, v0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v6

    if-nez v6, :cond_fb

    .line 2665
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add more managed profiles for user "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    monitor-exit v15
    :try_end_f2
    .catchall {:try_start_d5 .. :try_end_f2} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2666
    const/4 v0, 0x0

    return-object v0

    .line 2766
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_f7
    move-exception v0

    .line 2766
    .end local v13    # "ident":J
    .end local p2    # "flags":I
    .local v1, "ident":J
    .local v3, "flags":I
    :goto_f8
    move-wide v1, v13

    goto/16 :goto_386

    .line 2670
    .end local v1    # "ident":J
    .end local v3    # "flags":I
    .restart local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v13    # "ident":J
    .restart local p2    # "flags":I
    :cond_fb
    if-nez v7, :cond_10d

    if-nez v10, :cond_10d

    if-nez v12, :cond_10d

    :try_start_101
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2673
    monitor-exit v15
    :try_end_108
    .catchall {:try_start_101 .. :try_end_108} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2673
    const/4 v0, 0x0

    return-object v0

    .line 2676
    :cond_10d
    if-eqz v7, :cond_11b

    :try_start_10f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_11b

    .line 2677
    monitor-exit v15
    :try_end_116
    .catchall {:try_start_10f .. :try_end_116} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2677
    const/4 v0, 0x0

    return-object v0

    .line 2680
    :cond_11b
    if-eqz v11, :cond_132

    :try_start_11d
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_132

    if-eqz v4, :cond_132

    .line 2682
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    monitor-exit v15
    :try_end_12d
    .catchall {:try_start_11d .. :try_end_12d} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    const/4 v0, 0x0

    return-object v0

    .line 2685
    :cond_132
    if-eqz v11, :cond_16d

    :try_start_134
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 2686
    if-nez v9, :cond_149

    .line 2687
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    monitor-exit v15
    :try_end_144
    .catchall {:try_start_134 .. :try_end_144} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2689
    const/4 v0, 0x0

    return-object v0

    .line 2691
    :cond_149
    :try_start_149
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_16d

    .line 2692
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    monitor-exit v15
    :try_end_168
    .catchall {:try_start_149 .. :try_end_168} :catchall_f7

    .line 2813
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2694
    const/4 v0, 0x0

    return-object v0

    .line 2699
    :cond_16d
    :try_start_16d
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0
    :try_end_171
    .catchall {:try_start_16d .. :try_end_171} :catchall_384

    if-eqz v0, :cond_18e

    if-nez v7, :cond_18e

    if-nez v10, :cond_18e

    .line 2700
    :try_start_177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_18e

    .line 2701
    or-int/lit8 v3, v3, 0x1

    .line 2702
    .end local p2    # "flags":I
    .restart local v3    # "flags":I
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_182
    .catchall {:try_start_177 .. :try_end_182} :catchall_f7

    .line 2703
    :try_start_182
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v0, :cond_189

    .line 2704
    or-int/lit8 v0, v3, 0x2

    .line 2706
    .end local v3    # "flags":I
    .local v0, "flags":I
    move v3, v0

    .line 2706
    .end local v0    # "flags":I
    .restart local v3    # "flags":I
    :cond_189
    monitor-exit v6

    goto :goto_18e

    :catchall_18b
    move-exception v0

    monitor-exit v6
    :try_end_18d
    .catchall {:try_start_182 .. :try_end_18d} :catchall_18b

    :try_start_18d
    throw v0
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_f7

    .line 2716
    :cond_18e
    :goto_18e
    const/4 v0, 0x1

    :try_start_18f
    new-array v6, v0, [I

    const/16 v0, 0x1c

    const/4 v8, 0x0

    aput v0, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1a4

    const/high16 v0, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1a4

    .line 2718
    const/16 v0, 0x3e7

    .line 2718
    .local v0, "userId":I
    goto :goto_1a8

    .line 2720
    .end local v0    # "userId":I
    :cond_1a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v0

    .line 2720
    .restart local v0    # "userId":I
    :goto_1a8
    move v6, v0

    .line 2722
    .end local v0    # "userId":I
    .local v6, "userId":I
    const-string v0, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b0
    .catchall {:try_start_18f .. :try_end_1b0} :catchall_384

    move-wide/from16 v22, v13

    :try_start_1b2
    const-string v13, "createUserInternalUnchecked: name = "

    .line 2722
    .end local v13    # "ident":J
    .local v22, "ident":J
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", userId("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2726
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1120077

    .line 2727
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v8, v0

    .line 2729
    .local v8, "ephemeralGuests":Z
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1e4
    .catchall {:try_start_1b2 .. :try_end_1e4} :catchall_380

    .line 2731
    if-eqz v7, :cond_1e8

    if-nez v8, :cond_1fc

    :cond_1e8
    :try_start_1e8
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z
    :try_end_1ea
    .catchall {:try_start_1e8 .. :try_end_1ea} :catchall_379

    if-nez v0, :cond_1fc

    if-eqz v9, :cond_1ff

    :try_start_1ee
    iget-object v0, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2732
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_1f4
    .catchall {:try_start_1ee .. :try_end_1f4} :catchall_1f7

    if-eqz v0, :cond_1ff

    goto :goto_1fc

    .line 2748
    :catchall_1f7
    move-exception v0

    move-wide/from16 v1, v22

    goto/16 :goto_37c

    .line 2733
    :cond_1fc
    :goto_1fc
    or-int/lit16 v0, v3, 0x100

    .line 2736
    .end local v3    # "flags":I
    .local v0, "flags":I
    move v3, v0

    .line 2736
    .end local v0    # "flags":I
    .restart local v3    # "flags":I
    :cond_1ff
    :try_start_1ff
    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v14, 0x0

    invoke-direct {v0, v6, v2, v14, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2737
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget v14, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v2, v14, 0x1

    iput v2, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v14, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_211
    .catchall {:try_start_1ff .. :try_end_211} :catchall_373

    .line 2739
    .local v17, "now":J
    const-wide v24, 0xdc46c32800L

    cmp-long v2, v17, v24

    if-lez v2, :cond_21f

    move/from16 v26, v3

    move-wide/from16 v2, v17

    goto :goto_225

    :cond_21f
    const-wide/16 v24, 0x0

    move/from16 v26, v3

    move-wide/from16 v2, v24

    .end local v3    # "flags":I
    .local v26, "flags":I
    :goto_225
    :try_start_225
    iput-wide v2, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2740
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/pm/UserInfo;->partial:Z

    .line 2741
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;
    :try_end_22e
    .catchall {:try_start_225 .. :try_end_22e} :catchall_36d

    .line 2742
    if-eqz v10, :cond_242

    const/16 v2, -0x2710

    if-eq v4, v2, :cond_242

    .line 2743
    :try_start_234
    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v2

    iput v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_23a
    .catchall {:try_start_234 .. :try_end_23a} :catchall_23b

    goto :goto_242

    .line 2748
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "now":J
    :catchall_23b
    move-exception v0

    move-wide/from16 v1, v22

    move/from16 v3, v26

    goto/16 :goto_37c

    .line 2745
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "now":J
    :cond_242
    :goto_242
    :try_start_242
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2746
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2747
    iget-object v3, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2748
    .end local v17    # "now":J
    monitor-exit v13
    :try_end_24f
    .catchall {:try_start_242 .. :try_end_24f} :catchall_36d

    .line 2749
    :try_start_24f
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_255
    .catchall {:try_start_24f .. :try_end_255} :catchall_367

    .line 2751
    if-eqz v9, :cond_295

    .line 2752
    if-eqz v10, :cond_27a

    .line 2753
    :try_start_259
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v13, -0x2710

    if-ne v3, v13, :cond_26c

    .line 2754
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v13, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    iput v13, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2755
    invoke-direct {v1, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2757
    :cond_26c
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_295

    .line 2766
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v6    # "userId":I
    .end local v8    # "ephemeralGuests":Z
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_273
    move-exception v0

    move-wide/from16 v1, v22

    move/from16 v3, v26

    goto/16 :goto_386

    .line 2758
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6    # "userId":I
    .restart local v8    # "ephemeralGuests":Z
    .restart local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_27a
    if-eqz v11, :cond_295

    .line 2759
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v13, -0x2710

    if-ne v3, v13, :cond_28f

    .line 2760
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v13, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    iput v13, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2761
    invoke-direct {v1, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2763
    :cond_28f
    iget-object v3, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v3, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_295
    .catchall {:try_start_259 .. :try_end_295} :catchall_273

    .line 2766
    .end local v8    # "ephemeralGuests":Z
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_295
    :goto_295
    :try_start_295
    monitor-exit v15
    :try_end_296
    .catchall {:try_start_295 .. :try_end_296} :catchall_367

    move-object v3, v0

    .line 2767
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_297
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v8, v0

    .line 2768
    .local v8, "storage":Landroid/os/storage/StorageManager;
    iget v0, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v9

    invoke-virtual {v8, v6, v0, v9}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2769
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v9, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v13, 0x3

    invoke-virtual {v0, v6, v9, v13}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V
    :try_end_2b3
    .catchall {:try_start_297 .. :try_end_2b3} :catchall_363

    .line 2775
    if-eqz v7, :cond_2eb

    .line 2777
    :try_start_2b5
    invoke-static {}, Lcom/android/server/pm/Settings;->getShieldPkgsInGuestMode()Ljava/util/ArrayList;

    move-result-object v0

    .line 2778
    .local v0, "currentDisallowedArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_2ca

    .line 2779
    nop

    .line 2780
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v5, v9

    .line 2780
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .local v5, "disallowedPackages":[Ljava/lang/String;
    goto :goto_2eb

    .line 2782
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :cond_2ca
    const/4 v9, 0x0

    .line 2782
    .local v9, "i":I
    :goto_2cb
    array-length v13, v5

    if-ge v9, v13, :cond_2d6

    .line 2783
    aget-object v13, v5, v9

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    add-int/lit8 v9, v9, 0x1

    goto :goto_2cb

    .line 2785
    .end local v9    # "i":I
    :cond_2d6
    nop

    .line 2786
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;
    :try_end_2e3
    .catchall {:try_start_2b5 .. :try_end_2e3} :catchall_2e6

    move-object v0, v9

    .line 2790
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .local v0, "disallowedPackages":[Ljava/lang/String;
    move-object v5, v0

    goto :goto_2eb

    .line 2813
    .end local v0    # "disallowedPackages":[Ljava/lang/String;
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v8    # "storage":Landroid/os/storage/StorageManager;
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_2e6
    move-exception v0

    move-wide/from16 v1, v22

    goto/16 :goto_396

    .line 2790
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v8    # "storage":Landroid/os/storage/StorageManager;
    :cond_2eb
    :goto_2eb
    :try_start_2eb
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v6, v5}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    .line 2791
    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/content/pm/UserInfo;->partial:Z

    .line 2792
    iget-object v9, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2f6
    .catchall {:try_start_2eb .. :try_end_2f6} :catchall_363

    .line 2793
    :try_start_2f6
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2794
    monitor-exit v9
    :try_end_2fa
    .catchall {:try_start_2f6 .. :try_end_2fa} :catchall_359

    .line 2795
    :try_start_2fa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2796
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_302
    .catchall {:try_start_2fa .. :try_end_302} :catchall_363

    move-object v9, v0

    .line 2797
    .local v9, "restrictions":Landroid/os/Bundle;
    if-eqz v7, :cond_312

    .line 2798
    :try_start_305
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_308
    .catchall {:try_start_305 .. :try_end_308} :catchall_2e6

    .line 2799
    :try_start_308
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2800
    monitor-exit v13

    goto :goto_312

    :catchall_30f
    move-exception v0

    monitor-exit v13
    :try_end_311
    .catchall {:try_start_308 .. :try_end_311} :catchall_30f

    :try_start_311
    throw v0
    :try_end_312
    .catchall {:try_start_311 .. :try_end_312} :catchall_2e6

    .line 2802
    :cond_312
    :goto_312
    :try_start_312
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_315
    .catchall {:try_start_312 .. :try_end_315} :catchall_363

    .line 2803
    :try_start_315
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2804
    monitor-exit v13
    :try_end_31b
    .catchall {:try_start_315 .. :try_end_31b} :catchall_352

    .line 2805
    :try_start_31b
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2806
    new-instance v0, Landroid/content/Intent;

    const-string v13, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2807
    .local v0, "addedIntent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.user_handle"

    invoke-virtual {v0, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2808
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v15, "android.permission.MANAGE_USERS"

    invoke-virtual {v13, v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2810
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;
    :try_end_337
    .catchall {:try_start_31b .. :try_end_337} :catchall_363

    if-eqz v7, :cond_33d

    :try_start_339
    const-string/jumbo v14, "users_guest_created"

    goto :goto_346

    .line 2811
    :cond_33d
    if-eqz v12, :cond_343

    const-string/jumbo v14, "users_demo_created"
    :try_end_342
    .catchall {:try_start_339 .. :try_end_342} :catchall_2e6

    goto :goto_346

    :cond_343
    :try_start_343
    const-string/jumbo v14, "users_user_created"

    .line 2810
    :goto_346
    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_34a
    .catchall {:try_start_343 .. :try_end_34a} :catchall_363

    .line 2813
    .end local v0    # "addedIntent":Landroid/content/Intent;
    .end local v8    # "storage":Landroid/os/storage/StorageManager;
    .end local v9    # "restrictions":Landroid/os/Bundle;
    move-wide/from16 v14, v22

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2814
    .end local v22    # "ident":J
    .local v14, "ident":J
    nop

    .line 2813
    nop

    .line 2815
    return-object v3

    .line 2804
    .end local v14    # "ident":J
    .restart local v8    # "storage":Landroid/os/storage/StorageManager;
    .restart local v9    # "restrictions":Landroid/os/Bundle;
    .restart local v22    # "ident":J
    :catchall_352
    move-exception v0

    move-wide/from16 v14, v22

    .line 2804
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :goto_355
    :try_start_355
    monitor-exit v13
    :try_end_356
    .catchall {:try_start_355 .. :try_end_356} :catchall_357

    :try_start_356
    throw v0
    :try_end_357
    .catchall {:try_start_356 .. :try_end_357} :catchall_35e

    :catchall_357
    move-exception v0

    goto :goto_355

    .line 2794
    .end local v9    # "restrictions":Landroid/os/Bundle;
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    :catchall_359
    move-exception v0

    move-wide/from16 v14, v22

    .line 2794
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :goto_35c
    :try_start_35c
    monitor-exit v9
    :try_end_35d
    .catchall {:try_start_35c .. :try_end_35d} :catchall_361

    :try_start_35d
    throw v0
    :try_end_35e
    .catchall {:try_start_35d .. :try_end_35e} :catchall_35e

    .line 2813
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v8    # "storage":Landroid/os/storage/StorageManager;
    :catchall_35e
    move-exception v0

    move-wide v1, v14

    goto :goto_396

    .line 2794
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v6    # "userId":I
    .restart local v8    # "storage":Landroid/os/storage/StorageManager;
    :catchall_361
    move-exception v0

    goto :goto_35c

    .line 2813
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "disallowedPackages":[Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "storage":Landroid/os/storage/StorageManager;
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    .restart local p4    # "disallowedPackages":[Ljava/lang/String;
    :catchall_363
    move-exception v0

    move-wide/from16 v1, v22

    .line 2813
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    goto :goto_396

    .line 2766
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    :catchall_367
    move-exception v0

    move-wide/from16 v1, v22

    move/from16 v3, v26

    .line 2766
    .end local v22    # "ident":J
    .local v2, "ident":J
    goto :goto_386

    .line 2748
    .end local v2    # "ident":J
    .restart local v6    # "userId":I
    .local v8, "ephemeralGuests":Z
    .local v9, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v22    # "ident":J
    :catchall_36d
    move-exception v0

    move-wide/from16 v1, v22

    move/from16 v3, v26

    .line 2748
    .end local v22    # "ident":J
    .restart local v2    # "ident":J
    goto :goto_37c

    .line 2748
    .end local v2    # "ident":J
    .end local v26    # "flags":I
    .local v3, "flags":I
    .restart local v22    # "ident":J
    :catchall_373
    move-exception v0

    move/from16 v26, v3

    move-wide/from16 v1, v22

    .line 2748
    .end local v3    # "flags":I
    .end local v22    # "ident":J
    .restart local v2    # "ident":J
    .restart local v26    # "flags":I
    goto :goto_37c

    .line 2748
    .end local v2    # "ident":J
    .end local v26    # "flags":I
    .restart local v3    # "flags":I
    .restart local v22    # "ident":J
    :catchall_379
    move-exception v0

    move-wide/from16 v1, v22

    .line 2748
    .end local v22    # "ident":J
    .restart local v1    # "ident":J
    :goto_37c
    :try_start_37c
    monitor-exit v13
    :try_end_37d
    .catchall {:try_start_37c .. :try_end_37d} :catchall_37e

    :try_start_37d
    throw v0

    :catchall_37e
    move-exception v0

    goto :goto_37c

    .line 2766
    .end local v1    # "ident":J
    .end local v6    # "userId":I
    .end local v8    # "ephemeralGuests":Z
    .end local v9    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v22    # "ident":J
    :catchall_380
    move-exception v0

    move-wide/from16 v1, v22

    .line 2766
    .end local v22    # "ident":J
    .restart local v1    # "ident":J
    goto :goto_386

    .line 2766
    .end local v1    # "ident":J
    .end local v3    # "flags":I
    .restart local v13    # "ident":J
    .restart local p2    # "flags":I
    :catchall_384
    move-exception v0

    move-wide v1, v13

    .line 2766
    .end local v13    # "ident":J
    .end local p2    # "flags":I
    .restart local v1    # "ident":J
    .restart local v3    # "flags":I
    :goto_386
    monitor-exit v15
    :try_end_387
    .catchall {:try_start_37d .. :try_end_387} :catchall_38c

    :try_start_387
    throw v0
    :try_end_388
    .catchall {:try_start_387 .. :try_end_388} :catchall_388

    .line 2813
    :catchall_388
    move-exception v0

    move/from16 v26, v3

    goto :goto_396

    .line 2766
    :catchall_38c
    move-exception v0

    goto :goto_386

    .line 2813
    .end local v1    # "ident":J
    .end local v3    # "flags":I
    .end local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v21    # "callingUid":I
    .local v6, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v13    # "ident":J
    .restart local v18    # "callingUid":I
    .restart local p2    # "flags":I
    :catchall_38e
    move-exception v0

    move-object/from16 v20, v6

    move-wide v1, v13

    move/from16 v21, v18

    move/from16 v26, v3

    .line 2813
    .end local v6    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v13    # "ident":J
    .end local v18    # "callingUid":I
    .end local p2    # "flags":I
    .end local p4    # "disallowedPackages":[Ljava/lang/String;
    .restart local v1    # "ident":J
    .restart local v5    # "disallowedPackages":[Ljava/lang/String;
    .restart local v20    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v21    # "callingUid":I
    .restart local v26    # "flags":I
    :goto_396
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 4122
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nowTime"    # J
    .param p4, "time"    # J

    .line 3770
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 3771
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 3773
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3774
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3775
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3778
    :goto_1d
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "startIntent"    # Z

    .line 878
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 879
    return-void

    .line 881
    :cond_7
    if-nez p3, :cond_2f

    .line 885
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 887
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_12

    .line 888
    return-void

    .line 891
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 892
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 893
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 894
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_27

    .line 895
    nop

    .line 896
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 897
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_27

    .line 898
    return-void

    .line 901
    .end local v2    # "isForegroundLauncher":Z
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 882
    .end local v0    # "hasModifyQuietModePermission":Z
    .end local v1    # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .registers 11

    .line 2173
    const/16 v0, 0x10

    .line 2176
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2177
    or-int/lit8 v0, v0, 0x3

    .line 2180
    :cond_a
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2181
    .local v1, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2182
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2183
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2185
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2187
    .local v4, "restrictions":Landroid/os/Bundle;
    :try_start_21
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2189
    .local v5, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v6, v5

    move v7, v3

    :goto_30
    if-ge v7, v6, :cond_41

    aget-object v8, v5, v7

    .line 2190
    .local v8, "userRestriction":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 2191
    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_3e} :catch_42

    .line 2189
    .end local v8    # "userRestriction":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 2196
    .end local v5    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_41
    goto :goto_4a

    .line 2194
    :catch_42
    move-exception v5

    .line 2195
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UserManagerService"

    const-string v7, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2198
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4a
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 2199
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2200
    :try_start_53
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2201
    monitor-exit v5

    goto :goto_5d

    :catchall_5a
    move-exception v3

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v3

    .line 2204
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2205
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2207
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2208
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2209
    return-void
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 2866
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2867
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2868
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2f

    .line 2869
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2870
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 2871
    monitor-exit v0

    return-object v3

    .line 2868
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2874
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2f
    monitor-exit v0

    .line 2875
    const/4 v0, 0x0

    return-object v0

    .line 2874
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    .line 1823
    const/4 v0, 0x0

    .line 1824
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1826
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_29

    .line 1827
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1828
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1829
    add-int/lit8 v0, v0, 0x1

    .line 1826
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1832
    .end local v2    # "i":I
    :cond_29
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .line 1500
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1501
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1502
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_17

    .line 1503
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 1504
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1506
    :cond_17
    monitor-exit v0

    return-object v1

    .line 1507
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1600
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    .line 1601
    :cond_6
    const/4 v0, 0x4

    .line 1602
    .local v0, "source":I
    :goto_7
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 449
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 450
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 451
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4130
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4131
    return v1

    .line 4133
    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    .line 2212
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 721
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 722
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 723
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_12

    .line 725
    return-object v1

    .line 727
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 728
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_4d

    .line 729
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 730
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 731
    goto :goto_4a

    .line 733
    :cond_2c
    if-eqz p2, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_35

    .line 734
    goto :goto_4a

    .line 736
    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 737
    goto :goto_4a

    .line 739
    :cond_40
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_45

    .line 740
    goto :goto_4a

    .line 742
    :cond_45
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 728
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 744
    .end local v3    # "i":I
    :cond_4d
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userHandle"    # I

    .line 799
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 800
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 801
    return-object v1

    .line 803
    :cond_8
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 804
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_16

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_16

    .line 807
    :cond_11
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 805
    :cond_16
    :goto_16
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v0

    .line 700
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 702
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 703
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 705
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_30

    .line 706
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 707
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 708
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_34

    .line 710
    :cond_30
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 712
    :goto_34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v3    # "profileId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 714
    .end local v2    # "i":I
    :cond_3a
    return-object v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3172
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 3177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3172
    return v2

    .line 3177
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3174
    :catch_1b
    move-exception v2

    .line 3175
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 3177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3175
    return v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1237
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1238
    const/4 v1, 0x0

    return-object v1

    .line 1240
    :cond_1a
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1259
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1261
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "userId"    # I

    .line 1225
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1227
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1228
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    return-object v1

    .line 1231
    :cond_31
    if-eqz v0, :cond_36

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    nop

    :cond_36
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1248
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1250
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 1251
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 2

    .line 1935
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1936
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v0, :cond_21

    const-string v1, "android.permission.MANAGE_USERS"

    .line 1938
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "android.permission.CREATE_USERS"

    .line 1939
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 1936
    :goto_22
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .registers 2

    .line 1923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1924
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    const-string v1, "android.permission.MANAGE_USERS"

    .line 1926
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 1924
    :goto_1a
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1863
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .line 1368
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1370
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1371
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1372
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1373
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1375
    :cond_2c
    monitor-exit v0

    .line 1376
    return-void

    .line 1375
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1497
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 812
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 770
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 772
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_11

    goto :goto_28

    .line 775
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 776
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_26

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1c

    goto :goto_26

    .line 780
    :cond_1c
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_24

    const/4 v2, 0x1

    nop

    :cond_24
    monitor-exit v0

    return v2

    .line 778
    :cond_26
    :goto_26
    monitor-exit v0

    return v2

    .line 773
    .end local v3    # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_28
    :goto_28
    monitor-exit v0

    return v2

    .line 781
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private isUserLimitReached()Z
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1782
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 1783
    .local v1, "count":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 1784
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1783
    .end local v1    # "count":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1705
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1706
    return-void

    .line 1709
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1710
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1712
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1733
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3193
    .local v0, "restrictions":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3194
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3195
    return-object v0

    .line 3198
    :cond_15
    const/4 v2, 0x0

    .line 3200
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_16
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 3201
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3202
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3203
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3204
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    .line 3205
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3205
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4c} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_4c} :catch_62
    .catchall {:try_start_16 .. :try_end_4c} :catchall_60

    .line 3207
    nop

    .line 3215
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3207
    return-object v0

    .line 3209
    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5c

    .line 3210
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5b} :catch_62
    .catchall {:try_start_51 .. :try_end_5b} :catchall_60

    goto :goto_51

    .line 3215
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5c
    :goto_5c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3216
    goto :goto_7e

    .line 3215
    :catchall_60
    move-exception v3

    goto :goto_7f

    .line 3212
    :catch_62
    move-exception v3

    .line 3213
    .local v3, "e":Ljava/lang/Exception;
    :try_start_63
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_60

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5c

    .line 3217
    :goto_7e
    return-object v0

    .line 3215
    :goto_7f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .line 3183
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3184
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3185
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3186
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3266
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3267
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3268
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3269
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3271
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3222
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 3223
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 3224
    const-string/jumbo v2, "key"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3225
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3226
    .local v4, "valType":Ljava/lang/String;
    const-string/jumbo v5, "m"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3227
    .local v3, "multiple":Ljava/lang/String;
    if-eqz v3, :cond_66

    .line 3228
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3229
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3230
    .local v5, "count":I
    :cond_32
    :goto_32
    if-lez v5, :cond_59

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_59

    .line 3231
    if-ne v0, v1, :cond_32

    .line 3232
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3233
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3234
    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    .line 3237
    :cond_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3238
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3239
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3240
    .end local v1    # "valueStrings":[Ljava/lang/String;
    .end local v5    # "count":I
    goto :goto_d2

    :cond_66
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3241
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d2

    .line 3242
    :cond_76
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 3243
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3244
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3245
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_87
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3246
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 3247
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3248
    .end local v6    # "childBundle":Landroid/os/Bundle;
    goto :goto_87

    .line 3249
    :cond_95
    nop

    .line 3250
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 3249
    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3251
    .end local v1    # "outerDepth":I
    .end local v5    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_d2

    .line 3252
    :cond_a6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 3254
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d2

    .line 3255
    :cond_be
    const-string/jumbo v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 3256
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d2

    .line 3258
    :cond_cf
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "valType":Ljava/lang/String;
    :cond_d2
    :goto_d2
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 2547
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return p3

    .line 2550
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 2551
    :catch_d
    move-exception v1

    .line 2552
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 2557
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return-wide p3

    .line 2560
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 2561
    :catch_d
    move-exception v1

    .line 2562
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 9
    .param p1, "id"    # I

    .line 2395
    const/4 v0, 0x0

    move-object v1, v0

    .line 2397
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2398
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2399
    .local v2, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 2400
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2c} :catch_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2c} :catch_32
    .catchall {:try_start_2 .. :try_end_2c} :catchall_30

    .line 2406
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2400
    return-object v3

    .line 2406
    .end local v2    # "userFile":Landroid/util/AtomicFile;
    :catchall_30
    move-exception v0

    goto :goto_48

    .line 2403
    :catch_32
    move-exception v2

    .line 2404
    .local v2, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_33
    const-string v3, "UserManagerService"

    const-string v4, "Error reading user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_43

    .line 2401
    :catch_3b
    move-exception v2

    .line 2402
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "UserManagerService"

    const-string v4, "Error reading user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_30

    .line 2406
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2407
    nop

    .line 2408
    return-object v0

    .line 2406
    :goto_48
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readUserListLP()V
    .registers 15

    .line 1996
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1997
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 1998
    return-void

    .line 2000
    :cond_c
    const/4 v0, 0x0

    .line 2001
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2003
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 2004
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2005
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2007
    :goto_26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 2007
    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_32

    if-eq v4, v5, :cond_32

    .line 2007
    .end local v4    # "type":I
    goto :goto_26

    .line 2012
    .restart local v4    # "type":I
    :cond_32
    if-eq v4, v6, :cond_42

    .line 2013
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_129
    .catchall {:try_start_14 .. :try_end_3e} :catchall_127

    .line 2084
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2015
    return-void

    .line 2018
    :cond_42
    const/4 v3, -0x1

    :try_start_43
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2019
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_71

    .line 2020
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2021
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 2022
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2024
    :cond_62
    const-string/jumbo v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2025
    .local v8, "versionNumber":Ljava/lang/String;
    if-eqz v8, :cond_71

    .line 2026
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2032
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v8    # "versionNumber":Ljava/lang/String;
    :cond_71
    move-object v3, v7

    .line 2034
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_72
    :goto_72
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_120

    .line 2035
    if-ne v4, v6, :cond_72

    .line 2036
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2037
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 2038
    const-string/jumbo v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2040
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2042
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v10, :cond_bd

    .line 2043
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_9c} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_9c} :catch_129
    .catchall {:try_start_43 .. :try_end_9c} :catchall_127

    .line 2044
    :try_start_9c
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2045
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_b1

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_b8

    .line 2047
    :cond_b1
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2049
    :cond_b8
    monitor-exit v11

    goto :goto_bd

    :catchall_ba
    move-exception v5

    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v5

    .line 2051
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_bd
    :goto_bd
    goto :goto_11e

    :cond_be
    const-string/jumbo v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 2052
    :cond_c7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_11e

    const/4 v9, 0x3

    if-eq v4, v9, :cond_11e

    .line 2054
    if-ne v4, v6, :cond_c7

    .line 2055
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 2056
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_e3} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bc .. :try_end_e3} :catch_129
    .catchall {:try_start_bc .. :try_end_e3} :catchall_127

    .line 2057
    :try_start_e3
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2058
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2059
    monitor-exit v9

    goto :goto_11e

    :catchall_ea
    move-exception v5

    monitor-exit v9
    :try_end_ec
    .catchall {:try_start_e3 .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw v5

    .line 2064
    :cond_ed
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10e

    const-string/jumbo v9, "globalRestrictionOwnerUserId"

    .line 2066
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ff

    goto :goto_10e

    .line 2071
    :cond_ff
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 2073
    nop

    .line 2074
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    .line 2074
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_11e

    .line 2067
    .restart local v8    # "name":Ljava/lang/String;
    :cond_10e
    :goto_10e
    const-string/jumbo v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2068
    .local v9, "ownerUserId":Ljava/lang/String;
    if-eqz v9, :cond_11d

    .line 2069
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2071
    .end local v9    # "ownerUserId":Ljava/lang/String;
    :cond_11d
    nop

    .line 2076
    .end local v8    # "name":Ljava/lang/String;
    :cond_11e
    :goto_11e
    goto/16 :goto_72

    .line 2079
    :cond_120
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2080
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_126} :catch_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_126} :catch_129
    .catchall {:try_start_ec .. :try_end_126} :catchall_127

    .line 2080
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4    # "type":I
    goto :goto_12d

    .line 2084
    :catchall_127
    move-exception v2

    goto :goto_132

    .line 2081
    :catch_129
    move-exception v2

    .line 2082
    .local v2, "e":Ljava/lang/Exception;
    :try_start_12a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_127

    .line 2084
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_12d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2085
    nop

    .line 2086
    return-void

    .line 2084
    :goto_132
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeNonSystemUsers()V
    .registers 7

    .line 4088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4089
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4090
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4091
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 4092
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4093
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 4094
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4091
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4097
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 4098
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4099
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 4100
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_2a

    .line 4101
    :cond_3c
    return-void

    .line 4097
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private removeUserState(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 3063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3068
    goto :goto_2a

    .line 3064
    :catch_e
    move-exception v0

    .line 3066
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying key for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3072
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_2a
    :try_start_2a
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 3073
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_33

    .line 3074
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    .line 3078
    .end local v0    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_33
    goto :goto_3d

    .line 3076
    :catch_34
    move-exception v0

    .line 3077
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 3084
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 3088
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3089
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3090
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3091
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_bb

    .line 3092
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3093
    :try_start_59
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3094
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_b8

    .line 3095
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3096
    :try_start_62
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3097
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3098
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3099
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3100
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 3101
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3104
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_b5

    .line 3106
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3107
    :try_start_8a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3108
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_b2

    .line 3110
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3111
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3112
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3118
    return-void

    .line 3108
    .end local v0    # "userFile":Landroid/util/AtomicFile;
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 3104
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1

    .line 3094
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 3091
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .registers 11
    .param p1, "userHandle"    # I

    .line 2948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2951
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2952
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_17

    .line 2953
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_9a

    .line 2954
    nop

    .line 3006
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2954
    return v3

    .line 2956
    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_9a

    .line 2957
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_97

    .line 2958
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2959
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_8e

    if-eqz v6, :cond_8e

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_8e

    .line 2963
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 2964
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_94

    .line 2969
    :try_start_36
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 2972
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2973
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2974
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_97

    .line 2976
    :try_start_47
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catchall {:try_start_47 .. :try_end_4c} :catchall_9a

    .line 2979
    goto :goto_55

    .line 2977
    :catch_4d
    move-exception v4

    .line 2978
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string v5, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user"

    invoke-static {v5, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2981
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_55
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_70

    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2982
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2985
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_9a

    .line 2991
    :cond_70
    :try_start_70
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v4, p1, v7, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7d} :catch_88
    .catchall {:try_start_70 .. :try_end_7d} :catchall_9a

    .line 3003
    .local v4, "res":I
    nop

    .line 3002
    nop

    .line 3004
    if-nez v4, :cond_83

    .line 3006
    move v3, v7

    goto :goto_84

    .line 3004
    :cond_83
    nop

    .line 3006
    :goto_84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3004
    return v3

    .line 3001
    .end local v4    # "res":I
    :catch_88
    move-exception v4

    .line 3002
    .local v4, "e":Landroid/os/RemoteException;
    nop

    .line 3006
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3002
    return v3

    .line 2960
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_94

    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_97

    .line 3006
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2960
    return v3

    .line 2964
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v3

    .line 2974
    :catchall_97
    move-exception v3

    monitor-exit v4
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_97

    :try_start_99
    throw v3
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 3006
    .end local v2    # "currentUser":I
    :catchall_9a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3644
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3645
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3646
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_12

    .line 3647
    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    const/4 v1, 0x1

    return v1

    .line 3650
    :cond_12
    const-string v3, "Users:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    move v3, v1

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 3652
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, " running"

    goto :goto_31

    :cond_2f
    const-string v4, ""

    .line 3653
    .local v4, "running":Ljava/lang/String;
    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    .end local v4    # "running":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3655
    .end local v3    # "i":I
    :cond_55
    return v1
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .line 3522
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1a

    .line 3523
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3524
    return v0

    .line 3522
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3527
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2221
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2222
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2223
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2225
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .line 3121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3122
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3124
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3125
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3126
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3127
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1305
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1306
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1307
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "isDeviceOwner"    # Z
    .param p4, "cameraRestrictionScope"    # I

    .line 1403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v0, "global":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1407
    .local v1, "local":Landroid/os/Bundle;
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1411
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1413
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    .line 1415
    .local v3, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v4

    .line 1418
    .local v4, "localChanged":Z
    if-eqz p3, :cond_21

    .line 1421
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_29

    .line 1423
    :cond_21
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v5, p1, :cond_29

    .line 1428
    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1431
    :cond_29
    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_50

    .line 1439
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1440
    if-nez v4, :cond_31

    if-eqz v3, :cond_38

    .line 1441
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1443
    :cond_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_4d

    .line 1445
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1446
    if-eqz v3, :cond_44

    .line 1447
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_49

    .line 1451
    :catchall_42
    move-exception v5

    goto :goto_4b

    .line 1448
    :cond_44
    if-eqz v4, :cond_49

    .line 1449
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1451
    :cond_49
    :goto_49
    monitor-exit v2

    .line 1452
    return-void

    .line 1451
    :goto_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_42

    throw v5

    .line 1443
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2

    .line 1431
    .end local v3    # "globalChanged":Z
    .end local v4    # "localChanged":Z
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    .registers 10
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "target"    # Landroid/content/IntentSender;

    .line 909
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 911
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 913
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_82

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 916
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_31

    .line 917
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    monitor-exit v0

    return-void

    .line 920
    :cond_31
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 921
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 922
    .local v3, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_9e

    .line 923
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 924
    :try_start_41
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 925
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_7f

    .line 927
    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 928
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 929
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 930
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_6e

    .line 938
    :catch_5c
    move-exception v0

    goto :goto_6f

    .line 932
    :cond_5e
    if-eqz p3, :cond_66

    .line 933
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_67

    .line 934
    :cond_66
    nop

    .line 935
    .local v0, "callback":Landroid/os/IProgressListener;
    :goto_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6e} :catch_5c

    .line 941
    .end local v0    # "callback":Landroid/os/IProgressListener;
    :goto_6e
    goto :goto_73

    .line 938
    :goto_6f
    nop

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 942
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_73
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 944
    return-void

    .line 925
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    .line 914
    .end local v3    # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_82
    :try_start_82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_82 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 9
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 966
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 971
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 973
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_13

    .line 974
    return-void

    .line 976
    :cond_13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v2, "callBackIntent":Landroid/content/Intent;
    if-eqz p2, :cond_21

    .line 979
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 981
    :cond_21
    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 984
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x54000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 993
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 994
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 995
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 996
    return-void
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1461
    .local p3, "restrictionsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    nop

    .line 1462
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1463
    .local v0, "changed":Z
    if-eqz v0, :cond_1c

    .line 1464
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1465
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1467
    :cond_19
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1470
    :cond_1c
    :goto_1c
    return v0
.end method

.method private updateUserIds()V
    .registers 9

    .line 3406
    const/4 v0, 0x0

    .line 3407
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3408
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_48

    .line 3409
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "num":I
    :goto_d
    if-ge v0, v2, :cond_22

    .line 3410
    :try_start_f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_1f

    .line 3411
    add-int/lit8 v4, v4, 0x1

    .line 3409
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3414
    .end local v0    # "i":I
    :cond_22
    new-array v0, v4, [I

    .line 3415
    .local v0, "newUsers":[I
    const/4 v5, 0x0

    .line 3416
    .local v5, "n":I
    nop

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_44

    .line 3417
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_41

    .line 3418
    add-int/lit8 v6, v5, 0x1

    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v0, v5

    .line 3416
    .end local v5    # "n":I
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 3421
    .end local v3    # "i":I
    :cond_44
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 3422
    .end local v0    # "newUsers":[I
    .end local v2    # "userSize":I
    .end local v5    # "n":I
    monitor-exit v1

    .line 3423
    return-void

    .line 3422
    .end local v4    # "num":I
    .local v0, "num":I
    :catchall_48
    move-exception v2

    move v4, v0

    move-object v0, v2

    .end local v0    # "num":I
    .restart local v4    # "num":I
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "newBaseRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1654
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 1655
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1654
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1658
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_3c

    .line 1660
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1662
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    :goto_1d
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1663
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2a

    move v2, v3

    nop

    :cond_2a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1666
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1667
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1671
    .end local v1    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1673
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1681
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_53

    .line 1682
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1694
    :cond_53
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1696
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1697
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;

    .line 2093
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2094
    .local v0, "originalVersion":I
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2095
    .local v1, "userVersion":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2d

    .line 2097
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2098
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v4, "Primary"

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2099
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2100
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040438

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2101
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2103
    :cond_2c
    const/4 v1, 0x1

    .line 2106
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_48

    .line 2108
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2109
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_47

    .line 2110
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2111
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2113
    :cond_47
    const/4 v1, 0x2

    .line 2117
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_48
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4c

    .line 2118
    const/4 v1, 0x4

    .line 2121
    :cond_4c
    const/4 v2, 0x5

    if-ge v1, v2, :cond_53

    .line 2122
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2123
    const/4 v1, 0x5

    .line 2126
    :cond_53
    const/4 v2, 0x6

    const/16 v4, -0x2710

    if-ge v1, v2, :cond_90

    .line 2127
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 2128
    .local v2, "splitSystemUser":Z
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2129
    move v6, v3

    .local v6, "i":I
    :goto_60
    :try_start_60
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8a

    .line 2130
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2132
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v4, :cond_87

    .line 2135
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2136
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2129
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2139
    .end local v6    # "i":I
    :cond_8a
    monitor-exit v5

    .line 2140
    const/4 v1, 0x6

    .end local v2    # "splitSystemUser":Z
    goto :goto_90

    .line 2139
    .restart local v2    # "splitSystemUser":Z
    :catchall_8d
    move-exception v3

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_60 .. :try_end_8f} :catchall_8d

    throw v3

    .line 2143
    .end local v2    # "splitSystemUser":Z
    :cond_90
    :goto_90
    const/4 v2, 0x7

    if-ge v1, v2, :cond_b6

    .line 2145
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2146
    :try_start_96
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_a7

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v4, :cond_a7

    .line 2148
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2153
    :cond_a7
    const-string v4, "ensure_verify_apps"

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 2156
    monitor-exit v3

    .line 2157
    const/4 v1, 0x7

    goto :goto_b6

    .line 2156
    :catchall_b3
    move-exception v2

    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b3

    throw v2

    .line 2160
    :cond_b6
    :goto_b6
    if-ge v1, v2, :cond_d9

    .line 2161
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " didn\'t upgrade as expected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 2164
    :cond_d9
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2166
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, v2, :cond_e2

    .line 2167
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2170
    :cond_e2
    :goto_e2
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 1069
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_16

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_16

    .line 1070
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1071
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1072
    return-object v0

    .line 1074
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_16
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 4185
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 4186
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_e

    .line 4190
    return-void

    .line 4187
    :cond_e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3286
    const/4 v0, 0x0

    move-object v1, v0

    .line 3288
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3289
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3291
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3292
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3293
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3294
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3296
    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3297
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3298
    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3300
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3301
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 3305
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_49

    .line 3302
    :catch_3e
    move-exception v0

    .line 3303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3304
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_49
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .line 3277
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3278
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3279
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3280
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3281
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1958
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1959
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1960
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1961
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1962
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1963
    nop

    .line 1964
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 1963
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1969
    :cond_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .line 1969
    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1970
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1971
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_5c

    .line 1974
    :cond_53
    :try_start_53
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_5c

    .line 1977
    goto :goto_58

    .line 1975
    :catch_57
    move-exception v3

    .line 1978
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 1981
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tmp":Ljava/io/File;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_64

    .line 1979
    :catch_5c
    move-exception v0

    .line 1980
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_64
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3310
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3311
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3312
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3313
    const-string/jumbo v3, "key"

    invoke-interface {p1, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3315
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_39

    .line 3316
    const-string/jumbo v3, "type"

    const-string v5, "b"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3317
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_f0

    .line 3318
    :cond_39
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4f

    .line 3319
    const-string/jumbo v3, "type"

    const-string/jumbo v5, "i"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3320
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_f0

    .line 3321
    :cond_4f
    if-eqz v2, :cond_dc

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_57

    goto/16 :goto_dc

    .line 3324
    :cond_57
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_6b

    .line 3325
    const-string/jumbo v3, "type"

    const-string v5, "B"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3326
    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_f0

    .line 3327
    :cond_6b
    instance-of v3, v2, [Landroid/os/Parcelable;

    const/4 v5, 0x0

    if-eqz v3, :cond_a8

    .line 3328
    const-string/jumbo v3, "type"

    const-string v6, "BA"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3329
    move-object v3, v2

    check-cast v3, [Landroid/os/Parcelable;

    .line 3330
    .local v3, "array":[Landroid/os/Parcelable;
    array-length v6, v3

    :goto_7c
    if-ge v5, v6, :cond_a7

    aget-object v7, v3, v5

    .line 3331
    .local v7, "parcelable":Landroid/os/Parcelable;
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_9f

    .line 3334
    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3335
    const-string/jumbo v8, "type"

    const-string v9, "B"

    invoke-interface {p1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3336
    move-object v8, v7

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3337
    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3330
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 3332
    .restart local v7    # "parcelable":Landroid/os/Parcelable;
    :cond_9f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "bundle-array can only hold Bundles"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3339
    .end local v3    # "array":[Landroid/os/Parcelable;
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    :cond_a7
    goto :goto_f0

    .line 3340
    :cond_a8
    const-string/jumbo v3, "type"

    const-string/jumbo v6, "sa"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3341
    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    .line 3342
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v6, "m"

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3343
    array-length v6, v3

    :goto_c0
    if-ge v5, v6, :cond_f0

    aget-object v7, v3, v5

    .line 3344
    .local v7, "choice":Ljava/lang/String;
    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3345
    if-eqz v7, :cond_ce

    move-object v8, v7

    goto :goto_d0

    :cond_ce
    const-string v8, ""

    :goto_d0
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3346
    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3343
    .end local v7    # "choice":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 3322
    .end local v3    # "values":[Ljava/lang/String;
    :cond_dc
    :goto_dc
    const-string/jumbo v3, "type"

    const-string/jumbo v5, "s"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3323
    if-eqz v2, :cond_eb

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_ed

    :cond_eb
    const-string v3, ""

    :goto_ed
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3349
    :cond_f0
    :goto_f0
    const-string v3, "entry"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3350
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_8

    .line 3351
    :cond_f7
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 8
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2234
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_22
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2235
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2236
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2237
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    .line 2241
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_51

    .line 2238
    :catch_33
    move-exception v2

    .line 2239
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing user info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2240
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2242
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method private writeUserListLP()V
    .registers 12

    .line 2345
    const/4 v0, 0x0

    .line 2346
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2348
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2349
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2352
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2353
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2354
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2355
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2357
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2358
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2361
    const-string/jumbo v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_56} :catch_cf

    .line 2363
    :try_start_56
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v7, "restrictions"

    .line 2364
    invoke-static {v3, v5, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2365
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_cc

    .line 2366
    :try_start_5f
    const-string/jumbo v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    const-string/jumbo v4, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2371
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7e} :catch_cf

    .line 2372
    :try_start_7e
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2373
    .local v5, "userIdsToWrite":[I
    const/4 v7, 0x0

    move v8, v7

    .line 2373
    .local v8, "i":I
    :goto_88
    array-length v9, v5

    if-ge v8, v9, :cond_9c

    .line 2374
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2375
    .local v9, "user":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    aput v10, v5, v8

    .line 2373
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    .line 2377
    .end local v8    # "i":I
    :cond_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_7e .. :try_end_9d} :catchall_c9

    move-object v4, v5

    .line 2378
    .end local v5    # "userIdsToWrite":[I
    .local v4, "userIdsToWrite":[I
    :try_start_9e
    array-length v5, v4

    :goto_9f
    if-ge v7, v5, :cond_bc

    aget v8, v4, v7

    .line 2379
    .local v8, "id":I
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2380
    const-string/jumbo v9, "id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2381
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2378
    .end local v8    # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 2384
    :cond_bc
    const-string/jumbo v5, "users"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2386
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2387
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c8} :catch_cf

    .line 2391
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "userIdsToWrite":[I
    goto :goto_da

    .line 2377
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_c9
    move-exception v5

    :try_start_ca
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    :try_start_cb
    throw v5
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cc} :catch_cf

    .line 2365
    :catchall_cc
    move-exception v5

    :try_start_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v5
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_cf} :catch_cf

    .line 2388
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_cf
    move-exception v2

    .line 2389
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2390
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_da
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3016
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3017
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3019
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    .line 3020
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3022
    :cond_1e
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1751
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1773
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1774
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1737
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1738
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 1789
    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1790
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1791
    return v1

    .line 1793
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1795
    return v1

    .line 1798
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1799
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_2c

    if-eqz p2, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    move v3, v1

    .line 1803
    .local v3, "profilesRemovedCount":I
    :goto_2d
    const/16 v4, 0x3e7

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->isUserRunning(I)Z

    move-result v4

    .line 1804
    .local v4, "parallelUserCount":I
    sub-int v5, v0, v3

    sub-int/2addr v5, v4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v6

    if-lt v5, v6, :cond_3d

    .line 1805
    return v1

    .line 1809
    :cond_3d
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1810
    :try_start_40
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1811
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_5f

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v7

    if-nez v7, :cond_4d

    goto :goto_5f

    .line 1814
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int/2addr v7, v3

    .line 1817
    .local v7, "usersCountAfterRemoving":I
    if-eq v7, v2, :cond_5c

    .line 1818
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v8

    if-ge v7, v8, :cond_5b

    goto :goto_5c

    :cond_5b
    goto :goto_5d

    :cond_5c
    :goto_5c
    move v1, v2

    :goto_5d
    monitor-exit v5

    .line 1817
    return v1

    .line 1812
    .end local v7    # "usersCountAfterRemoving":I
    :cond_5f
    :goto_5f
    monitor-exit v5

    return v1

    .line 1819
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_61
    move-exception v1

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_61

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1190
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1193
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2e

    .line 1196
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1197
    monitor-exit v0

    return v2

    .line 1200
    :cond_1e
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v2, 0x1

    nop

    :cond_2c
    monitor-exit v0

    return v2

    .line 1194
    :cond_2e
    :goto_2e
    monitor-exit v0

    return v2

    .line 1201
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v1
.end method

.method cleanupPartialUsers()V
    .registers 8

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 580
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_10
    if-ge v4, v2, :cond_3a

    .line 581
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 582
    .local v5, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_2a

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_2a
    if-eqz v4, :cond_37

    .line 583
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 585
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 580
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 588
    .end local v2    # "userSize":I
    .end local v4    # "i":I
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_79

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    .local v1, "partialsSize":I
    nop

    .local v3, "i":I
    :goto_40
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_78

    .line 591
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 592
    .local v3, "ui":Landroid/content/pm/UserInfo;
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 590
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_40

    .line 596
    .end local v3    # "i":I
    :cond_78
    return-void

    .line 588
    .end local v1    # "partialsSize":I
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v2
.end method

.method public clearSeedAccountData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3586
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3587
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3589
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 3590
    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3591
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_18

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_24

    return-void

    .line 3592
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 3593
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 3594
    :try_start_1c
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3595
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 3596
    return-void

    .line 3593
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2

    .line 3595
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2580
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2581
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2587
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2588
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .line 2840
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2841
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2843
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_10

    .line 2844
    return-object v0

    .line 2846
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2848
    .local v2, "identity":J
    :try_start_14
    const-string/jumbo v0, "no_modify_accounts"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2854
    const-string/jumbo v0, "no_share_location"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 2856
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    nop

    .line 2858
    return-object v1

    .line 2856
    :catchall_39
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2599
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2600
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    .line 3661
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3663
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3664
    .local v11, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 3665
    .local v13, "nowRealtime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3666
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3667
    :try_start_1f
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c5

    .line 3668
    :try_start_22
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1d6

    .line 3670
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v6, v0

    .line 3671
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_45

    .line 3672
    nop

    .line 3669
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    goto/16 :goto_1ac

    .line 3674
    :cond_45
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v7, v0

    .line 3675
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    move v4, v0

    .line 3676
    .local v4, "userId":I
    const-string v0, "  "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3677
    const-string v0, " serialNo="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3678
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_63
    .catchall {:try_start_22 .. :try_end_63} :catchall_2bc

    if-eqz v0, :cond_72

    .line 3679
    :try_start_65
    const-string v0, " <removing> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6b

    goto :goto_72

    .line 3741
    .end local v4    # "userId":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    :catchall_6b
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    goto/16 :goto_2c1

    .line 3681
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :cond_72
    :goto_72
    :try_start_72
    iget-boolean v0, v7, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_2bc

    if-eqz v0, :cond_7b

    .line 3682
    :try_start_76
    const-string v0, " <partial>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_6b

    .line 3684
    :cond_7b
    :try_start_7b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3685
    const-string v0, "    State: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3687
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_2bc

    .line 3688
    :try_start_86
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move v5, v0

    .line 3689
    .local v5, "state":I
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_1c9

    .line 3690
    :try_start_8f
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3691
    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_2bc

    .line 3692
    :try_start_9b
    iget-wide v0, v7, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_1c0

    move-object v2, v10

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide v4, v11

    .end local v4    # "userId":I
    .end local v5    # "state":I
    .local v16, "userId":I
    .local v17, "state":I
    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    move-wide v6, v0

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "nowRealtime":J
    :try_start_a8
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3694
    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3695
    iget-wide v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_1b9

    move-object v4, v10

    move-object v5, v3

    move-wide v6, v11

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide v8, v0

    .end local v9    # "i":I
    .local v21, "i":I
    :try_start_ba
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3697
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3698
    iget-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3701
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3703
    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3704
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3706
    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_ba .. :try_end_e8} :catchall_1b7

    .line 3707
    move-object/from16 v1, p0

    :try_start_ea
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3708
    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_2c3

    .line 3710
    :try_start_fd
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3711
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3710
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3712
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3714
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3713
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3715
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3717
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3716
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3718
    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3720
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3719
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3721
    monitor-exit v2
    :try_end_149
    .catchall {:try_start_fd .. :try_end_149} :catchall_1b4

    .line 3723
    :try_start_149
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_166

    .line 3724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3728
    :cond_166
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1ac

    .line 3729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3731
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1a0

    .line 3732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3733
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3735
    :cond_1a0
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1ac

    .line 3736
    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3737
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1ac
    .catchall {:try_start_149 .. :try_end_1ac} :catchall_2c3

    .line 3669
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "state":I
    :cond_1ac
    :goto_1ac
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .restart local v0    # "i":I
    move-wide/from16 v13, v18

    move-object/from16 v8, v20

    goto/16 :goto_28

    .line 3721
    .end local v0    # "i":I
    .restart local v4    # "userId":I
    .restart local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "state":I
    .restart local v21    # "i":I
    :catchall_1b4
    move-exception v0

    :try_start_1b5
    monitor-exit v2
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b4

    :try_start_1b6
    throw v0
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_2c3

    .line 3741
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "state":I
    .end local v21    # "i":I
    :catchall_1b7
    move-exception v0

    goto :goto_1bc

    :catchall_1b9
    move-exception v0

    move-object/from16 v20, v8

    :goto_1bc
    move-object/from16 v1, p0

    goto/16 :goto_2c1

    .end local v18    # "nowRealtime":J
    .local v13, "nowRealtime":J
    :catchall_1c0
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    move-object/from16 v1, p0

    goto/16 :goto_2c1

    .line 3689
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :catchall_1c9
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v18    # "nowRealtime":J
    .restart local v21    # "i":I
    :goto_1d2
    :try_start_1d2
    monitor-exit v2
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d4

    :try_start_1d3
    throw v0

    :catchall_1d4
    move-exception v0

    goto :goto_1d2

    .line 3741
    .end local v4    # "userId":I
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "nowRealtime":J
    .end local v21    # "i":I
    .local v13, "nowRealtime":J
    :cond_1d6
    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    monitor-exit v20
    :try_end_1db
    .catchall {:try_start_1d3 .. :try_end_1db} :catchall_2c3

    .line 3742
    :try_start_1db
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3745
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3746
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_1ff
    .catchall {:try_start_1db .. :try_end_1ff} :catchall_2ca

    .line 3747
    :try_start_1ff
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3748
    monitor-exit v2
    :try_end_207
    .catchall {:try_start_1ff .. :try_end_207} :catchall_2b9

    .line 3749
    :try_start_207
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20a
    .catchall {:try_start_207 .. :try_end_20a} :catchall_2ca

    .line 3750
    :try_start_20a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_244

    .line 3753
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    :cond_244
    monitor-exit v2
    :try_end_245
    .catchall {:try_start_20a .. :try_end_245} :catchall_2b6

    .line 3757
    :try_start_245
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_2ca

    .line 3758
    :try_start_248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Started users state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    monitor-exit v2
    :try_end_25f
    .catchall {:try_start_248 .. :try_end_25f} :catchall_2b3

    .line 3761
    :try_start_25f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1120077

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    monitor-exit v15
    :try_end_2b2
    .catchall {:try_start_25f .. :try_end_2b2} :catchall_2ca

    .line 3767
    return-void

    .line 3759
    :catchall_2b3
    move-exception v0

    :try_start_2b4
    monitor-exit v2
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b3

    :try_start_2b5
    throw v0
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2ca

    .line 3756
    :catchall_2b6
    move-exception v0

    :try_start_2b7
    monitor-exit v2
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    :try_start_2b8
    throw v0
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2ca

    .line 3748
    :catchall_2b9
    move-exception v0

    :try_start_2ba
    monitor-exit v2
    :try_end_2bb
    .catchall {:try_start_2ba .. :try_end_2bb} :catchall_2b9

    :try_start_2bb
    throw v0
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ca

    .line 3741
    .end local v18    # "nowRealtime":J
    .restart local v13    # "nowRealtime":J
    :catchall_2bc
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_2c1
    :try_start_2c1
    monitor-exit v20
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2c3

    :try_start_2c2
    throw v0

    :catchall_2c3
    move-exception v0

    goto :goto_2c1

    .line 3766
    .end local v18    # "nowRealtime":J
    .restart local v13    # "nowRealtime":J
    :catchall_2c5
    move-exception v0

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_2c8
    monitor-exit v15
    :try_end_2c9
    .catchall {:try_start_2c2 .. :try_end_2c9} :catchall_2ca

    throw v0

    :catchall_2ca
    move-exception v0

    goto :goto_2c8
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1044
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1045
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1046
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1048
    .local v1, "identity":J
    :try_start_d
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1052
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1053
    nop

    .line 1054
    return-void

    .line 1052
    :catchall_15
    move-exception v3

    goto :goto_1d

    .line 1049
    :catch_17
    move-exception v3

    .line 1050
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_18
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 1052
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1266
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishRemoveUser(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .line 3028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3030
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3031
    .local v2, "addedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3032
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 3057
    .end local v2    # "addedIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3058
    nop

    .line 3059
    return-void

    .line 3057
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3136
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 3137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3138
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3140
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3142
    :try_start_2b
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3143
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .line 749
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 751
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 753
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1a

    .line 754
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 756
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v1

    .line 759
    :cond_1f
    :goto_1f
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .line 1380
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1382
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1383
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getFreeProfileBadgeLU(I)I
    .registers 10
    .param p1, "parentUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4140
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    .line 4141
    .local v0, "maxManagedProfiles":I
    new-array v1, v0, [Z

    .line 4142
    .local v1, "usedBadges":[Z
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4143
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_3a

    .line 4144
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4146
    .local v5, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p1, :cond_37

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4148
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v6, v0, :cond_37

    .line 4150
    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 4143
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4153
    .end local v4    # "i":I
    :cond_3a
    move v4, v3

    .restart local v4    # "i":I
    :goto_3b
    if-ge v4, v0, :cond_45

    .line 4154
    aget-boolean v5, v1, v4

    if-nez v5, :cond_42

    .line 4155
    return v4

    .line 4153
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 4158
    .end local v4    # "i":I
    :cond_45
    return v3
.end method

.method public getManagedProfileBadge(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1080
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1081
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1b

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1082
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1083
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1088
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1090
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_27

    iget v3, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    monitor-exit v1

    return v3

    .line 1091
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method getNextAvailableId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3498
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3499
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3500
    .local v1, "nextId":I
    if-ltz v1, :cond_b

    .line 3501
    monitor-exit v0

    return v1

    .line 3505
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 3506
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3508
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3509
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3510
    .end local v3    # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_25

    .line 3511
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 3513
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_4e

    move v0, v1

    .line 3514
    .end local v1    # "nextId":I
    .local v0, "nextId":I
    if-ltz v0, :cond_46

    .line 3517
    return v0

    .line 3515
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3513
    .end local v0    # "nextId":I
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 632
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 635
    .local v1, "userSize":I
    const/4 v2, 0x0

    .line 635
    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_31

    .line 636
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 637
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 638
    monitor-exit v0

    return-object v3

    .line 635
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 641
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    .line 642
    const/4 v0, 0x0

    return-object v0

    .line 641
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 684
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 687
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    .local v0, "ident":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_32

    .line 690
    :try_start_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    .line 693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    return-object v3

    .line 691
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 693
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .line 786
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 789
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getProfileParentId(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .line 794
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 666
    const/4 v0, 0x1

    .line 667
    .local v0, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_1d

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_21

    .line 670
    :cond_1d
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 672
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 674
    .local v1, "ident":J
    :try_start_25
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_34

    .line 675
    :try_start_28
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    .line 678
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 675
    return-object v4

    .line 676
    :catchall_31
    move-exception v4

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 678
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3559
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3560
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3561
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3562
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3563
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3577
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3578
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3579
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3580
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    .line 3581
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3568
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3569
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3570
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3571
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3572
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 600
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 603
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserCreationTime(I)J
    .registers 7
    .param p1, "userHandle"    # I

    .line 3383
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3384
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 3385
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3386
    if-ne v0, p1, :cond_12

    .line 3387
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_21

    .line 3394
    :catchall_10
    move-exception v3

    goto :goto_30

    .line 3389
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3390
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_21

    .line 3391
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 3394
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_21
    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_10

    .line 3395
    if-eqz v1, :cond_27

    .line 3399
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 3396
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3394
    :goto_30
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_10

    throw v3
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"    # I

    .line 3371
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3372
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 3373
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3374
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_17

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_17

    monitor-exit v0

    return v4

    .line 3372
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3377
    :cond_1a
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3378
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "targetUserId"    # I

    .line 1312
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1314
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_f

    goto :goto_4c

    .line 1319
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1320
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1321
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1322
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_23

    if-ne v4, v5, :cond_23

    const/4 v6, 0x1

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    .line 1324
    .local v6, "sameGroup":Z
    :goto_24
    if-eq v3, p1, :cond_2d

    if-nez v6, :cond_2d

    .line 1325
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1328
    :cond_2d
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_33

    .line 1329
    monitor-exit v0

    return-object v2

    .line 1331
    :cond_33
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 1331
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "callingUserId":I
    .end local v4    # "callingGroupId":I
    .end local v5    # "targetGroupId":I
    .end local v6    # "sameGroup":Z
    move-object v1, v7

    .line 1332
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_65

    .line 1335
    :try_start_37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_42} :catch_43

    return-object v0

    .line 1337
    :catch_43
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1340
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1315
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4c
    :goto_4c
    :try_start_4c
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    monitor-exit v0

    return-object v2

    .line 1332
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_65

    throw v1
.end method

.method public getUserIds()[I
    .registers 3

    .line 1990
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 1992
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1058
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1061
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1554
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 1555
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_1b

    .line 1556
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 1555
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1558
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 1564
    const-string/jumbo v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1571
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 1575
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1581
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1582
    .local v3, "profileOwnerRestrictions":Landroid/os/Bundle;
    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1583
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    :cond_3f
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 1587
    .local v4, "i":I
    :goto_46
    move v2, v4

    .line 1587
    .end local v4    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_67

    .line 1588
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1589
    .local v4, "globalRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1590
    .local v5, "profileUserId":I
    invoke-static {v4, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 1591
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    .end local v4    # "globalRestrictions":Landroid/os/Bundle;
    .end local v5    # "profileUserId":I
    :cond_64
    add-int/lit8 v4, v2, -0x1

    .line 1587
    .end local v2    # "i":I
    .local v4, "i":I
    goto :goto_46

    .line 1594
    .end local v3    # "profileOwnerRestrictions":Landroid/os/Bundle;
    .end local v4    # "i":I
    :cond_67
    monitor-exit v1

    .line 1595
    return-object v0

    .line 1594
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_2a .. :try_end_6b} :catchall_69

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I

    .line 1611
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 3355
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3356
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3357
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v0

    return v1

    .line 3358
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserStartRealtime()J
    .registers 6

    .line 1130
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1131
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1132
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1133
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_15

    .line 1134
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1136
    :cond_15
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1137
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .registers 5

    .line 1142
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1144
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 1145
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1147
    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1148
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 9
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 647
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 651
    .local v2, "userSize":I
    const/4 v3, 0x0

    .line 651
    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_42

    .line 652
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 653
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_2c

    .line 654
    goto :goto_3f

    .line 656
    :cond_2c
    if-eqz p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 657
    :cond_38
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 660
    .end local v3    # "i":I
    :cond_42
    monitor-exit v0

    return-object v1

    .line 661
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userSize":I
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1616
    const-string/jumbo v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1617
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1618
    return v1

    .line 1620
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1621
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1622
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_23

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    nop

    :cond_23
    monitor-exit v0

    return v1

    .line 1623
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v1
.end method

.method hasManagedProfile(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 4167
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4168
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4169
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4170
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_2b

    .line 4171
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4172
    .local v5, "profile":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v6, :cond_28

    invoke-static {v1, v5}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4173
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4170
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4176
    .end local v4    # "i":I
    :cond_2b
    monitor-exit v0

    return v3

    .line 4177
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .registers 8

    .line 1206
    const-string/jumbo v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1208
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1210
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .line 1210
    .local v4, "i":I
    :goto_15
    if-ge v4, v2, :cond_2f

    .line 1211
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1212
    .local v5, "profile":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_2c

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, v0, :cond_2c

    .line 1214
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1210
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1217
    .end local v4    # "i":I
    :cond_2f
    monitor-exit v1

    return v3

    .line 1218
    .end local v2    # "userSize":I
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1513
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1514
    return v1

    .line 1516
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1517
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    nop

    :cond_16
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 9
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 1523
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1524
    return v1

    .line 1526
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1527
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v3, v1

    .local v3, "i":I
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 1528
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1529
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1530
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_29

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1531
    return v0

    .line 1527
    .end local v4    # "userId":I
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1534
    .end local v3    # "i":I
    :cond_2c
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1170
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1171
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_29

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_29

    .line 1172
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1176
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1177
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    monitor-exit v1

    return v3

    .line 1178
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public isManagedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1097
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1b

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1098
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1099
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1105
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1106
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    monitor-exit v1

    return v3

    .line 1107
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 948
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 951
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 952
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    .line 953
    if-eqz v2, :cond_1a

    :try_start_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 956
    :cond_14
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 954
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return v1

    .line 952
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2

    .line 957
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isRestricted()Z
    .registers 3

    .line 1183
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1185
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 764
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 765
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method isUserInitialized(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3803
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 3363
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3364
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3365
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    monitor-exit v0

    return v2

    .line 3366
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isUserRunning(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1124
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1118
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1112
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1344
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1345
    const/4 v0, 0x0

    .line 1347
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1348
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1349
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_34

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1b

    goto :goto_34

    .line 1353
    :cond_1b
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2c

    .line 1354
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1355
    const/4 v0, 0x1

    .line 1357
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_4d

    move-object v1, v2

    .line 1358
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_33

    .line 1359
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1361
    :cond_33
    return-void

    .line 1350
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_34
    :goto_34
    :try_start_34
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    monitor-exit v1

    return-void

    .line 1357
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4d
    move-exception v2

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userHandle"    # I

    .line 2886
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2887
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2889
    const-string v0, "UserManagerService"

    const-string v1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    return v2

    .line 2893
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2896
    .local v0, "ident":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 2897
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_6b

    .line 2898
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2899
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_62

    .line 2902
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_68

    .line 2903
    :try_start_3f
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2904
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 2918
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    return v2

    .line 2911
    :cond_4c
    :try_start_4c
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2914
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 2915
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2916
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_6b

    .line 2918
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2919
    nop

    .line 2920
    return v4

    .line 2900
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_68

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6b

    .line 2918
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2900
    return v2

    .line 2902
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v2

    .line 2916
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 2918
    :catchall_6e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBeforeStartUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3430
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3431
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3432
    return-void

    .line 3434
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3436
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3437
    .local v2, "migrateAppsData":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3438
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3440
    if-eqz p1, :cond_2a

    .line 3441
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3442
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3443
    monitor-exit v3

    goto :goto_2a

    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v4

    .line 3445
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3452
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3453
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3454
    return-void

    .line 3456
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3458
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3459
    .local v2, "migrateAppsData":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3460
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3461
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 8
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 3627
    if-nez p2, :cond_7

    .line 3628
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3631
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3633
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_16

    goto :goto_21

    :cond_16
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_25

    .line 3639
    goto :goto_3f

    .line 3635
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a

    return v2

    .line 3637
    :catch_2a
    move-exception v2

    .line 3638
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3f
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3623
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3624
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3478
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3479
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 3484
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3485
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 3486
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3488
    :cond_1e
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3489
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3490
    return-void

    .line 3480
    .end local v1    # "now":J
    :cond_28
    :goto_28
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userForeground: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 6
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2820
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2821
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2822
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2823
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2824
    monitor-exit v1

    .line 2825
    return-object v0

    .line 2824
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 64
    .param p1, "id"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2414
    const/4 v0, 0x0

    .line 2415
    .local v0, "flags":I
    move v3, v2

    .line 2416
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 2417
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2418
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2419
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 2420
    .local v7, "creationTime":J
    const-wide/16 v9, 0x0

    .line 2421
    .local v9, "lastLoggedInTime":J
    const/4 v11, 0x0

    .line 2422
    .local v11, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v12, -0x2710

    .line 2423
    .local v12, "profileGroupId":I
    const/4 v13, 0x0

    .line 2424
    .local v13, "profileBadge":I
    const/16 v14, -0x2710

    .line 2425
    .local v14, "restrictedProfileParentId":I
    const/4 v15, 0x0

    .line 2426
    .local v15, "partial":Z
    const/16 v16, 0x0

    .line 2427
    .local v16, "guestToRemove":Z
    const/16 v17, 0x0

    .line 2428
    .local v17, "persistSeedData":Z
    const/16 v18, 0x0

    .line 2429
    .local v18, "seedAccountName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2430
    .local v19, "seedAccountType":Ljava/lang/String;
    const/16 v20, 0x0

    .line 2431
    .local v20, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v21, 0x0

    .line 2432
    .local v21, "baseRestrictions":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 2433
    .local v22, "localRestrictions":Landroid/os/Bundle;
    const/16 v23, 0x0

    .line 2435
    .local v23, "globalRestrictions":Landroid/os/Bundle;
    move/from16 v24, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2436
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v24, "serialNumber":I
    move/from16 v25, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2436
    .end local v0    # "flags":I
    .local v25, "flags":I
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v4

    move-object/from16 v4, p2

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2438
    .end local v4    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    :goto_39
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v27, v0

    .line 2438
    .local v27, "type":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_4a

    move/from16 v0, v27

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4c

    .line 2438
    .end local v27    # "type":I
    move-object/from16 v4, p2

    goto :goto_39

    .line 2443
    .restart local v27    # "type":I
    :cond_4a
    move/from16 v0, v27

    .line 2443
    .end local v27    # "type":I
    .local v0, "type":I
    :cond_4c
    const/4 v4, 0x2

    if-eq v0, v4, :cond_6b

    .line 2444
    const-string v4, "UserManagerService"

    move-object/from16 v28, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 2444
    .end local v5    # "account":Ljava/lang/String;
    .local v28, "account":Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v6

    const-string v6, "Unable to read user "

    .line 2444
    .end local v6    # "iconPath":Ljava/lang/String;
    .local v29, "iconPath":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const/4 v4, 0x0

    return-object v4

    .line 2448
    .end local v28    # "account":Ljava/lang/String;
    .end local v29    # "iconPath":Ljava/lang/String;
    .restart local v5    # "account":Ljava/lang/String;
    .restart local v6    # "iconPath":Ljava/lang/String;
    :cond_6b
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .line 2448
    .end local v5    # "account":Ljava/lang/String;
    .end local v6    # "iconPath":Ljava/lang/String;
    .restart local v28    # "account":Ljava/lang/String;
    .restart local v29    # "iconPath":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1ea

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ea

    .line 2449
    const-string/jumbo v4, "id"

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2450
    .local v4, "storedId":I
    if-eq v4, v2, :cond_92

    .line 2451
    const-string v5, "UserManagerService"

    const-string v6, "User id does not match the file name"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/4 v5, 0x0

    return-object v5

    .line 2454
    :cond_92
    const/4 v5, 0x0

    const-string/jumbo v6, "serialNumber"

    invoke-direct {v1, v3, v6, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 2455
    .end local v24    # "serialNumber":I
    .local v6, "serialNumber":I
    const-string v5, "flags"

    move/from16 v30, v0

    const/4 v0, 0x0

    .line 2455
    .end local v0    # "type":I
    .local v30, "type":I
    invoke-direct {v1, v3, v5, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 2456
    .end local v25    # "flags":I
    .local v5, "flags":I
    const-string/jumbo v0, "icon"

    move/from16 v31, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    .end local v4    # "storedId":I
    .end local v29    # "iconPath":Ljava/lang/String;
    .local v0, "iconPath":Ljava/lang/String;
    .local v31, "storedId":I
    const-string v4, "created"

    move/from16 v33, v5

    move/from16 v32, v6

    const-wide/16 v5, 0x0

    .line 2457
    .end local v5    # "flags":I
    .end local v6    # "serialNumber":I
    .local v32, "serialNumber":I
    .local v33, "flags":I
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2458
    const-string/jumbo v4, "lastLoggedIn"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 2459
    const-string/jumbo v4, "lastLoggedInFingerprint"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2461
    const-string/jumbo v4, "profileGroupId"

    const/16 v5, -0x2710

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 2463
    const-string/jumbo v4, "profileBadge"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 2464
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 2466
    const-string/jumbo v4, "partial"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2467
    .local v4, "valueString":Ljava/lang/String;
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 2468
    const/4 v6, 0x1

    .line 2470
    .end local v15    # "partial":Z
    .local v6, "partial":Z
    move v15, v6

    .line 2470
    .end local v6    # "partial":Z
    .restart local v15    # "partial":Z
    :cond_f3
    const-string/jumbo v6, "guestToRemove"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2471
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 2472
    const/4 v6, 0x1

    .line 2475
    .end local v16    # "guestToRemove":Z
    .local v6, "guestToRemove":Z
    move/from16 v16, v6

    .line 2475
    .end local v6    # "guestToRemove":Z
    .restart local v16    # "guestToRemove":Z
    :cond_106
    const-string/jumbo v6, "seedAccountName"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2476
    const-string/jumbo v6, "seedAccountType"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2477
    if-nez v18, :cond_118

    if-eqz v19, :cond_11a

    .line 2478
    :cond_118
    const/16 v17, 0x1

    .line 2481
    :cond_11a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2482
    .local v5, "outerDepth":I
    :goto_11e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v34, v6

    .line 2482
    .end local v30    # "type":I
    .local v34, "type":I
    move-object/from16 v35, v0

    const/4 v0, 0x1

    if-eq v6, v0, :cond_1c5

    .line 2482
    .end local v0    # "iconPath":Ljava/lang/String;
    .local v35, "iconPath":Ljava/lang/String;
    const/4 v6, 0x3

    move/from16 v0, v34

    if-ne v0, v6, :cond_139

    .line 2483
    .end local v34    # "type":I
    .local v0, "type":I
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_135

    goto :goto_139

    .line 2512
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v31    # "storedId":I
    :cond_135
    move/from16 v36, v0

    goto/16 :goto_1c7

    .line 2484
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v31    # "storedId":I
    :cond_139
    :goto_139
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1b9

    const/4 v6, 0x4

    if-ne v0, v6, :cond_146

    .line 2485
    nop

    .line 2481
    move/from16 v36, v0

    move-object/from16 v37, v4

    goto/16 :goto_1bd

    .line 2487
    :cond_146
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2488
    .local v6, "tag":Ljava/lang/String;
    move/from16 v36, v0

    const-string/jumbo v0, "name"

    .line 2488
    .end local v0    # "type":I
    .local v36, "type":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 2489
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2490
    .end local v36    # "type":I
    .restart local v0    # "type":I
    move-object/from16 v37, v4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_162

    .line 2491
    .end local v4    # "valueString":Ljava/lang/String;
    .local v37, "valueString":Ljava/lang/String;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v26

    .line 2508
    .end local v0    # "type":I
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_162
    :goto_162
    move/from16 v30, v0

    goto :goto_1b5

    .line 2493
    .end local v30    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_165
    move-object/from16 v37, v4

    .line 2493
    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v37    # "valueString":Ljava/lang/String;
    const-string/jumbo v0, "restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 2494
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v21

    .line 2508
    .end local v6    # "tag":Ljava/lang/String;
    .end local v36    # "type":I
    .restart local v30    # "type":I
    :cond_174
    :goto_174
    move/from16 v30, v36

    goto :goto_1b5

    .line 2495
    .end local v30    # "type":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_177
    const-string v0, "device_policy_restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 2496
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v22

    goto :goto_174

    .line 2497
    :cond_184
    const-string v0, "device_policy_global_restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 2498
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v23

    goto :goto_174

    .line 2499
    :cond_191
    const-string v0, "account"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 2500
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2501
    .end local v36    # "type":I
    .restart local v0    # "type":I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_162

    .line 2502
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v28

    goto :goto_162

    .line 2504
    .end local v0    # "type":I
    .restart local v36    # "type":I
    :cond_1a5
    const-string/jumbo v0, "seedAccountOptions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 2505
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v20

    .line 2506
    const/16 v17, 0x1

    .line 2506
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_174

    .line 2508
    .end local v36    # "type":I
    .restart local v30    # "type":I
    :goto_1b5
    nop

    .line 2481
    move-object/from16 v0, v35

    goto :goto_1c1

    .line 2481
    .end local v30    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .restart local v0    # "type":I
    .restart local v4    # "valueString":Ljava/lang/String;
    :cond_1b9
    move/from16 v36, v0

    move-object/from16 v37, v4

    .line 2481
    .end local v0    # "type":I
    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v36    # "type":I
    .restart local v37    # "valueString":Ljava/lang/String;
    :goto_1bd
    move-object/from16 v0, v35

    move/from16 v30, v36

    .line 2481
    .end local v35    # "iconPath":Ljava/lang/String;
    .end local v36    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .local v0, "iconPath":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v30    # "type":I
    :goto_1c1
    move-object/from16 v4, v37

    goto/16 :goto_11e

    .line 2512
    .end local v0    # "iconPath":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v30    # "type":I
    .end local v31    # "storedId":I
    .restart local v34    # "type":I
    .restart local v35    # "iconPath":Ljava/lang/String;
    :cond_1c5
    move/from16 v36, v34

    .line 2512
    .end local v34    # "type":I
    .restart local v36    # "type":I
    :goto_1c7
    move-object/from16 v38, v3

    move v3, v13

    move v1, v14

    move/from16 v13, v16

    move/from16 v42, v17

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move-object/from16 v4, v26

    move-object/from16 v39, v28

    move/from16 v6, v33

    move-object/from16 v5, v35

    move v14, v12

    move-object v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move/from16 v7, v32

    goto :goto_210

    .end local v32    # "serialNumber":I
    .end local v33    # "flags":I
    .end local v35    # "iconPath":Ljava/lang/String;
    .end local v36    # "type":I
    .local v0, "type":I
    .restart local v24    # "serialNumber":I
    .restart local v25    # "flags":I
    .restart local v29    # "iconPath":Ljava/lang/String;
    :cond_1ea
    move/from16 v30, v0

    .line 2512
    .end local v0    # "type":I
    .restart local v30    # "type":I
    move-object/from16 v38, v3

    move v3, v13

    move v1, v14

    move/from16 v13, v16

    move/from16 v42, v17

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move/from16 v6, v25

    move-object/from16 v4, v26

    move-object/from16 v39, v28

    move-object/from16 v5, v29

    move/from16 v36, v30

    move v14, v12

    move-object v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move/from16 v7, v24

    .end local v9    # "lastLoggedInTime":J
    .end local v11    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v16    # "guestToRemove":Z
    .end local v17    # "persistSeedData":Z
    .end local v18    # "seedAccountName":Ljava/lang/String;
    .end local v19    # "seedAccountType":Ljava/lang/String;
    .end local v20    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v21    # "baseRestrictions":Landroid/os/Bundle;
    .end local v22    # "localRestrictions":Landroid/os/Bundle;
    .end local v23    # "globalRestrictions":Landroid/os/Bundle;
    .end local v24    # "serialNumber":I
    .end local v25    # "flags":I
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "account":Ljava/lang/String;
    .end local v29    # "iconPath":Ljava/lang/String;
    .end local v30    # "type":I
    .local v1, "restrictedProfileParentId":I
    .local v3, "profileBadge":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "iconPath":Ljava/lang/String;
    .local v6, "flags":I
    .local v7, "serialNumber":I
    .local v8, "creationTime":J
    .local v10, "lastLoggedInTime":J
    .local v12, "lastLoggedInFingerprint":Ljava/lang/String;
    .local v13, "guestToRemove":Z
    .local v14, "profileGroupId":I
    .restart local v36    # "type":I
    .local v38, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v39, "account":Ljava/lang/String;
    .local v40, "seedAccountName":Ljava/lang/String;
    .local v41, "seedAccountType":Ljava/lang/String;
    .local v42, "persistSeedData":Z
    .local v43, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v44, "baseRestrictions":Landroid/os/Bundle;
    .local v45, "localRestrictions":Landroid/os/Bundle;
    .local v46, "globalRestrictions":Landroid/os/Bundle;
    :goto_210
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v47, v0

    .line 2513
    .local v47, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v48, v4

    move-object/from16 v4, v47

    iput v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2514
    .end local v47    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .local v48, "name":Ljava/lang/String;
    iput-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2515
    iput-wide v10, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2516
    iput-object v12, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2517
    iput-boolean v15, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 2518
    iput-boolean v13, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2519
    iput v14, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2520
    iput v3, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2521
    iput v1, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2524
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v49, v0

    .line 2525
    .local v49, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move/from16 v50, v1

    move-object/from16 v1, v49

    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2526
    .end local v49    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v50, "restrictedProfileParentId":I
    move/from16 v51, v3

    move-object/from16 v3, v39

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2527
    .end local v39    # "account":Ljava/lang/String;
    .local v3, "account":Ljava/lang/String;
    .local v51, "profileBadge":I
    move-object/from16 v52, v3

    move-object/from16 v3, v40

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2528
    .end local v40    # "seedAccountName":Ljava/lang/String;
    .local v3, "seedAccountName":Ljava/lang/String;
    .local v52, "account":Ljava/lang/String;
    move-object/from16 v53, v3

    move-object/from16 v3, v41

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2529
    .end local v41    # "seedAccountType":Ljava/lang/String;
    .local v3, "seedAccountType":Ljava/lang/String;
    .local v53, "seedAccountName":Ljava/lang/String;
    move-object/from16 v54, v3

    move/from16 v3, v42

    iput-boolean v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2530
    .end local v42    # "persistSeedData":Z
    .local v3, "persistSeedData":Z
    .local v54, "seedAccountType":Ljava/lang/String;
    move/from16 v55, v3

    move-object/from16 v3, v43

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2532
    .end local v43    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v3, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v55, "persistSeedData":Z
    move-object/from16 v56, v3

    move-object/from16 v57, v4

    move/from16 v16, v50

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 2532
    .end local v3    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v50    # "restrictedProfileParentId":I
    .local v16, "restrictedProfileParentId":I
    .local v56, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v57, "userInfo":Landroid/content/pm/UserInfo;
    monitor-enter v4

    .line 2533
    move-object/from16 v58, v5

    move-object/from16 v5, v44

    if-eqz v5, :cond_277

    .line 2534
    .end local v44    # "baseRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .local v58, "iconPath":Ljava/lang/String;
    :try_start_269
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_26e
    .catchall {:try_start_269 .. :try_end_26e} :catchall_26f

    goto :goto_277

    .line 2542
    :catchall_26f
    move-exception v0

    move-object/from16 v59, v5

    move-object/from16 v60, v45

    .line 2542
    .end local v45    # "localRestrictions":Landroid/os/Bundle;
    .end local v46    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .local v59, "baseRestrictions":Landroid/os/Bundle;
    .local v60, "localRestrictions":Landroid/os/Bundle;
    :goto_274
    move-object/from16 v5, v46

    goto :goto_294

    .line 2536
    .end local v59    # "baseRestrictions":Landroid/os/Bundle;
    .end local v60    # "localRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .restart local v45    # "localRestrictions":Landroid/os/Bundle;
    .restart local v46    # "globalRestrictions":Landroid/os/Bundle;
    :cond_277
    :goto_277
    move-object/from16 v59, v5

    move-object/from16 v5, v45

    if-eqz v5, :cond_287

    .line 2537
    .end local v45    # "localRestrictions":Landroid/os/Bundle;
    .local v5, "localRestrictions":Landroid/os/Bundle;
    .restart local v59    # "baseRestrictions":Landroid/os/Bundle;
    :try_start_27d
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_282
    .catchall {:try_start_27d .. :try_end_282} :catchall_283

    goto :goto_287

    .line 2542
    :catchall_283
    move-exception v0

    move-object/from16 v60, v5

    goto :goto_274

    .line 2539
    :cond_287
    :goto_287
    move-object/from16 v60, v5

    move-object/from16 v5, v46

    if-eqz v5, :cond_292

    .line 2540
    .end local v46    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .restart local v60    # "localRestrictions":Landroid/os/Bundle;
    :try_start_28d
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2542
    :cond_292
    monitor-exit v4

    .line 2543
    return-object v1

    .line 2542
    :goto_294
    monitor-exit v4
    :try_end_295
    .catchall {:try_start_28d .. :try_end_295} :catchall_296

    throw v0

    :catchall_296
    move-exception v0

    goto :goto_294
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 3469
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 3470
    return-void
.end method

.method public removeUser(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .line 2930
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2935
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2936
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    move v3, v2

    .line 2936
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_2f
    move v1, v3

    .line 2937
    .local v1, "isManagedProfile":Z
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_69

    .line 2938
    if-eqz v1, :cond_37

    .line 2939
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_3a

    :cond_37
    const-string/jumbo v0, "no_remove_user"

    .line 2940
    .local v0, "restriction":Ljava/lang/String;
    :goto_3a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2941
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot remove user. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    return v2

    .line 2944
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    .line 2937
    .end local v0    # "restriction":Ljava/lang/String;
    .end local v1    # "isManagedProfile":Z
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 2593
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2594
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2830
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2831
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2832
    monitor-exit v0

    .line 2833
    return-void

    .line 2832
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userHandle"    # I
    .param p4, "target"    # Landroid/content/IntentSender;

    .line 835
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 838
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 845
    .local v3, "identity":J
    if-eqz p2, :cond_2f

    .line 846
    :try_start_25
    invoke-direct {p0, p3, v2, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    .line 847
    nop

    .line 861
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 847
    return v2

    .line 861
    :catchall_2d
    move-exception v0

    goto :goto_52

    .line 849
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 850
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 851
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 852
    .local v0, "needToShowConfirmCredential":Z
    :goto_40
    if-eqz v0, :cond_4a

    .line 853
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2d

    .line 854
    nop

    .line 861
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    return v1

    .line 856
    :cond_4a
    :try_start_4a
    invoke-direct {p0, p3, v1, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_2d

    .line 857
    nop

    .line 861
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    return v2

    .line 861
    .end local v0    # "needToShowConfirmCredential":Z
    :goto_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 3149
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3150
    if-eqz p2, :cond_c

    .line 3151
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3153
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3154
    if-eqz p2, :cond_1e

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1e

    .line 3158
    :cond_18
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 3160
    :catchall_1c
    move-exception v1

    goto :goto_3b

    .line 3155
    :cond_1e
    :goto_1e
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 3160
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1c

    .line 3163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3165
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3166
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3167
    return-void

    .line 3160
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_1c

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1388
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1390
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1391
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1392
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 1393
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1394
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1395
    monitor-exit v1

    .line 1396
    return-void

    .line 1395
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 1392
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 3537
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3538
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3540
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    .line 3541
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3542
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_2a

    .line 3543
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_3a

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3d

    return-void

    .line 3546
    :cond_2a
    :try_start_2a
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3547
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3548
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3549
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3550
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 3551
    if-eqz p5, :cond_38

    .line 3552
    :try_start_35
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3554
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    .line 3555
    return-void

    .line 3550
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2

    .line 3554
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 608
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_46

    .line 612
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 613
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_30

    .line 614
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_43

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_46

    return-void

    .line 617
    :cond_30
    :try_start_30
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 618
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 619
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 620
    move-object v0, v3

    .line 622
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "currentAccount":Ljava/lang/String;
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_43

    .line 624
    if-eqz v0, :cond_41

    .line 625
    :try_start_3e
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 627
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    .line 628
    return-void

    .line 622
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v3

    .line 627
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public setUserAdmin(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1015
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3d

    .line 1020
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1021
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3a

    .line 1022
    if-eqz v2, :cond_38

    :try_start_13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_38

    .line 1027
    :cond_1a
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1028
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1029
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3d

    .line 1033
    const-string/jumbo v0, "no_sms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1034
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1035
    return-void

    .line 1024
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    return-void

    .line 1021
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2

    .line 1029
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1000
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 1004
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1005
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    .line 1006
    if-eqz v2, :cond_27

    :try_start_12
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1007
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1008
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1010
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1011
    return-void

    .line 1005
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v2

    .line 1010
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1292
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1294
    const-string v0, "UserManagerService"

    const-string v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return-void

    .line 1297
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1298
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1271
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1274
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1275
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_32

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_32

    .line 1279
    :cond_17
    if-eqz p2, :cond_2b

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1280
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1281
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1282
    const/4 v0, 0x1

    .line 1284
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_4b

    .line 1285
    if-eqz v0, :cond_31

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    .line 1288
    :cond_31
    return-void

    .line 1276
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_32
    :goto_32
    :try_start_32
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    monitor-exit v1

    return-void

    .line 1284
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1628
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1629
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1630
    return-void

    .line 1632
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1635
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1636
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1635
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1637
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1639
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1640
    .end local v1    # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 1641
    return-void

    .line 1640
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3601
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3602
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3603
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3604
    .local v1, "userSize":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_43

    .line 3605
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3606
    .local v4, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_23

    .end local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    goto :goto_40

    .line 3607
    .restart local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_23
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3608
    goto :goto_40

    .line 3610
    :cond_30
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3611
    goto :goto_40

    .line 3613
    :cond_3d
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3604
    .end local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3615
    .end local v1    # "userSize":I
    .end local v3    # "i":I
    :cond_43
    monitor-exit v0

    .line 3616
    return v2

    .line 3615
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v1
.end method

.method systemReady()V
    .registers 7

    .line 554
    const-string v0, "appops"

    .line 555
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 559
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_40

    .line 561
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 562
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2e

    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 567
    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 570
    :cond_2e
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 573
    return-void

    .line 559
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2255
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2256
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2257
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2258
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2260
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2261
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2262
    const-string/jumbo v2, "id"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2263
    const-string/jumbo v2, "serialNumber"

    iget v4, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2264
    const-string v2, "flags"

    iget v4, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2265
    const-string v2, "created"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    const-string/jumbo v2, "lastLoggedIn"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2267
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2266
    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 2269
    const-string/jumbo v2, "lastLoggedInFingerprint"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2272
    :cond_6b
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 2273
    const-string/jumbo v2, "icon"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2275
    :cond_77
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_84

    .line 2276
    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2278
    :cond_84
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_91

    .line 2279
    const-string/jumbo v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2281
    :cond_91
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_a3

    .line 2282
    const-string/jumbo v2, "profileGroupId"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2283
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2282
    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2285
    :cond_a3
    const-string/jumbo v2, "profileBadge"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2286
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2285
    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2287
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_bf

    .line 2288
    const-string/jumbo v2, "restrictedProfileParentId"

    iget v4, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2289
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2288
    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2292
    :cond_bf
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_db

    .line 2293
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_cf

    .line 2294
    const-string/jumbo v2, "seedAccountName"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2296
    :cond_cf
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_db

    .line 2297
    const-string/jumbo v2, "seedAccountType"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    :cond_db
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f0

    .line 2301
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2302
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2303
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2305
    :cond_f0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2306
    :try_start_f3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2307
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    .line 2306
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2308
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2309
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_restrictions"

    .line 2308
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2311
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2312
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_global_restrictions"

    .line 2311
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2314
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_f3 .. :try_end_122} :catchall_158

    .line 2316
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_135

    .line 2317
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2318
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2319
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    :cond_135
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_14e

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_14e

    .line 2323
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2324
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2325
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2328
    :cond_14e
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2330
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2331
    return-void

    .line 2314
    :catchall_158
    move-exception v3

    :try_start_159
    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw v3
.end method
