.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$Injector;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field private static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field private mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field private mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/Owners$Injector;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/Owners;-><init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V

    .line 133
    return-void
.end method

.method constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 141
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 142
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 143
    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/Owners;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/devicepolicy/Owners;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private pushToPackageManagerLocked()V
    .locals 4

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 199
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 198
    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 201
    return-void
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 490
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 492
    return v2

    .line 495
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 496
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 497
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 499
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v1, :cond_9

    .line 500
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 501
    goto :goto_0

    .line 504
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 505
    const-string v6, "device-owner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 506
    const-string v5, "name"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 507
    const-string/jumbo v5, "package"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 508
    new-instance v5, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 511
    iput v2, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 512
    goto/16 :goto_3

    :cond_2
    const-string v6, "device-initializer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_3

    .line 514
    :cond_3
    const-string/jumbo v6, "profile-owner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 515
    const-string/jumbo v5, "package"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 516
    const-string v5, "name"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    const-string v6, "component"

    .line 518
    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    const-string/jumbo v8, "userId"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 520
    nop

    .line 521
    if-eqz v6, :cond_5

    .line 522
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 524
    if-eqz v13, :cond_4

    .line 525
    new-instance v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v6

    move-object v12, v5

    invoke-direct/range {v11 .. v16}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    :cond_4
    const-string v8, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing device-owner file. Bad component name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_5
    move-object v6, v7

    :goto_1
    if-nez v6, :cond_6

    .line 535
    new-instance v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v6

    move v7, v9

    move-object v9, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 539
    :cond_6
    move v7, v9

    :goto_2
    iget-object v5, v0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    goto :goto_3

    :cond_7
    const-string/jumbo v6, "system-update-policy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 541
    invoke-static {v4}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 546
    :goto_3
    goto/16 :goto_0

    .line 543
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag in device owner file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_4

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Error parsing device-owner file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    :goto_4
    return v1
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 280
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 282
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearSystemUpdatePolicy()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 979
    nop

    .line 980
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Device Owner: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  User ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    nop

    .line 986
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v2, :cond_2

    .line 987
    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 990
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System Update Policy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    nop

    .line 993
    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v2, :cond_4

    .line 994
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 995
    if-eqz v0, :cond_3

    .line 996
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 998
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Profile Owner (User "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1000
    nop

    .line 1001
    nop

    .line 994
    move v0, v1

    goto :goto_1

    .line 1003
    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v2, :cond_6

    .line 1004
    if-eqz v0, :cond_5

    .line 1005
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1007
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Pending System Update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    nop

    .line 1010
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_9

    .line 1011
    :cond_7
    if-eqz v0, :cond_8

    .line 1012
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1014
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "System update freeze record: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1014
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    nop

    .line 1018
    :cond_9
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1027
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserId()I
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    monitor-exit v0

    return v1

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-nez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 221
    :cond_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLegacyConfigFile()Ljava/io/File;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1022
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 336
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    .line 337
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1032
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "profile_owner.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 343
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    .line 344
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 350
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    .line 351
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 452
    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    .line 453
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :goto_0
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 396
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object v1

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object v1

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasDeviceOwner()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasProfileOwner(I)Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    .line 434
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isDeviceOwnerUserId(I)Z
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    .line 428
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method load()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFile()Ljava/io/File;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 156
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 164
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 165
    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Failed to remove the legacy setting file"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :cond_1
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 177
    new-instance v5, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, p0, v4}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    .line 178
    goto :goto_1

    .line 180
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 182
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 183
    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "User %d has both DO and PO, which is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 185
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pushToAppOpsLocked()V
    .locals 8

    .line 599
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 600
    return-void

    .line 602
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 604
    :try_start_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 605
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const v4, 0x422000

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 609
    if-ltz v3, :cond_1

    .line 610
    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    .line 614
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 615
    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 616
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 618
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 615
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    .line 619
    if-ltz v5, :cond_2

    .line 620
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 624
    :cond_3
    const-class v3, Landroid/app/AppOpsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManagerInternal;

    .line 625
    if-eqz v3, :cond_5

    .line 626
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeProfileOwner(I)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 304
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 585
    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 586
    new-instance p1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 587
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 588
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2

    .line 251
    if-gez p3, :cond_0

    .line 252
    const-string p1, "DevicePolicyManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid user id for device owner user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 472
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p2, p1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 475
    monitor-exit v0

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 269
    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 271
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 272
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 10

    .line 289
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 295
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 297
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 482
    if-eqz v1, :cond_0

    .line 483
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .locals 3

    .line 405
    nop

    .line 406
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 408
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 409
    nop

    .line 411
    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 413
    nop

    .line 415
    move p1, v2

    :cond_1
    monitor-exit v0

    .line 416
    return p1

    .line 415
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 369
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method transferDeviceOwnership(Landroid/content/ComponentName;)V
    .locals 8

    .line 322
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 328
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 329
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method transferProfileOwner(Landroid/content/ComponentName;I)V
    .locals 9

    .line 310
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 312
    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writeDeviceOwner()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    .line 560
    monitor-exit v0

    .line 561
    return-void

    .line 560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeProfileOwner(I)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V

    .line 569
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
