.class public Lcom/android/server/pm/OemCompatibilityHelper;
.super Ljava/lang/Object;
.source "OemCompatibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;
    }
.end annotation


# static fields
.field private static final ABI_TO_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ABI_TO_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPAT_CONFIG_LIST_NAME:Ljava/lang/String; = "CompatConfigList"

.field private static final DATA_FILE_DIR:Ljava/lang/String; = "/data/system/oneplus_cpt_list.xml"

.field private static final DEBUG:Z

.field private static final DISABLE_INSTALL_WARNING:Ljava/lang/String; = "disable.install.warning"

.field private static final FILTER_NAME:Ljava/lang/String; = "compatibility_config_values"

.field public static final FORCE_CHECK_OP_SDK:I = 0x46

.field public static final FORCE_CHOOSE_ANDROID_WEBVIEW:I = 0x1

.field public static final FORCE_CHOOSING_TARGETSDK:I = 0x47

.field public static final FORCE_DEX2OAT_ROLLBACK:I = 0x5f

.field public static final FORCE_DISABLE_HARDWAREACCELERATE_FOR_ACTIVITIES:I = 0x4e

.field public static final FORCE_DISABLE_HARDWAREACCELERATE_QCOM:I = 0x55

.field public static final FORCE_ENABLE_DEBUGGER:I = 0x6b

.field public static final FORCE_ENABLE_HARDWAREACCELERATE:I = 0x6f

.field public static final FORCE_ENABLE_HARDWAREACCELERATE_FOR_ACTIVITIES:I = 0x68

.field public static final FORCE_IN_SAFEMODE_DEX:I = 0xd3

.field public static final FORCE_LOAD_APACHE_CLASS:I = 0xf

.field public static final FORCE_MINI_TRIMMEMORY:I = 0x14b

.field public static final FORCE_RUNNING_IN_32_BIT_V5:I = 0x1bd

.field public static final FORCE_RUNNING_IN_32_BIT_V7:I = 0x1bb

.field public static final FORCE_RUNNING_IN_64_BIT:I = 0x1bc

.field public static final NOT_ALLOEED_INSTALL_PACKAGE:I = 0x0

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "/system/etc/oneplus_cpt_list.xml"

.field private static final TAG:Ljava/lang/String; = "OemCompatibilityHelper"

.field private static final WARNING_DATA_FILE_DIR:Ljava/lang/String; = "/data/system/install_warning_list.xml"

.field public static final WARNING_INSTALL_PACKAGE:I = 0xe6

.field private static final WARNING_SYSTEM_FILE_DIR:Ljava/lang/String; = "/system/etc/install_warning_list.xml"

.field private static mContext:Landroid/content/Context;

.field private static mTotalCount:I

.field private static sConfigLock:Ljava/lang/Object;


