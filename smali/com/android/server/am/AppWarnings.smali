.class Lcom/android/server/am/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppWarnings$ConfigHandler;,
        Lcom/android/server/am/AppWarnings$UiHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "packages-warnings.xml"

.field public static final FLAG_HIDE_COMPILE_SDK:I = 0x2

.field public static final FLAG_HIDE_DEPRECATED_SDK:I = 0x4

.field public static final FLAG_HIDE_DISPLAY_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppWarnings"


# instance fields
.field private mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

.field private final mPackageFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

.field private mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

.field private mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .registers 9
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "uiContext"    # Landroid/content/Context;
    .param p3, "amsHandler"    # Landroid/os/Handler;
    .param p4, "uiHandler"    # Landroid/os/Handler;
    .param p5, "systemDir"    # Ljava/io/File;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    .line 92
    iput-object p1, p0, Lcom/android/server/am/AppWarnings;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 93
    iput-object p2, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    .line 95
    new-instance v0, Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppWarnings$UiHandler;-><init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    .line 96
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages-warnings.xml"

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "warnings-config"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 98
    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->readConfigFromFileAmsThread()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppWarnings;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;

    .line 50
    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppWarnings;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppWarnings;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/AppWarnings;

    .line 50
    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 365
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 306
    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 307
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 308
    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 312
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    .line 313
    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 314
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->dismiss()V

    .line 315
    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    .line 319
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_45

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    .line 320
    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 321
    :cond_45
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 322
    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    .line 324
    :cond_4c
    return-void
.end method

.method private hideUnsupportedDisplaySizeDialogUiThread()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_c

    .line 226
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 229
    :cond_c
    return-void
.end method

.method private readConfigFromFileAmsThread()V
    .registers 13

    .line 513
    const/4 v0, 0x0

    move-object v1, v0

    .line 516
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 518
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 519
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 521
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 522
    .local v3, "eventType":I
    :goto_1a
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    if-eq v3, v4, :cond_26

    .line 524
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_9b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_8b
    .catchall {:try_start_2 .. :try_end_24} :catchall_89

    move v3, v4

    goto :goto_1a

    .line 526
    :cond_26
    if-ne v3, v4, :cond_30

    .line 562
    if-eqz v1, :cond_2f

    .line 564
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 566
    goto :goto_2f

    .line 565
    :catch_2e
    move-exception v0

    .line 527
    :cond_2f
    :goto_2f
    return-void

    .line 530
    :cond_30
    :try_start_30
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "packages"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 532
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    .line 534
    :cond_42
    if-ne v3, v5, :cond_7a

    .line 535
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 536
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v5, :cond_7a

    .line 537
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 538
    const-string/jumbo v7, "name"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 539
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_7a

    .line 540
    const-string v8, "flags"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_67} :catch_9b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_67} :catch_8b
    .catchall {:try_start_30 .. :try_end_67} :catchall_89

    .line 542
    .local v8, "flags":Ljava/lang/String;
    const/4 v9, 0x0

    .line 543
    .local v9, "flagsInt":I
    if-eqz v8, :cond_71

    .line 545
    :try_start_6a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_6e} :catch_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_6e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_8b
    .catchall {:try_start_6a .. :try_end_6e} :catchall_89

    move v9, v10

    .line 547
    goto :goto_71

    .line 546
    :catch_70
    move-exception v10

    .line 549
    :cond_71
    :goto_71
    :try_start_71
    iget-object v10, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "flags":Ljava/lang/String;
    .end local v9    # "flagsInt":I
    :cond_7a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_7e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_8b
    .catchall {:try_start_71 .. :try_end_7e} :catchall_89

    move v3, v7

    .line 555
    if-ne v3, v4, :cond_42

    .line 562
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_81
    if-eqz v1, :cond_a9

    .line 564
    :try_start_83
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 566
    :goto_86
    goto :goto_a9

    .line 565
    :catch_87
    move-exception v0

    goto :goto_86

    .line 562
    :catchall_89
    move-exception v0

    goto :goto_aa

    .line 559
    :catch_8b
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_95

    :try_start_8e
    const-string v2, "AppWarnings"

    const-string v3, "Error reading package metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_89

    .line 562
    .end local v0    # "e":Ljava/io/IOException;
    :cond_95
    if-eqz v1, :cond_a9

    .line 564
    :try_start_97
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_87

    goto :goto_86

    .line 557
    :catch_9b
    move-exception v0

    .line 558
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9c
    const-string v2, "AppWarnings"

    const-string v3, "Error reading package metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_89

    .line 562
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_a9

    .line 564
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_87

    goto :goto_86

    .line 569
    :cond_a9
    :goto_a9
    return-void

    .line 562
    :goto_aa
    if-eqz v1, :cond_b1

    .line 564
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 566
    goto :goto_b1

    .line 565
    :catch_b0
    move-exception v2

    .line 566
    :cond_b1
    :goto_b1
    throw v0
