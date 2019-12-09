.class public Lcom/android/server/FontService;
.super Landroid/content/IFontService$Stub;
.source "FontService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FontService$PackageReceiver;,
        Lcom/android/server/FontService$FontHandler;,
        Lcom/android/server/FontService$Lifecycle;
    }
.end annotation


# static fields
.field private static final FONTS_XML:Ljava/lang/String; = "fonts.xml"

.field private static final FONT_IDENTIFIER:Ljava/lang/String; = "custom_rom_font_provider"

.field private static final SUBSTRATUM_INTENT:Ljava/lang/String; = "projekt.substratum.THEME"

.field private static final SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_FONT_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "FontService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontHandler:Lcom/android/server/FontService$FontHandler;

.field private final mFontInfo:Landroid/content/FontInfo;

.field private final mFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/FontInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFontWorker:Landroid/os/HandlerThread;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 294
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "theme"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "fonts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "font_previews"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 211
    invoke-direct {p0}, Landroid/content/IFontService$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/content/FontInfo;

    invoke-direct {v0}, Landroid/content/FontInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    .line 212
    iput-object p1, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    .line 213
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FontServiceWorker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/FontService;->mFontWorker:Landroid/os/HandlerThread;

    .line 214
    iget-object p1, p0, Lcom/android/server/FontService;->mFontWorker:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 215
    new-instance p1, Lcom/android/server/FontService$FontHandler;

    iget-object v0, p0, Lcom/android/server/FontService;->mFontWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/FontService$FontHandler;-><init>(Lcom/android/server/FontService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    .line 216
    iget-object p1, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-direct {p0}, Lcom/android/server/FontService;->getCurrentFontInfoFromProvider()Landroid/content/FontInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/FontInfo;->updateFrom(Landroid/content/FontInfo;)V

    .line 217
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo p1, "package"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/FontService$PackageReceiver;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/android/server/FontService$PackageReceiver;-><init>(Lcom/android/server/FontService;Lcom/android/server/FontService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;)Z
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/android/server/FontService;->makeDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/FontService;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->removeFontPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/FontService;)Landroid/content/FontInfo;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/FontService;)Lcom/android/server/FontService$FontHandler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    return-object p0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 76
    invoke-static {}, Lcom/android/server/FontService;->restoreconThemeDir()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/FontService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/server/FontService;->sendInitializeFontMapMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/FontService;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/server/FontService;->initializeFontMap()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/FontService;Landroid/content/FontInfo;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->applyFontsPriv(Landroid/content/FontInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/FontService;Ljava/lang/String;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->isPackageFontProvider(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/FontService;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/FontService;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->processFontPackage(Ljava/lang/String;)V

    return-void
.end method

.method private applyFontsPriv(Landroid/content/FontInfo;)V
    .locals 4

    .line 507
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFontsPriv() packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/FontInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    :try_start_0
    invoke-static {}, Landroid/content/FontInfo;->getDefaultFontInfo()Landroid/content/FontInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/FontInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/server/FontService;->clearFonts()V

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->copyFonts(Landroid/content/FontInfo;)V

    .line 515
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.android.server.ACTION_FONT_CHANGED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const/high16 v2, 0x50000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 518
    iget-object v2, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private clearFonts()V
    .locals 2

    .line 596
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 597
    invoke-direct {p0}, Lcom/android/server/FontService;->refreshFonts()V

    .line 598
    iget-object v0, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-static {}, Landroid/content/FontInfo;->getDefaultFontInfo()Landroid/content/FontInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/FontInfo;->updateFrom(Landroid/content/FontInfo;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-direct {p0, v0}, Lcom/android/server/FontService;->putCurrentFontInfoInProvider(Landroid/content/FontInfo;)V

    .line 600
    return-void
.end method

.method private static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 647
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 648
    nop

    .line 650
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 651
    array-length v1, p0

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    .line 652
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 655
    invoke-static {v3, v4}, Lcom/android/server/FontService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_1

    .line 658
    :cond_0
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 651
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    move v0, v2

    goto :goto_2

    .line 663
    :cond_2
    nop

    .line 665
    :goto_2
    return v0
.end method

.method private copyFonts(Landroid/content/FontInfo;)V
    .locals 6

    .line 527
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    const-string v2, "FontCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 532
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 533
    if-nez v1, :cond_1

    .line 534
    const-string v1, "FontService"

    const-string v2, "Could not create cache directory..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    iget-object v1, p1, Landroid/content/FontInfo;->fontName:Ljava/lang/String;

    .line 540
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    :cond_2
    iget-object v2, p1, Landroid/content/FontInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/FontService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 547
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 549
    :try_start_1
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 552
    :cond_3
    goto :goto_1

    .line 550
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 548
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :goto_0
    if-eqz v1, :cond_4

    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    .line 551
    const-string v2, "FontService"

    const-string v4, "There is an exception when trying to copy themed fonts"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/FontService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 558
    if-nez v1, :cond_5

    .line 559
    const-string v1, "FontService"

    const-string v2, "Could not delete ZIP file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_5
    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 564
    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/FontService;->makeDir(Ljava/io/File;)Z

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/FontService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 568
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 569
    invoke-direct {p0}, Lcom/android/server/FontService;->refreshFonts()V

    .line 570
    iget-object v0, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-virtual {v0, p1}, Landroid/content/FontInfo;->updateFrom(Landroid/content/FontInfo;)V

    .line 571
    iget-object p1, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-direct {p0, p1}, Lcom/android/server/FontService;->putCurrentFontInfoInProvider(Landroid/content/FontInfo;)V

    .line 572
    return-void
.end method

.method private enforceFontService()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FONT_MANAGER"

    const-string v2, "FontService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private getAppContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    .line 496
    nop

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " context"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurrentFontInfoFromProvider()Landroid/content/FontInfo;
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_info"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Landroid/content/FontInfo;

    invoke-direct {v1}, Landroid/content/FontInfo;-><init>()V

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-static {}, Landroid/content/FontInfo;->getDefaultFontInfo()Landroid/content/FontInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/FontInfo;->updateFrom(Landroid/content/FontInfo;)V

    goto :goto_0

    .line 487
    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 488
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/content/FontInfo;->packageName:Ljava/lang/String;

    .line 489
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/content/FontInfo;->fontName:Ljava/lang/String;

    .line 490
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Landroid/content/FontInfo;->previewPath:Ljava/lang/String;

    .line 492
    :goto_0
    return-object v1
.end method

.method private getFontsFromPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    :try_start_0
    const-string v3, "fonts"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    const-string v1, "FontService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "did not have a fonts folder!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 440
    const-string/jumbo v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    goto :goto_1

    .line 444
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 446
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has the following fonts - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v2
.end method

.method private getInstalledFontPackagesFromProvider()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_packages"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070031

    .line 467
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 469
    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    :goto_0
    return-object v1
.end method

.method private static getPreviewFontNameFromXml(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 374
    nop

    .line 376
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/text/FontConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .line 381
    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/text/FontConfig;->getFamilies()Ljava/util/List;

    move-result-object p0

    .line 383
    if-eqz p0, :cond_0

    .line 384
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/FontConfig$Family;

    .line 385
    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object p0

    .line 387
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 388
    aget-object p0, p0, p1

    .line 389
    if-eqz p0, :cond_0

    .line 390
    const-string p1, "FontService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font found from parsing fonts.xml! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 397
    :cond_0
    return-object v0

    .line 377
    :catch_0
    move-exception p0

    .line 378
    const-string p1, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown parsing fonts.xml! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v0
.end method

.method private initializeFontMap()V
    .locals 3

    .line 261
    invoke-direct {p0}, Lcom/android/server/FontService;->getInstalledFontPackagesFromProvider()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-direct {p0, v1}, Lcom/android/server/FontService;->processFontPackage(Ljava/lang/String;)V

    .line 264
    goto :goto_0

    .line 265
    :cond_0
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Font map initialized- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private isPackageFontProvider(Ljava/lang/String;)Z
    .locals 5

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "custom_rom_font_provider"

    const-string v3, "bool"

    .line 405
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 406
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 407
    return v1

    .line 412
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    iget-object v2, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 414
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "projekt.substratum.THEME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 419
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    return v1

    .line 422
    :cond_1
    goto :goto_0

    .line 424
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static makeDir(Ljava/io/File;)Z
    .locals 3

    .line 634
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    .line 637
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 638
    const/16 v0, 0x1ff

    .line 640
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 641
    const/4 v2, -0x1

    invoke-static {p0, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 643
    :cond_2
    return v1
.end method

.method private processFontPackage(Ljava/lang/String;)V
    .locals 10

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/FontService;->getFontsFromPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 273
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {v3}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 277
    :cond_0
    invoke-static {v3}, Lcom/android/server/FontService;->makeDir(Ljava/io/File;)Z

    .line 279
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 283
    invoke-static {v4}, Lcom/android/server/FontService;->sanitizeZipName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-static {v6}, Lcom/android/server/FontService;->makeDir(Ljava/io/File;)Z

    .line 287
    const-string v7, "FontService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CurrentFontPreviewDir absolute path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x0

    .line 293
    :try_start_1
    invoke-static {v4, v7}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {v8, v4}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    :cond_1
    goto :goto_2

    .line 294
    :catchall_0
    move-exception v9

    goto :goto_1

    .line 292
    :catch_0
    move-exception v8

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :goto_1
    if-eqz v4, :cond_2

    :try_start_4
    invoke-static {v8, v4}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v4

    .line 295
    const-string v8, "FontService"

    const-string v9, "There is an exception when trying to copy themed fonts"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v8, "fonts.xml"

    invoke-direct {v4, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    const-string v8, "fonts.xml"

    invoke-static {v7, v4, v8}, Lcom/android/server/FontService;->unzipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 303
    iget-object p1, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ac

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 303
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 305
    return-void

    .line 309
    :cond_3
    nop

    .line 310
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v4, v6}, Lcom/android/server/FontService;->getPreviewFontNameFromXml(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcom/android/server/FontService;->unzipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 318
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 320
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 325
    :cond_5
    new-instance v4, Landroid/content/FontInfo;

    invoke-direct {v4}, Landroid/content/FontInfo;-><init>()V

    .line 326
    iput-object v5, v4, Landroid/content/FontInfo;->fontName:Ljava/lang/String;

    .line 327
    iput-object p1, v4, Landroid/content/FontInfo;->packageName:Ljava/lang/String;

    .line 328
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/FontInfo;->previewPath:Ljava/lang/String;

    .line 329
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    goto/16 :goto_0

    .line 332
    :cond_6
    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 334
    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    const/16 v2, 0x1e7

    const/16 v3, 0x1fd

    invoke-static {v1, v2, v3}, Lcom/android/server/FontService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 340
    :cond_7
    iget-object v1, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    iget-object v1, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 343
    :cond_8
    iget-object v1, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_3
    invoke-direct {p0}, Lcom/android/server/FontService;->getInstalledFontPackagesFromProvider()Ljava/util/List;

    move-result-object v0

    .line 348
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 349
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-direct {p0, v0}, Lcom/android/server/FontService;->putFontPackagesIntoProvider(Ljava/util/List;)V

    .line 352
    :cond_9
    const-string p1, "FontService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The new FontInfo map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method private putCurrentFontInfoInProvider(Landroid/content/FontInfo;)V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_info"

    .line 476
    invoke-virtual {p1}, Landroid/content/FontInfo;->toDelimitedString()Ljava/lang/String;

    move-result-object p1

    .line 475
    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 477
    return-void
.end method

.method private putFontPackagesIntoProvider(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 453
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "font_packages"

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x2

    .line 456
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 459
    return-void
.end method

.method private refreshFonts()V
    .locals 5

    .line 580
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    const/16 v1, 0x1e7

    const/16 v2, 0x1fd

    invoke-static {v0, v1, v2}, Lcom/android/server/FontService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 585
    invoke-static {}, Lcom/android/server/FontService;->restoreconThemeDir()Z

    .line 588
    :cond_0
    const-string/jumbo v0, "sys.refresh_theme"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/android/server/FontService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_scale"

    const v4, 0x33d6bf95    # 1.0E-7f

    add-float/2addr v0, v4

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 593
    return-void
.end method

.method private removeFontPackage(Ljava/lang/String;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/FontService;->SYSTEM_THEME_PREVIEW_CACHE_DIR:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 366
    invoke-direct {p0}, Lcom/android/server/FontService;->getInstalledFontPackagesFromProvider()Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    invoke-direct {p0, v0}, Lcom/android/server/FontService;->putFontPackagesIntoProvider(Ljava/util/List;)V

    .line 371
    :cond_2
    return-void
.end method

.method private static restoreconThemeDir()Z
    .locals 1

    .line 630
    sget-object v0, Lcom/android/server/FontService;->SYSTEM_THEME_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static sanitizeZipName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 575
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendInitializeFontMapMessage()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FontService$FontHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/FontService$FontHandler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method

.method private static setPermissions(Ljava/io/File;I)V
    .locals 1

    .line 608
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 609
    return-void
.end method

.method private static setPermissionsRecursive(Ljava/io/File;II)V
    .locals 5

    .line 612
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-static {p0, p1}, Lcom/android/server/FontService;->setPermissions(Ljava/io/File;I)V

    .line 614
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 618
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    invoke-static {v3, p1, p2}, Lcom/android/server/FontService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 620
    invoke-static {v3, p2}, Lcom/android/server/FontService;->setPermissions(Ljava/io/File;I)V

    goto :goto_1

    .line 622
    :cond_1
    invoke-static {v3, p1}, Lcom/android/server/FontService;->setPermissions(Ljava/io/File;I)V

    .line 617
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_2
    invoke-static {p0, p2}, Lcom/android/server/FontService;->setPermissions(Ljava/io/File;I)V

    .line 627
    return-void
.end method

.method private static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 700
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 704
    const/16 p0, 0x2000

    const/4 v1, 0x0

    :try_start_1
    new-array p0, p0, [B

    .line 706
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 707
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    move-object v4, v3

    goto :goto_1

    .line 708
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 710
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 711
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to ensure directory: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    goto :goto_0

    .line 719
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 720
    :goto_3
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 721
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 723
    :cond_4
    :try_start_3
    invoke-static {v1, v2}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 724
    goto :goto_0

    .line 723
    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_4

    .line 719
    :catch_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 723
    :catchall_1
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_4
    :try_start_5
    invoke-static {p1, v2}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 725
    :cond_5
    :try_start_6
    invoke-static {v1, v0}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 727
    goto :goto_6

    .line 725
    :catchall_2
    move-exception p0

    goto :goto_5

    .line 700
    :catch_1
    move-exception p0

    move-object v1, p0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 725
    :goto_5
    :try_start_8
    invoke-static {v1, v0}, Lcom/android/server/FontService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p0

    .line 726
    const-string p1, "FontService"

    const-string v0, "There is an exception when trying to unzip"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :goto_6
    return-void
.end method

.method private static unzipFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 670
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 674
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 675
    nop

    .line 676
    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 677
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 678
    goto :goto_0

    .line 680
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    const-string v3, "FontService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iterating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", trying to extract"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 686
    invoke-virtual {v3, v1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 688
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 689
    nop

    .line 690
    const/4 v3, 0x1

    .line 691
    goto :goto_0

    .line 688
    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw p0

    .line 693
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 696
    goto :goto_2

    .line 694
    :catch_0
    move-exception p0

    .line 695
    const-string p1, "FontService"

    const-string p2, "There is an exception when trying to unzip"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    :goto_2
    return-void
.end method


# virtual methods
.method public applyFont(Landroid/content/FontInfo;)V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/server/FontService;->enforceFontService()V

    .line 229
    iget-object v0, p1, Landroid/content/FontInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/FontInfo;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/FontInfo;->previewPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    invoke-static {}, Landroid/content/FontInfo;->getDefaultFontInfo()Landroid/content/FontInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/FontInfo;->updateFrom(Landroid/content/FontInfo;)V

    .line 234
    :cond_1
    const-string v0, "FontService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFonts() packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/FontInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/FontService$FontHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 237
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/android/server/FontService;->mFontHandler:Lcom/android/server/FontService$FontHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/FontService$FontHandler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    return-void
.end method

.method public getAllFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/FontInfo;",
            ">;>;"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/android/server/FontService;->enforceFontService()V

    .line 251
    iget-object v0, p0, Lcom/android/server/FontService;->mFontMap:Ljava/util/Map;

    return-object v0
.end method

.method public getFontInfo()Landroid/content/FontInfo;
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/android/server/FontService;->enforceFontService()V

    .line 244
    new-instance v0, Landroid/content/FontInfo;

    iget-object v1, p0, Lcom/android/server/FontService;->mFontInfo:Landroid/content/FontInfo;

    invoke-direct {v0, v1}, Landroid/content/FontInfo;-><init>(Landroid/content/FontInfo;)V

    .line 245
    return-object v0
.end method
