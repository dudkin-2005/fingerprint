.class public abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field categoryHint:I

.field childPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field installPermissionsFixed:Z

.field installerPackageName:Ljava/lang/String;

.field isOrphaned:Z

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field oldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field parentPackageName:Ljava/lang/String;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field updateAvailable:Z

.field private final userState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field usesStaticLibraries:[Ljava/lang/String;

.field usesStaticLibrariesVersions:[J

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:J

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 108
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .locals 1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 106
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 163
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V
    .locals 9
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
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p14

    .line 142
    move/from16 v2, p11

    move/from16 v3, p12

    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 106
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    .line 130
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 143
    move-object v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 144
    move-object v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 145
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_0

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 148
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 149
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 150
    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 5

    .line 235
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 237
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 238
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 240
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 241
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 243
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 244
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 245
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 246
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 251
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 254
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 255
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 257
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 261
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 262
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 263
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 264
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2

    .line 266
    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    nop

    .line 269
    :cond_3
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 270
    iget-boolean p1, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 271
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 275
    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2

    .line 494
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2

    .line 498
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .locals 1

    .line 589
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 591
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 232
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 2

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 511
    iget-object v1, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    .line 512
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    .line 513
    :cond_0
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 514
    return p1
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 2

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 503
    iget-object v1, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    .line 504
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    .line 505
    :cond_0
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 506
    return p1
.end method

.method getCeDataInode(I)J
    .locals 2

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 1

    .line 527
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 528
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 p1, 0x1

    return p1

    .line 530
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 531
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 532
    const/4 p1, 0x2

    return p1

    .line 534
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object p1
.end method

.method getDomainVerificationStatusForUser(I)J
    .locals 4

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 575
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v0, v0

    .line 576
    iget p1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    .line 577
    return-wide v0
.end method

.method getEnabled(I)I
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    return p1
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object p1
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .locals 0

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 631
    iget-object p1, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object p1
.end method

.method getHidden(I)Z
    .locals 0

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    return p1
.end method

.method getInstallReason(I)I
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageUserState;->installReason:I

    return p1
.end method

.method getInstalled(I)Z
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    return p1
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantApp(I)Z
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    return p1
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object p1
.end method

.method public getNotInstalledUserIds()[I
    .locals 6

    .line 543
    nop

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 545
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_0

    .line 547
    add-int/lit8 v3, v3, 0x1

    .line 545
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_1
    if-nez v3, :cond_2

    sget-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 551
    :cond_2
    new-array v2, v3, [I

    .line 552
    nop

    .line 553
    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_4

    .line 554
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_3

    .line 555
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v3

    .line 553
    move v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_4
    return-object v2
.end method

.method getNotLaunched(I)Z
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return p1
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .locals 0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .locals 0

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    return p1
.end method

.method getSuspended(I)Z
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    return p1
.end method

.method getUserState()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return p1
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 174
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 179
    iput-wide p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 180
    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 181
    return-void
.end method

.method isAnyInstalled([I)Z
    .locals 4

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 338
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v3, :cond_0

    .line 339
    const/4 p1, 0x1

    return p1

    .line 337
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    return v1
.end method

.method public isSharedUser()Z
    .locals 1

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateAvailable()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .locals 1

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 484
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez p2, :cond_0

    .line 485
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 487
    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez p2, :cond_1

    .line 488
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 490
    :cond_1
    return-object p1
.end method

.method queryInstalledUsers([IZ)[I
    .locals 6

    .line 346
    nop

    .line 347
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    .line 348
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 347
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_1
    new-array v0, v3, [I

    .line 353
    nop

    .line 354
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget v4, p1, v1

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_2

    .line 356
    aput v4, v0, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 360
    :cond_3
    return-object v0
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageUserState;

    .line 284
    if-nez p1, :cond_0

    .line 285
    sget-object p1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object p1

    .line 287
    :cond_0
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 288
    return-object p1
.end method

.method removeUser(I)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 540
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 3

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 519
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 521
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 522
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    nop

    :cond_1
    or-int p1, v0, v1

    .line 523
    return p1
.end method

.method setCeDataInode(JI)V
    .locals 0

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p3

    iput-wide p1, p3, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 369
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 469
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-object p1, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 470
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 479
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 480
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .locals 1

    .line 581
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p3

    .line 582
    iput p1, p3, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 583
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 584
    iput p2, p3, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 586
    :cond_0
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .locals 0

    .line 292
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 293
    iput p1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    .line 294
    iput-object p3, p2, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 295
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 465
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-object p1, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 466
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 474
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 475
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .locals 0

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 626
    iput-object p2, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 627
    return-void
.end method

.method setHidden(ZI)V
    .locals 0

    .line 392
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 393
    return-void
.end method

.method setInstallReason(II)V
    .locals 0

    .line 318
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput p1, p2, Landroid/content/pm/PackageUserState;->installReason:I

    .line 319
    return-void
.end method

.method setInstalled(ZI)V
    .locals 0

    .line 306
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    .line 307
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method setInstantApp(ZI)V
    .locals 0

    .line 414
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 415
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 567
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 0

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 385
    return-void
.end method

.method setOverlayPaths(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 324
    return-void
.end method

.method setStopped(ZI)V
    .locals 0

    .line 376
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 377
    return-void
.end method

.method setSuspended(ZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .locals 1

    .line 401
    invoke-direct {p0, p6}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p6

    .line 402
    iput-boolean p1, p6, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 403
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p6, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 404
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    iput-object p3, p6, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    .line 405
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, v0

    :goto_2
    iput-object p4, p6, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 406
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p5, v0

    :goto_3
    iput-object p5, p6, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 407
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 201
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 205
    return-void
.end method

.method setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/PersistableBundle;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 434
    move-wide v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 435
    move v1, p4

    iput v1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 436
    move v1, p5

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 437
    move v1, p6

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 438
    move v1, p7

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 439
    move v1, p8

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 440
    move v1, p9

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 441
    move-object v1, p10

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 442
    move-object v1, p11

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    .line 443
    move-object v1, p12

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 444
    move-object/from16 v1, p13

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 445
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 446
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 447
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 448
    move/from16 v1, p19

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 449
    move/from16 v1, p20

    iput v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 450
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 451
    move/from16 v1, p14

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 452
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 453
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 454
    return-void
.end method

.method setVirtualPreload(ZI)V
    .locals 0

    .line 422
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 423
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 193
    return-void
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 10

    .line 594
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 595
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 596
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 597
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 598
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->userState:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageUserState;

    .line 599
    const-wide v7, 0x10500000001L

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 601
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 602
    const/4 v5, 0x2

    goto :goto_1

    .line 603
    :cond_0
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v5, :cond_1

    .line 604
    nop

    .line 608
    move v5, v7

    goto :goto_1

    .line 606
    :cond_1
    nop

    .line 608
    move v5, v1

    :goto_1
    const-wide v8, 0x10e00000002L

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 609
    const-wide v8, 0x10800000003L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 610
    const-wide v8, 0x10800000004L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 611
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v5, :cond_2

    .line 612
    const-wide v8, 0x10900000009L

    iget-object v5, v6, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 614
    :cond_2
    const-wide v8, 0x10800000005L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 615
    const-wide v8, 0x10800000006L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/2addr v5, v7

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 616
    const-wide v7, 0x10e00000007L

    iget v5, v6, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 617
    const-wide v7, 0x10900000008L

    iget-object v5, v6, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 620
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 622
    :cond_3
    return-void
.end method
