.class public Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusAppBootInfo"
.end annotation


# static fields
.field public static final BOOT_FLAG_GO:I = 0x1

.field public static final BOOT_FLAG_IGNORE:I = 0x0

.field public static final PKG_ACTION_BLACKLIST:I = 0x2

.field public static final PKG_ACTION_DEFAULT:I = 0x0

.field public static final PKG_ACTION_INVALID:I = -0x1

.field public static final PKG_ACTION_WHITELIST:I = 0x1

.field public static final PKG_FLAG_BLACKLIST_APP:I = 0x10

.field public static final PKG_FLAG_BLACKLIST_COMPONENT:I = 0x1000

.field public static final PKG_FLAG_DATA_APP:I = 0x4

.field public static final PKG_FLAG_DEFAULT_APP:I = 0x1

.field public static final PKG_FLAG_FORCE_UPDATE_ACTION:I = 0x4000

.field public static final PKG_FLAG_HUGE_POWER:I = 0x8000

.field public static final PKG_FLAG_SPECIAL_ACCESSIBILITY_APP:I = 0x400

.field public static final PKG_FLAG_SPECIAL_APP:I = 0x20

.field public static final PKG_FLAG_SPECIAL_DEPENDENCY_APP:I = 0x40

.field public static final PKG_FLAG_SPECIAL_INPUT_METHOD_APP:I = 0x100

.field public static final PKG_FLAG_SPECIAL_LAUNCHER_APP:I = 0x80

.field public static final PKG_FLAG_SPECIAL_SANDBOX_APP:I = 0x200

.field public static final PKG_FLAG_SPECIAL_TTS_APP:I = 0x2000

.field public static final PKG_FLAG_SPECIAL_WIDGET_APP:I = 0x800

.field public static final PKG_FLAG_SYS_APP:I = 0x2

.field public static final PKG_FLAG_WHITELIST_APP:I = 0x8


# instance fields
.field private volatile mAction:I

.field private mBlackListEnable:Z

.field private volatile mBootFlag:I

.field private mCalleePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallingServiceTag:Ljava/lang/String;

.field private mLastCallingServiceTime:J

.field mParserPkg:Landroid/content/pm/PackageParser$Package;

.field private volatile mPkgFlag:I

.field private mPkgName:Ljava/lang/String;

.field private mRogueWakeCount:I

.field private mSetted:I

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1806
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1807
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1813
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1839
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1840
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    .line 1844
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1845
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1847
    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    .line 1848
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 1849
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    .line 1851
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    .line 1852
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    .line 1855
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1856
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_51

    if-eqz p1, :cond_51

    .line 1857
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 1858
    .local v0, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v0, :cond_51

    .line 1859
    iget v3, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 1860
    iget v3, v0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_4f

    .line 1861
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    goto :goto_51

    .line 1863
    :cond_4f
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 1867
    .end local v0    # "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    :cond_51
    :goto_51
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1804
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p1, "x1"    # I

    .line 1804
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p1, "x1"    # I

    .line 1804
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1804
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addCalleePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2106
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    .line 2107
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2109
    :cond_e
    return-void
.end method

.method public addCallerPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 2100
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    .line 2101
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_e
    return-void
.end method

.method public canChangeRuleByUsage()Z
    .registers 3

    .line 1885
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1886
    return v1

    .line 1889
    :cond_6
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_13

    goto :goto_15

    .line 1893
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 1891
    :cond_15
    :goto_15
    return v1
.end method

.method public getAction()I
    .registers 2

    .line 2039
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    return v0
.end method

.method public getBlackListEnableFlag()Z
    .registers 2

    .line 2070
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    return v0
.end method

.method public getBootFlag()I
    .registers 2

    .line 2062
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    return v0
.end method

.method public getCalleePackageSet()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCalleePackageSetString()Ljava/lang/String;
    .registers 2

    .line 2124
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCalleePkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerPackageSet()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getCallerPackageSetString()Ljava/lang/String;
    .registers 2

    .line 2120
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mCallerPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgFlag()I
    .registers 2

    .line 2046
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .line 2025
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSetted()I
    .registers 2

    .line 2054
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 2032
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    return v0
.end method

.method public setAction(I)V
    .registers 2
    .param p1, "action"    # I

    .line 2036
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    .line 2037
    return-void
.end method