# instance fields
.field private mCompatConfigList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mWarningList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 70
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    .line 97
    sput v1, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string v2, "armeabi"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string v2, "armeabi-v7a"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string v2, "arm64-v8a"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    .line 110
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "armeabi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "armeabi-v7a"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "arm64-v8a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    .line 240
    sput-object p1, Lcom/android/server/pm/OemCompatibilityHelper;->mContext:Landroid/content/Context;

    .line 241
    invoke-direct {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->parseContentFromXML()V

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 243
    invoke-direct {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->parseWarningAppFromXML()V

    .line 245
    :cond_25
    sget-boolean v0, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    if-eqz v0, :cond_32

    const-string v0, "OemCompatibilityHelper"

    invoke-virtual {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->dumpToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/OemCompatibilityHelper;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/OemCompatibilityHelper;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->resolveCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private changeActivitiesHW(Ljava/util/ArrayList;Z)V
    .registers 6
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 765
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_2a

    .line 766
    if-eqz p2, :cond_19

    .line 767
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_27

    .line 769
    :cond_19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 765
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 772
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method private changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .registers 8
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 778
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const-string v0, ""

    .line 779
    .local v0, "cmp":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_56

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    nop

    .line 782
    if-eqz p3, :cond_2c

    const/16 v2, 0x68

    goto :goto_2e

    .line 783
    :cond_2c
    const/16 v2, 0x4e

    .line 781
    :goto_2e
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 785
    if-eqz p3, :cond_45

    .line 786
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_53

    .line 788
    :cond_45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 779
    :cond_53
    :goto_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 792
    .end local v1    # "i":I
    :cond_56
    return-void
.end method

.method private char2int([C)I
    .registers 4
    .param p1, "in"    # [C

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "out":I
    const/4 v1, 0x0

    aget-char v1, p1, v1

    add-int/lit8 v1, v1, -0x61

    mul-int/lit8 v1, v1, 0x1a

    add-int/2addr v0, v1

    .line 462
    const/4 v1, 0x1

    aget-char v1, p1, v1

    add-int/lit8 v1, v1, -0x61

    add-int/2addr v0, v1

    .line 463
    return v0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .line 638
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "oldFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 640
    .local v1, "inStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 642
    .local v2, "fs":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 643
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_5a
    .catchall {:try_start_7 .. :try_end_12} :catchall_58

    move-object v1, v3

    .line 645
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 646
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 647
    .local v3, "buffer":[B
    :goto_1d
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "byteread":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2a

    .line 648
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_36
    .catchall {:try_start_13 .. :try_end_29} :catchall_34

    goto :goto_1d

    .line 653
    .end local v3    # "buffer":[B
    :cond_2a
    nop

    .line 655
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_58

    .line 658
    :goto_2e
    goto :goto_4d

    .line 656
    :catch_2f
    move-exception v3

    .line 657
    .local v3, "e1":Ljava/io/IOException;
    :goto_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5a
    .catchall {:try_start_30 .. :try_end_33} :catchall_58

    .end local v3    # "e1":Ljava/io/IOException;
    goto :goto_2e

    .line 653
    .end local v5    # "byteread":I
    :catchall_34
    move-exception v3

    goto :goto_42

    .line 650
    :catch_36
    move-exception v3

    .line 651
    .local v3, "e":Ljava/io/IOException;
    :try_start_37
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 653
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4d

    .line 655
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_58

    goto :goto_2e

    .line 656
    :catch_40
    move-exception v3

    goto :goto_30

    .line 653
    :goto_42
    if-eqz v2, :cond_4c

    .line 655
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_58

    .line 658
    goto :goto_4c

    .line 656
    :catch_48
    move-exception v4

    .line 657
    .local v4, "e1":Ljava/io/IOException;
    :try_start_49
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 658
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    throw v3
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_5a
    .catchall {:try_start_49 .. :try_end_4d} :catchall_58

    .line 665
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_64

    .line 667
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 670
    :goto_52
    goto :goto_64

    .line 668
    :catch_53
    move-exception v3

    .line 669
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e1":Ljava/io/IOException;
    goto :goto_52

    .line 665
    :catchall_58
    move-exception v3

    goto :goto_65

    .line 662
    :catch_5a
    move-exception v3

    .line 663
    .local v3, "e":Ljava/io/IOException;
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    .line 665
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_64

    .line 667
    :try_start_60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_53

    goto :goto_52

    .line 673
    :cond_64
    :goto_64
    return-void

    .line 665
    :goto_65
    if-eqz v1, :cond_6f

    .line 667
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 670
    goto :goto_6f

    .line 668
    :catch_6b
    move-exception v4

    .line 669
    .restart local v4    # "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 670
    .end local v4    # "e1":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    throw v3
.end method

.method private customizeHardwareAccelerateForActivityIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 738
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 741
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_25

    .line 742
    :cond_13
    const/16 v0, 0x4e

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 745
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 747
    :cond_25
    :goto_25
    return-void
.end method

.method private customizeHardwareAccelerateIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 726
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x6f

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    goto :goto_1b

    .line 728
    :cond_e
    const/16 v0, 0x55

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 734
    :goto_1b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-boolean v1, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivitiesHW(Ljava/util/ArrayList;Z)V

    .line 735
    return-void

    .line 732
    :cond_23
    return-void
.end method

.method public static customizeNativeLibrariesIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 680
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 682
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_62

    aget-object v4, v1, v3

    .line 683
    .local v4, "tmp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "libName":Ljava/lang/String;
    if-nez v5, :cond_20

    .line 684
    .end local v4    # "tmp":Ljava/io/File;
    .end local v5    # "libName":Ljava/lang/String;
    goto :goto_5f

    .line 687
    .restart local v4    # "tmp":Ljava/io/File;
    .restart local v5    # "libName":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "libmg20pbase.so"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 688
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xa4ac

    cmp-long v6, v6, v8

    if-nez v6, :cond_3d

    .line 689
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 693
    :cond_3d
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1b

    if-lt v6, v7, :cond_5f

    const-string/jumbo v6, "libdexinterpret.so"

    .line 694
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x35d8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5f

    .line 695
    const-string v6, "/system/etc/libdexinterpret.so"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/OemCompatibilityHelper;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v4    # "tmp":Ljava/io/File;
    .end local v5    # "libName":Ljava/lang/String;
    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 699
    :cond_62
    return-void
.end method

.method private customizePrivateFlagsIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 627
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x14b

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 628
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 631
    :cond_13
    const/16 v0, 0x6b

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 632
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 634
    :cond_26
    return-void
.end method

.method private customizeTargetSdkIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 756
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 757
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x16

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 759
    :cond_10
    return-void
.end method

.method private customizeVMSafeModeIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 750
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0xd3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 751
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 753
    :cond_12
    return-void
.end method

.method private int2string(I)Ljava/lang/String;
    .registers 5
    .param p1, "in"    # I

    .line 468
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 469
    .local v0, "out":[C
    div-int/lit8 v1, p1, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 470
    rem-int/lit8 v1, p1, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 471
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isInWarningList(Ljava/lang/String;)Z
    .registers 10
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 524
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 525
    :cond_d
    if-nez p1, :cond_10

    return v2

    .line 527
    :cond_10
    const-string v1, "disable.install.warning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v3, 0x1

    if-eqz v1, :cond_39

    .line 528
    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    const-string v5, "disable.install.warning"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    const-string v5, "disable.install.warning"

    .line 529
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_37

    goto :goto_38

    .line 528
    :cond_37
    move v0, v2

    :goto_38
    return v0

    .line 532
    :cond_39
    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    const-string v5, "disable.install.warning"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    const-string v5, "disable.install.warning"

    .line 533
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_56

    .line 534
    return v2

    .line 537
    :cond_56
    const-string v1, "_Ver."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 538
    .local v1, "index":I
    if-lez v1, :cond_91

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-ge v3, v1, :cond_67

    goto :goto_91

    .line 540
    :cond_67
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    return v2

    .line 543
    :cond_74
    add-int/lit8 v4, v1, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 544
    .local v4, "code":J
    iget-object v6, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_8f

    goto :goto_90

    :cond_8f
    move v0, v2

    :goto_90
    return v0

    .line 538
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "code":J
    :cond_91
    :goto_91
    return v2
.end method

.method private parseContentFromXML()V
    .registers 14

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "issystem":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 316
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/oneplus_cpt_list.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    return-void

    .line 318
    :cond_1d
    const/4 v0, 0x1

    .line 321
    :cond_1e
    invoke-direct {p0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "content":Ljava/lang/String;
    if-nez v2, :cond_25

    return-void

    .line 323
    :cond_25
    sget-object v3, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "xmlReader":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 326
    .local v5, "strReader":Ljava/io/StringReader;
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_144

    .line 328
    :try_start_2f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 329
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 330
    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 331
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 332
    .local v7, "eventType":I
    :goto_40
    const/4 v8, 0x1

    if-eq v7, v8, :cond_92

    .line 333
    if-eqz v7, :cond_8b

    const/4 v9, 0x2

    if-eq v7, v9, :cond_49

    goto :goto_8c

    .line 337
    :cond_49
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 338
    .local v10, "typeChar":[C
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v7, v11

    .line 339
    array-length v11, v10

    if-eq v11, v9, :cond_5a

    .end local v10    # "typeChar":[C
    goto :goto_8c

    .line 340
    .restart local v10    # "typeChar":[C
    :cond_5a
    invoke-direct {p0, v10}, Lcom/android/server/pm/OemCompatibilityHelper;->char2int([C)I

    move-result v9

    .line 341
    .local v9, "type":I
    if-gez v9, :cond_61

    .end local v9    # "type":I
    .end local v10    # "typeChar":[C
    goto :goto_8c

    .line 342
    .restart local v9    # "type":I
    .restart local v10    # "typeChar":[C
    :cond_61
    iget-object v11, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 343
    .local v11, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_7e

    .line 344
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    .line 345
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v12, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_85

    .line 348
    :cond_7e
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_85
    sget v12, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    add-int/2addr v12, v8

    sput v12, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    .line 351
    goto :goto_8c

    .line 335
    .end local v9    # "type":I
    .end local v10    # "typeChar":[C
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8b
    nop

    .line 355
    :goto_8c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_90} :catch_d1
    .catchall {:try_start_2f .. :try_end_90} :catchall_cf

    move v7, v8

    goto :goto_40

    .line 362
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    :cond_92
    if-eqz v4, :cond_9a

    .line 363
    :try_start_94
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_9a

    .line 368
    :catch_98
    move-exception v6

    goto :goto_9f

    .line 365
    :cond_9a
    :goto_9a
    nop

    .line 366
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9e} :catch_98
    .catchall {:try_start_94 .. :try_end_9e} :catchall_144

    goto :goto_bb

    .line 368
    :goto_9f
    nop

    .line 369
    .local v6, "e":Ljava/io/IOException;
    :try_start_a0
    const-string v7, "OemCompatibilityHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got execption close permReader. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_bc

    .line 370
    :goto_bb
    nop

    .line 372
    .end local v4    # "xmlReader":Ljava/io/FileReader;
    .end local v5    # "strReader":Ljava/io/StringReader;
    :goto_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_a0 .. :try_end_bd} :catchall_144

    .line 374
    if-eqz v0, :cond_ce

    .line 375
    sget-object v3, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 376
    :try_start_c2
    const-string v4, "/data/system/oneplus_cpt_list.xml"

    iget-object v5, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/OemCompatibilityHelper;->writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 377
    monitor-exit v3

    goto :goto_ce

    :catchall_cb
    move-exception v4

    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_cb

    throw v4

    .line 379
    :cond_ce
    :goto_ce
    return-void

    .line 361
    .restart local v4    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "strReader":Ljava/io/StringReader;
    :catchall_cf
    move-exception v6

    goto :goto_118

    .line 357
    :catch_d1
    move-exception v6

    .line 358
    .local v6, "e":Ljava/lang/Exception;
    :try_start_d2
    const-string v7, "OemCompatibilityHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got execption parsing permissions. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_d2 .. :try_end_ec} :catchall_cf

    .line 362
    if-eqz v4, :cond_f4

    .line 363
    :try_start_ee
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_f4

    .line 368
    :catch_f2
    move-exception v7

    goto :goto_fa

    .line 365
    :cond_f4
    :goto_f4
    if-eqz v5, :cond_116

    .line 366
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f9} :catch_f2
    .catchall {:try_start_ee .. :try_end_f9} :catchall_144

    goto :goto_116

    .line 368
    :goto_fa
    nop

    .line 369
    .local v7, "e":Ljava/io/IOException;
    :try_start_fb
    const-string v8, "OemCompatibilityHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got execption close permReader. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/io/IOException;
    nop

    .line 370
    :cond_116
    :goto_116
    monitor-exit v3
    :try_end_117
    .catchall {:try_start_fb .. :try_end_117} :catchall_144

    .line 359
    return-void

    .line 361
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_118
    nop

    .line 362
    if-eqz v4, :cond_121

    .line 363
    :try_start_11b
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    goto :goto_121

    .line 368
    :catch_11f
    move-exception v7

    goto :goto_127

    .line 365
    :cond_121
    :goto_121
    if-eqz v5, :cond_143

    .line 366
    invoke-virtual {v5}, Ljava/io/StringReader;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_126} :catch_11f
    .catchall {:try_start_11b .. :try_end_126} :catchall_144

    goto :goto_143

    .line 368
    :goto_127
    nop

    .line 369
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_128
    const-string v8, "OemCompatibilityHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got execption close permReader. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/io/IOException;
    nop

    .line 370
    :cond_143
    :goto_143
    throw v6

    .line 372
    .end local v4    # "xmlReader":Ljava/io/FileReader;
    .end local v5    # "strReader":Ljava/io/StringReader;
    :catchall_144
    move-exception v4

    monitor-exit v3
    :try_end_146
    .catchall {:try_start_128 .. :try_end_146} :catchall_144

    throw v4
.end method

.method private parseWarningAppFromXML()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/install_warning_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->readWarningListFromString(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/install_warning_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->readWarningListFromString(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/install_warning_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    .line 253
    invoke-direct {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->writeWarningListToXML()V

    .line 255
    :cond_31
    return-void
.end method

.method private readFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/io/File;

    .line 434
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 435
    :cond_4
    move-object v1, v0

    .line 437
    .local v1, "is":Ljava/io/InputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 438
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 439
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const-string v4, ""

    .line 441
    .local v4, "line":Ljava/lang/String;
    :goto_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_27

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c

    .line 444
    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2b} :catch_48
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_38
    .catchall {:try_start_5 .. :try_end_2b} :catchall_36

    .line 451
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_34

    .line 452
    :catch_2f
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_35

    .line 454
    :goto_34
    nop

    .line 444
    :goto_35
    return-object v5

    .line 450
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "line":Ljava/lang/String;
    :catchall_36
    move-exception v0

    goto :goto_53

    .line 447
    :catch_38
    move-exception v2

    .line 448
    .local v2, "e":Ljava/io/IOException;
    :try_start_39
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 451
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_47

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_47

    .line 452
    :catch_42
    move-exception v2

    .line 453
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 455
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_52

    .line 454
    :cond_47
    :goto_47
    goto :goto_52

    .line 445
    :catch_48
    move-exception v2

    .line 446
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_49
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_36

    .line 451
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_47

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_42

    goto :goto_47

    .line 456
    :goto_52
    return-object v0

    .line 450
    :goto_53
    nop

    .line 451
    if-eqz v1, :cond_5f

    :try_start_56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_5f

    .line 452
    :catch_5a
    move-exception v2

    .line 453
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 454
    :cond_5f
    :goto_5f
    throw v0
.end method

.method private readWarningListFromString(Ljava/lang/String;)V
    .registers 14
    .param p1, "str"    # Ljava/lang/String;

    .line 258
    if-nez p1, :cond_3

    return-void

    .line 260
    :cond_3
    const/4 v0, 0x0

    .line 261
    .local v0, "xmlReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 264
    .local v2, "strReader":Ljava/io/StringReader;
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 265
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 266
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 267
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 268
    .local v4, "eventType":I
    :goto_17
    const/4 v5, 0x1

    if-eq v4, v5, :cond_5c

    .line 269
    if-eqz v4, :cond_55

    const/4 v5, 0x2

    if-eq v4, v5, :cond_20

    goto :goto_56

    .line 273
    :cond_20
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "tagName":Ljava/lang/String;
    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 275
    const-string/jumbo v6, "name"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "version"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3a} :catch_89
    .catchall {:try_start_6 .. :try_end_3a} :catchall_87

    .line 277
    .local v7, "version":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 278
    .local v8, "versionCode":J
    if-eqz v7, :cond_54

    .line 280
    :try_start_3e
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_42} :catch_89
    .catchall {:try_start_3e .. :try_end_42} :catchall_87

    move-wide v8, v10

    .line 282
    goto :goto_45

    .line 281
    :catch_44
    move-exception v10

    .line 283
    :goto_45
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_54

    .line 284
    :try_start_4b
    iget-object v10, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "versionCode":J
    :cond_54
    goto :goto_56

    .line 271
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_55
    nop

    .line 293
    :cond_56
    :goto_56
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_89
    .catchall {:try_start_4b .. :try_end_5a} :catchall_87

    move v4, v5

    goto :goto_17

    .line 300
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    :cond_5c
    if-eqz v0, :cond_64

    .line 301
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_64

    .line 306
    :catch_62
    move-exception v1

    goto :goto_69

    .line 303
    :cond_64
    :goto_64
    nop

    .line 304
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_68} :catch_62

    goto :goto_85

    .line 306
    :goto_69
    nop

    .line 307
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "OemCompatibilityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got execption close permReader. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_86

    .line 308
    :goto_85
    nop

    .line 310
    :goto_86
    return-void

    .line 299
    :catchall_87
    move-exception v1

    goto :goto_d0

    .line 295
    :catch_89
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v3, "OemCompatibilityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got execption parsing warning list. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8a .. :try_end_a4} :catchall_87

    .line 300
    if-eqz v0, :cond_ac

    .line 301
    :try_start_a6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_ac

    .line 306
    :catch_aa
    move-exception v3

    goto :goto_b2

    .line 303
    :cond_ac
    :goto_ac
    if-eqz v2, :cond_ce

    .line 304
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b1} :catch_aa

    goto :goto_ce

    .line 306
    :goto_b2
    nop

    .line 307
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got execption close permReader. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_cf

    .line 308
    :cond_ce
    :goto_ce
    nop

    .line 297
    :goto_cf
    return-void

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d0
    nop

    .line 300
    if-eqz v0, :cond_d9

    .line 301
    :try_start_d3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    goto :goto_d9

    .line 306
    :catch_d7
    move-exception v3

    goto :goto_df

    .line 303
    :cond_d9
    :goto_d9
    if-eqz v2, :cond_fb

    .line 304
    invoke-virtual {v2}, Ljava/io/StringReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_de} :catch_d7

    goto :goto_fb

    .line 306
    :goto_df
    nop

    .line 307
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got execption close permReader. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OemCompatibilityHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 308
    :cond_fb
    :goto_fb
    throw v1
.end method

.method private resolveCompatConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 19
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    move-object/from16 v1, p0

    .line 123
    move-object/from16 v2, p1

    if-nez v2, :cond_7

    .line 124
    return-void

    .line 128
    :cond_7
    const/4 v0, 0x0

    .line 129
    .local v0, "changed":Z
    const/4 v3, 0x0

    .line 130
    .local v3, "warningChanged":Z
    const/4 v4, 0x0

    .line 131
    .local v4, "count":I
    :try_start_a
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 133
    .local v5, "tmpConfigList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    move v7, v4

    move v4, v3

    move v3, v0

    const/4 v0, 0x0

    .line 133
    .local v0, "index":I
    .local v3, "changed":Z
    .local v4, "warningChanged":Z
    .local v7, "count":I
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_9e

    .line 134
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 135
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "compatibility_config_values"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 136
    const-string/jumbo v9, "value"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 138
    .local v9, "configListJsonArray":Lorg/json/JSONArray;
    move v10, v7

    move v7, v4

    move v4, v3

    const/4 v3, 0x0

    .line 138
    .local v3, "i":I
    .local v4, "changed":Z
    .local v7, "warningChanged":Z
    .local v10, "count":I
    :goto_37
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_97

    .line 139
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 140
    .local v11, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v12, "type"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_50

    .line 141
    .end local v11    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v12    # "type":Ljava/lang/String;
    goto :goto_94

    .line 142
    .restart local v11    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v12    # "type":Ljava/lang/String;
    :cond_50
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/server/pm/OemCompatibilityHelper;->char2int([C)I

    move-result v13

    .line 143
    .local v13, "ntype":I
    const-string/jumbo v14, "pkg"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, "pkg":Ljava/lang/String;
    const/16 v15, 0xe6

    if-ne v13, v15, :cond_71

    .line 146
    invoke-direct {v1, v14}, Lcom/android/server/pm/OemCompatibilityHelper;->warningListChanged(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_94

    invoke-direct {v1, v14}, Lcom/android/server/pm/OemCompatibilityHelper;->writeToWarningList(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_94

    .line 147
    const/4 v7, 0x1

    goto :goto_94

    .line 150
    :cond_71
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 151
    .local v15, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_86

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 153
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v5, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_89

    .line 156
    :cond_86
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_89
    if-nez v4, :cond_92

    invoke-virtual {v1, v13, v14}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 159
    const/4 v4, 0x1

    .line 161
    :cond_92
    add-int/lit8 v10, v10, 0x1

    .line 138
    .end local v11    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "ntype":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_94
    :goto_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 133
    .end local v3    # "i":I
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "configListJsonArray":Lorg/json/JSONArray;
    :cond_97
    move v3, v4

    move v4, v7

    move v7, v10

    .line 133
    .end local v10    # "count":I
    .local v3, "changed":Z
    .local v4, "warningChanged":Z
    .local v7, "count":I
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    .line 167
    .end local v0    # "index":I
    :cond_9e
    sget v0, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    if-eq v0, v7, :cond_a6

    const/4 v6, 0x1

    move/from16 v16, v6

    goto :goto_a8

    :cond_a6
    const/16 v16, 0x0

    :goto_a8
    or-int v3, v3, v16

    .line 168
    sget-boolean v0, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    if-eqz v0, :cond_cc

    const-string v0, "OemCompatibilityHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compatibility online config "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    if-eqz v3, :cond_bf

    const-string v8, "changed."

    goto :goto_c2

    :cond_bf
    const-string/jumbo v8, "not change"

    :goto_c2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_cc
    if-eqz v3, :cond_df

    .line 171
    const-string v0, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v1, v0, v5}, Lcom/android/server/pm/OemCompatibilityHelper;->writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 172
    sget-object v6, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d6} :catch_e5

    .line 173
    :try_start_d6
    iput-object v5, v1, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    .line 174
    sput v7, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    .line 175
    monitor-exit v6

    goto :goto_df

    :catchall_dc
    move-exception v0

    monitor-exit v6
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_dc

    :try_start_de
    throw v0

    .line 178
    :cond_df
    :goto_df
    if-eqz v4, :cond_e4

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/OemCompatibilityHelper;->writeWarningListToXML()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e4} :catch_e5

    .line 184
    .end local v3    # "changed":Z
    .end local v4    # "warningChanged":Z
    .end local v5    # "tmpConfigList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "count":I
    :cond_e4
    goto :goto_101

    .line 182
    :catch_e5
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OemCompatibilityHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveCompatConfigFromJSON, error message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_101
    return-void
.end method

.method private warningListChanged(Ljava/lang/String;)Z
    .registers 10
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 510
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 511
    :cond_d
    if-nez p1, :cond_10

    return v2

    .line 513
    :cond_10
    const-string v1, "_Ver."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, "index":I
    if-lez v1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-ge v3, v1, :cond_21

    goto :goto_4b

    .line 516
    :cond_21
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    return v0

    .line 519
    :cond_2e
    add-int/lit8 v4, v1, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 520
    .local v4, "code":J
    iget-object v6, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    return v0

    .line 514
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "code":J
    :cond_4b
    :goto_4b
    return v2
.end method

.method private writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 16
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 382
    .local p2, "configList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 383
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 384
    .local v1, "writer":Ljava/io/StringWriter;
    const/4 v2, 0x0

    move-object v3, v2

    .line 386
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 387
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "time":Ljava/lang/String;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 389
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 390
    const-string v6, "\n"

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    const-string v6, "compatconfiglist"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const-string/jumbo v6, "update-time"

    invoke-interface {v0, v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const-string v6, "\n"

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    const/4 v6, 0x0

    move v7, v6

    .line 394
    .local v7, "i":I
    :goto_40
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_7a

    .line 395
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 396
    .local v8, "ntype":I
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 397
    .local v9, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v8}, Lcom/android/server/pm/OemCompatibilityHelper;->int2string(I)Ljava/lang/String;

    move-result-object v10

    .line 398
    .local v10, "type":Ljava/lang/String;
    move v11, v6

    .line 398
    .local v11, "j":I
    :goto_55
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_77

    .line 399
    const-string v12, "  "

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const-string v12, "\n"

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 394
    .end local v8    # "ntype":I
    .end local v9    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "j":I
    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 406
    .end local v7    # "i":I
    :cond_7a
    const-string v6, "compatconfiglist"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const-string v2, "\n"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 410
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_97

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 415
    :cond_97
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 416
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_aa} :catch_d2
    .catchall {:try_start_b .. :try_end_aa} :catchall_d0

    .line 422
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    nop

    .line 423
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_cf

    .line 425
    :catch_af
    move-exception v2

    .line 426
    .local v2, "ec":Ljava/io/IOException;
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b7
    const-string/jumbo v6, "writeCompatConfigListXml # IOException # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    .end local v2    # "ec":Ljava/io/IOException;
    goto :goto_100

    .line 428
    :cond_cf
    :goto_cf
    goto :goto_100

    .line 421
    :catchall_d0
    move-exception v2

    goto :goto_101

    .line 417
    :catch_d2
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d3
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeCompatConfigListXml # Exception # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_d0

    .line 422
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_cf

    .line 423
    :try_start_f3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_cf

    .line 425
    :catch_f7
    move-exception v2

    .line 426
    .local v2, "ec":Ljava/io/IOException;
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b7

    .line 431
    .end local v2    # "ec":Ljava/io/IOException;
    :goto_100
    return-void

    .line 421
    :goto_101
    nop

    .line 422
    if-eqz v3, :cond_128

    .line 423
    :try_start_104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    goto :goto_128

    .line 425
    :catch_108
    move-exception v4

    .line 426
    .local v4, "ec":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeCompatConfigListXml # IOException # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OemCompatibilityHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 427
    .end local v4    # "ec":Ljava/io/IOException;
    nop

    .line 428
    :cond_128
    :goto_128
    throw v2
