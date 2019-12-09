.class Lcom/android/server/am/GlobalSettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "GlobalSettingsToPropertiesMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalSettingsToPropertiesMapper"

.field private static final sGlobalSettingsMapping:[[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGlobalSettingsMapping:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string/jumbo v1, "sys_vdso"

    const-string/jumbo v2, "sys.vdso"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fps_divisor"

    const-string v2, "debug.hwui.fps_divisor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "display_panel_lpm"

    const-string/jumbo v2, "sys.display_panel_lpm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "sys_uidcpupower"

    const-string/jumbo v2, "sys.uidcpupower"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "sys_traced"

    const-string/jumbo v2, "sys.traced.enable_override"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->sGlobalSettingsMapping:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;[[Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mGlobalSettingsMapping:[[Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 91
    if-nez p2, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const-string p2, ""

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 105
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "GlobalSettingsToPropertiesMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "GlobalSettingsToPropertiesMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_0
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)V
    .locals 2

    .line 81
    new-instance v0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->sGlobalSettingsMapping:[[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[[Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertiesFromGlobalSettings()V

    .line 83
    return-void
.end method


# virtual methods
.method protected systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method updatePropertiesFromGlobalSettings()V
    .locals 9

    .line 64
    iget-object v0, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mGlobalSettingsMapping:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 65
    aget-object v5, v4, v2

    .line 66
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 67
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v7, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v5, v4}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/GlobalSettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v5, v4}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v6, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-direct {p0, p2, p1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