.end method

.method private removePackageAndHideDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 213
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {v1}, Lcom/android/server/am/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .line 282
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_c

    .line 283
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    .line 286
    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 288
    new-instance v0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    .line 290
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->show()V

    .line 292
    :cond_29
    return-void
.end method

.method private showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .line 261
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_c

    .line 262
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->dismiss()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    .line 265
    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 267
    new-instance v0, Lcom/android/server/am/UnsupportedCompileSdkDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    .line 269
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->show()V

    .line 271
    :cond_29
    return-void
.end method

.method private showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .line 240
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_c

    .line 241
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 244
    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 246
    new-instance v0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    .line 248
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->show()V

    .line 250
    :cond_29
    return-void
.end method

.method private writeConfigToFileAmsThread()V
    .registers 11

    .line 468
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 469
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 470
    .local v1, "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_98

    .line 472
    const/4 v0, 0x0

    move-object v2, v0

    .line 474
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 476
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 477
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 478
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 479
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 480
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 483
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 485
    .local v7, "mode":I
    if-nez v7, :cond_5d

    .line 486
    goto :goto_3e

    .line 488
    :cond_5d
    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string/jumbo v8, "name"

    invoke-interface {v3, v0, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v8, "flags"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "mode":I
    goto :goto_3e

    .line 494
    :cond_79
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 497
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_87} :catch_88

    .line 503
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_97

    .line 498
    :catch_88
    move-exception v0

    .line 499
    .local v0, "e1":Ljava/io/IOException;
    const-string v3, "AppWarnings"

    const-string v4, "Error writing package metadata"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    if-eqz v2, :cond_97

    .line 501
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 504
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_97
    :goto_97
    return-void

    .line 470
    .end local v1    # "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1
.end method


# virtual methods
.method alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 76
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method hasPackageFlag(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onDensityChanged()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0}, Lcom/android/server/am/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    .line 204
    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onResumeActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    .line 179
    return-void
.end method

.method public onStartActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    .line 170
    return-void
.end method

.method setPackageFlag(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "enabled"    # Z

    .line 345
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 346
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 347
    .local v1, "curFlags":I
    if-eqz p3, :cond_c

    or-int v2, v1, p2

    goto :goto_e

    :cond_c
    not-int v2, p2

    and-int/2addr v2, v1

    .line 348
    .local v2, "newFlags":I
    :goto_e
    if-eq v1, v2, :cond_26

    .line 349
    if-eqz v2, :cond_1c

    .line 350
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 352
    :cond_1c
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_21
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {v3}, Lcom/android/server/am/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 356
    .end local v1    # "curFlags":I
    .end local v2    # "newFlags":I
    :cond_26
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 156
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v0, v1, :cond_d

    .line 157
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/am/ActivityRecord;)V

    .line 159
    :cond_d
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 120
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v0, :cond_54

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_54

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 130
    return-void

    .line 138
    :cond_18
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 139
    .local v0, "compileSdk":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .local v1, "platformSdk":I
    const-string v2, "REL"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 141
    .local v2, "isCompileSdkPreview":Z
    const-string v3, "REL"

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 142
    .local v3, "isPlatformSdkPreview":Z
    if-eqz v2, :cond_38

    if-lt v0, v1, :cond_4e

    :cond_38
    if-eqz v3, :cond_3c

    if-lt v1, v0, :cond_4e

    :cond_3c
    if-eqz v2, :cond_53

    if-eqz v3, :cond_53

    if-ne v1, v0, :cond_53

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 146
    :cond_4e
    iget-object v4, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v4, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/am/ActivityRecord;)V

    .line 148
    :cond_53
    return-void

    .line 122
    .end local v0    # "compileSdk":I
    .end local v1    # "platformSdk":I
    .end local v2    # "isCompileSdkPreview":Z
    .end local v3    # "isPlatformSdkPreview":Z
    :cond_54
    :goto_54
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 107
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 108
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_19

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v2, :cond_19

    .line 110
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/am/ActivityRecord;)V

    .line 112
    :cond_19
    return-void
.end method