.end method

.method private writeToWarningList(Ljava/lang/String;)Z
    .registers 9
    .param p1, "verifyStr"    # Ljava/lang/String;

    .line 548
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 550
    :cond_4
    const-string v1, "_Ver."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 551
    .local v1, "index":I
    if-lez v1, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    if-ge v2, v1, :cond_15

    goto :goto_35

    .line 553
    :cond_15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 555
    .local v3, "code":J
    iget-object v5, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    monitor-enter v5

    .line 556
    :try_start_26
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    monitor-exit v5

    .line 559
    const/4 v0, 0x1

    return v0

    .line 557
    :catchall_32
    move-exception v0

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_32

    throw v0

    .line 551
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "code":J
    :cond_35
    :goto_35
    return v0
.end method

.method private writeWarningListToXML()V
    .registers 15

    .line 188
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 189
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 190
    .local v1, "writer":Ljava/io/StringWriter;
    const/4 v2, 0x0

    move-object v3, v2

    .line 192
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "time":Ljava/lang/String;
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 195
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 196
    const-string v6, "\n"

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string/jumbo v6, "warninglist"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string/jumbo v6, "update-time"

    invoke-interface {v0, v2, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v6, "\n"

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget-object v6, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    monitor-enter v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_42} :catch_ea
    .catchall {:try_start_b .. :try_end_42} :catchall_e8

    .line 201
    :try_start_42
    iget-object v7, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 202
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 203
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 204
    .local v10, "code":J
    const-string v12, "  "

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const-string v12, "config"

    invoke-interface {v0, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    const-string/jumbo v12, "name"

    invoke-interface {v0, v2, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string/jumbo v12, "version"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v2, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const-string v12, "config"

    invoke-interface {v0, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v12, "\n"

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "code":J
    goto :goto_4c

    .line 211
    :cond_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_42 .. :try_end_8e} :catchall_e5

    .line 212
    :try_start_8e
    const-string/jumbo v6, "warninglist"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v2, "\n"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 216
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/system/install_warning_list.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_ac

    .line 218
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 221
    :cond_ac
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/data/system/install_warning_list.xml"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 222
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_bf} :catch_ea
    .catchall {:try_start_8e .. :try_end_bf} :catchall_e8

    .line 228
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    nop

    .line 229
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_e4

    .line 231
    :catch_c4
    move-exception v2

    .line 232
    .local v2, "ec":Ljava/io/IOException;
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_cc
    const-string/jumbo v6, "writeCompatConfigListXml # IOException # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    .end local v2    # "ec":Ljava/io/IOException;
    goto :goto_118

    .line 234
    :cond_e4
    :goto_e4
    goto :goto_118

    .line 211
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "time":Ljava/lang/String;
    :catchall_e5
    move-exception v2

    :try_start_e6
    monitor-exit v6
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v2
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_e8} :catch_ea
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e8

    .line 227
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time":Ljava/lang/String;
    :catchall_e8
    move-exception v2

    goto :goto_119

    .line 223
    :catch_ea
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    :try_start_eb
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeCompatConfigListXml # Exception # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_109
    .catchall {:try_start_eb .. :try_end_109} :catchall_e8

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_e4

    .line 229
    :try_start_10b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_e4

    .line 231
    :catch_10f
    move-exception v2

    .line 232
    .local v2, "ec":Ljava/io/IOException;
    const-string v4, "OemCompatibilityHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_cc

    .line 237
    .end local v2    # "ec":Ljava/io/IOException;
    :goto_118
    return-void

    .line 227
    :goto_119
    nop

    .line 228
    if-eqz v3, :cond_140

    .line 229
    :try_start_11c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_140

    .line 231
    :catch_120
    move-exception v4

    .line 232
    .local v4, "ec":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeCompatConfigListXml # IOException # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OemCompatibilityHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    .end local v4    # "ec":Ljava/io/IOException;
    nop

    .line 234
    :cond_140
    :goto_140
    throw v2