.method public setBlackListEnableFlag(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 2066
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    .line 2067
    return-void
.end method

.method public setBootFlag(I)V
    .registers 2
    .param p1, "bootFlag"    # I

    .line 2058
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 2059
    return-void
.end method

.method public setDependencyPackageFlag()V
    .registers 2

    .line 1870
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1873
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1874
    return-void
.end method

.method public setPPPackage(Landroid/content/pm/PackageParser$Package;)V
    .registers 13
    .param p1, "parserPkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1896
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    .line 1897
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_248

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_248

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    if-eqz v2, :cond_248

    const-string v2, "android"

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    .line 1898
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_248

    .line 1905
    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_22f

    .line 1906
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_18c

    .line 1907
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 1908
    const/4 v2, 0x0

    .line 1909
    .local v2, "isSysApp":Z
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mParserPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_49

    .line 1911
    const/4 v2, 0x1

    .line 1912
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/2addr v3, v0

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1913
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1914
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1915
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_58

    .line 1917
    :cond_49
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1918
    iget v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1919
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1922
    :goto_58
    const/4 v3, 0x0

    .line 1923
    .local v3, "bingoLauncher":Z
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 1924
    .local v5, "ac":Landroid/content/pm/PackageParser$Activity;
    if-eqz v3, :cond_6e

    .line 1925
    goto :goto_90

    .line 1927
    :cond_6e
    if-eqz v5, :cond_8f

    .line 1928
    iget-object v6, v5, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 1929
    .local v6, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_76
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1930
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-eqz v8, :cond_8e

    .line 1931
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 1932
    const/4 v3, 0x1

    .line 1933
    goto :goto_8f

    .line 1936
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_8e
    goto :goto_76

    .line 1938
    .end local v5    # "ac":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_8f
    :goto_8f
    goto :goto_5f

    .line 1939
    :cond_90
    :goto_90
    if-nez v3, :cond_b8

    .line 1940
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_af

    .line 1941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# setPPPackage # parserPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " # hide-laucher app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1944
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v4

    or-int/lit8 v4, v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1947
    :cond_b8
    const/4 v4, 0x0

    .line 1948
    .local v4, "bingoTTSService":Z
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    .line 1949
    .local v6, "ac":Landroid/content/pm/PackageParser$Service;
    if-eqz v4, :cond_ce

    .line 1950
    goto :goto_f0

    .line 1952
    :cond_ce
    if-eqz v6, :cond_ef

    .line 1953
    iget-object v7, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1954
    .local v7, "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1955
    .local v9, "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    if-eqz v9, :cond_ee

    .line 1956
    const-string v10, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 1957
    const/4 v4, 0x1

    .line 1958
    goto :goto_ef

    .line 1961
    .end local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_ee
    goto :goto_d6

    .line 1963
    .end local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    .end local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_ef
    :goto_ef
    goto :goto_bf

    .line 1965
    :cond_f0
    :goto_f0
    if-ne v4, v1, :cond_118

    .line 1966
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_10f

    .line 1967
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# setPPPackage # parserPkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " # tts app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1970
    :cond_10f
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    or-int/lit8 v5, v5, 0x20

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 1973
    :cond_118
    if-nez v2, :cond_18c

    .line 1974
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_120
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    .line 1975
    .restart local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    if-eqz v6, :cond_18b

    .line 1976
    iget-object v7, v6, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 1977
    .restart local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_134
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 1978
    .restart local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    if-eqz v9, :cond_18a

    const-string v10, "android.content.SyncAdapter"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18a

    .line 1979
    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    if-eqz v10, :cond_18a

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_18a

    .line 1980
    sget-boolean v8, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v8, :cond_178

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# setPPPackage # SyncAdapter: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1981
    :cond_178
    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mSyncServiceClassList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v10}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    goto :goto_18b

    .line 1985
    .end local v9    # "aii":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_18a
    goto :goto_134

    .line 1987
    .end local v6    # "ac":Landroid/content/pm/PackageParser$Service;
    .end local v7    # "aiis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_18b
    :goto_18b
    goto :goto_120

    .line 1991
    .end local v2    # "isSysApp":Z
    .end local v3    # "bingoLauncher":Z
    .end local v4    # "bingoTTSService":Z
    :cond_18c
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "clock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "alarm"

    .line 1992
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "calendar"

    .line 1993
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "plan"

    .line 1994
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "mail"

    .line 1995
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "note"

    .line 1996
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "test"

    .line 1997
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e0

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v3, "cts"

    .line 1998
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_206

    .line 1999
    :cond_1e0
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1fd

    .line 2000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setPPPackage # parserPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # alarm app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2004
    :cond_1fd
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 2008
    :cond_206
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->isPackageInPresetWhitelist(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 2009
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPkgFlag(I)V

    .line 2012
    :cond_217
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v2

    if-nez v2, :cond_22f

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_22c

    .line 2014
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2015
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_22f

    .line 2017
    :cond_22c
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 2021
    :cond_22f
    :goto_22f
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_247

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setPPPackage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2022
    :cond_247
    return-void

    .line 1899
    :cond_248
    :goto_248
    iget v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1900
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 1901
    iput v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPPPackage # abi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1903
    return-void
.end method

.method public setPkgFlag(I)V
    .registers 2
    .param p1, "pkgFlag"    # I

    .line 2042
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    .line 2043
    return-void
.end method

.method public setSetted(I)V
    .registers 2
    .param p1, "sett"    # I

    .line 2050
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    .line 2051
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 2028
    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    .line 2029
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnePlusAppBootInfo{mPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPkgFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mPkgFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSetted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mSetted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBootFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBlackListEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBlackListEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2136
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;

    .line 2074
    iget v0, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mBootFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 2075
    return v1

    .line 2078
    :cond_6
    const/4 v0, 0x0

    .line 2079
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2081
    .local v2, "curTime":J
    iget-wide v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_35

    .line 2082
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2084
    iget v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->MIN_UNBEARABLE_COUNT:I
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$300()I

    move-result v1

    if-lt v4, v1, :cond_37

    .line 2085
    iput v5, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    .line 2086
    const/4 v0, 0x1

    goto :goto_37

    .line 2090
    :cond_35
    iput v5, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    .line 2093
    :cond_37
    :goto_37
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLastCallingServiceBootPolicy # ret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " tag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rogueWakeCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mRogueWakeCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2094
    :cond_61
    iput-wide v2, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTime:J

    .line 2095
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->mLastCallingServiceTag:Ljava/lang/String;

    .line 2096
    return v0
.end method
