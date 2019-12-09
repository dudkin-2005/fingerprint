.class public Lcom/android/server/media/MediaUpdateService;
.super Lcom/android/server/SystemService;
.source "MediaUpdateService.java"


# static fields
.field private static final DEBUG:Z

.field private static final EXTRACTOR_UPDATE_SERVICE_NAME:Ljava/lang/String; = "media.extractor.update"

.field private static final MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaUpdateService"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "MediaUpdateService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaUpdateService;->DEBUG:Z

    .line 42
    const-string/jumbo v0, "ro.mediacomponents.package"

    .line 43
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/media/MediaUpdateService;Landroid/media/IMediaExtractorUpdateService;)Landroid/media/IMediaExtractorUpdateService;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaUpdateService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->connect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaUpdateService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V

    return-void
.end method

.method private connect()V
    .locals 3

    .line 64
    const-string v0, "media.extractor.update"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    new-instance v1, Lcom/android/server/media/MediaUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaUpdateService$1;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    .line 79
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Landroid/media/IMediaExtractorUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaExtractorUpdateService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    .line 81
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/MediaUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaUpdateService$2;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 88
    :cond_1
    const-string v0, "MediaUpdateService"

    const-string v1, "media.extractor.update not found."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    return-void
.end method

.method private loadExtractorPlugins(Ljava/lang/String;)V
    .locals 2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    invoke-interface {v0, p1}, Landroid/media/IMediaExtractorUpdateService;->loadPlugins(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    goto :goto_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    const-string v0, "MediaUpdateService"

    const-string v1, "Error in loadPlugins"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_0
    return-void
.end method

.method private packageStateChanged()V
    .locals 5

    .line 132
    nop

    .line 133
    nop

    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaUpdateService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :try_start_1
    iget-boolean v1, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    .line 139
    :goto_0
    const-string v1, "MediaUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' not installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move v1, v0

    :goto_1
    if-eqz v2, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v3, v4, :cond_0

    .line 142
    const-string v1, "MediaUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This update package is not for this platform version. Ignoring. platform:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetSdk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    goto :goto_2

    .line 147
    :cond_0
    move v0, v1

    .line 148
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string v0, ""

    .line 147
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaUpdateService;->loadExtractorPlugins(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 6

    .line 93
    new-instance v1, Lcom/android/server/media/MediaUpdateService$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaUpdateService$3;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    .line 120
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/media/MediaUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 56
    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->connect()V

    .line 59
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->registerBroadcastReceiver()V

    .line 61
    :cond_1
    return-void
.end method