.end method


# virtual methods
.method public abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageAbiOverride"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 705
    if-nez p2, :cond_3

    .line 706
    return-object p1

    .line 709
    :cond_3
    const/16 v0, 0x1bb

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_16

    .line 712
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 713
    :cond_16
    const/16 v0, 0x1bc

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_28

    .line 716
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 717
    :cond_28
    const/16 v0, 0x1bd

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3b

    .line 720
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 722
    :cond_3b
    return-object p1
.end method

.method public convertAbi2Int(Ljava/lang/String;)I
    .registers 3
    .param p1, "abiString"    # Ljava/lang/String;

    .line 478
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public convertAbi2String(I)Ljava/lang/String;
    .registers 4
    .param p1, "abiInt"    # I

    .line 485
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 602
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeHardwareAccelerateIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 608
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeHardwareAccelerateForActivityIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 611
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeVMSafeModeIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeTargetSdkIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizePrivateFlagsIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 619
    goto :goto_1b

    .line 618
    :catch_1a
    move-exception v0

    .line 620
    :goto_1b
    return-void
.end method

.method public dumpToString()Ljava/lang/String;
    .registers 11

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string v1, "CompatibilityInfo:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    sget-object v1, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 567
    const/4 v2, 0x0

    .line 567
    .local v2, "i":I
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 568
    iget-object v3, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 569
    .local v3, "key":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 571
    .local v4, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v3    # "key":I
    .end local v4    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 573
    .end local v2    # "i":I
    :cond_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_d4

    .line 575
    iget-object v2, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    monitor-enter v2

    .line 576
    :try_start_59
    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_cb

    .line 577
    const-string/jumbo v1, "type = 230, value = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const/4 v1, 0x1

    .line 579
    .local v1, "first":Z
    iget-object v3, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mWarningList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_72
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 580
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 581
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 582
    .local v6, "code":J
    if-eqz v1, :cond_a9

    .line 583
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_V."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const/4 v1, 0x0

    goto :goto_c5

    .line 586
    :cond_a9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_V."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "code":J
    :goto_c5
    goto :goto_72

    .line 589
    :cond_c6
    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .end local v1    # "first":Z
    :cond_cb
    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_59 .. :try_end_cc} :catchall_d1

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 591
    :catchall_d1
    move-exception v1

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v1

    .line 573
    :catchall_d4
    move-exception v2

    :try_start_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v2
.end method

.method public initCompatOnlineConfig()V
    .registers 6

    .line 489
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/pm/OemCompatibilityHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;

    invoke-direct {v2, p0}, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;-><init>(Lcom/android/server/pm/OemCompatibilityHelper;)V

    const-string v3, "CompatConfigList"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 491
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 492
    return-void
.end method

.method public isInConfigList(ILjava/lang/String;)Z
    .registers 5
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 495
    const/16 v0, 0xe6

    if-ne p1, v0, :cond_9

    .line 496
    invoke-direct {p0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInWarningList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 498
    :cond_9
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_25

    .line 500
    iget-object v1, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 501
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 504
    :cond_25
    monitor-exit v0

    .line 506
    const/4 v0, 0x0

    return v0

    .line 504
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v1
.end method
