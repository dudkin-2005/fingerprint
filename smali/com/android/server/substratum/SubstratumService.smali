.class public final Lcom/android/server/substratum/SubstratumService;
.super Lcom/android/server/SystemService;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/substratum/SubstratumService$PackageDeleteObserver;,
        Lcom/android/server/substratum/SubstratumService$PackageInstallObserver;,
        Lcom/android/server/substratum/SubstratumService$SettingsObserver;,
        Lcom/android/server/substratum/SubstratumService$Sound;
    }
.end annotation


# static fields
.field private static final AUTHORIZED_SIGNATURES:[Landroid/content/pm/Signature;

.field private static final DEBUG:Z = true

.field private static final SOUNDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/substratum/SubstratumService$Sound;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

.field private static final SUBSTRATUM_PACKAGE:Ljava/lang/String; = "projekt.substratum"

.field private static final SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;

.field private static final SYSTEM_THEME_ALARM_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_BOOTANIMATION_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_FONT_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_NOTIFICATION_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_RINGTONE_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_SHUTDOWNANIMATION_DIR:Ljava/io/File;

.field private static final SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "SubstratumService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHelperConnection:Landroid/content/ServiceConnection;

.field private mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

.field private mInstalledPackageName:Ljava/lang/String;

.field private mIsWaiting:Z

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/substratum/SubstratumService$SettingsObserver;

.field private mOm:Landroid/content/om/IOverlayManager;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private final mService:Landroid/os/IBinder;

.field private mSigOverride:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 713
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
    .locals 13

    .line 81
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308202eb308201d3a003020102020411c02f2f300d06092a864886f70d01010b05003026312430220603550403131b5375627374726174756d20446576656c6f706d656e74205465616d301e170d3136303730333032333335385a170d3431303632373032333335385a3026312430220603550403131b5375627374726174756d20446576656c6f706d656e74205465616d30820122300d06092a864886f70d01010105000382010f003082010a02820101008855626336f645a335aa5d40938f15db911556385f72f72b5f8bad01339aaf82ae2d30302d3f2bba26126e8da8e76a834e9da200cdf66d1d5977c90a4e4172ce455704a22bbe4a01b08478673b37d23c34c8ade3ec040a704da8570d0a17fce3c7397ea63ebcde3a2a3c7c5f983a163e4cd5a1fc80c735808d014df54120e2e5708874739e22e5a22d50e1c454b2ae310b480825ab3d877f675d6ac1293222602a53080f94e4a7f0692b627905f69d4f0bb1dfd647e281cc0695e0733fa3efc57d88706d4426c4969aff7a177ac2d9634401913bb20a93b6efe60e790e06dad3493776c2c0878ce82caababa183b494120edde3d823333efd464c8aea1f51f330203010001a321301f301d0603551d0e04160414203ec8b075d1c9eb9d600100281c3924a831a46c300d06092a864886f70d01010b0500038201010042d4bd26d535ce2bf0375446615ef5bf25973f61ecf955bdb543e4b6e6b5d026fdcab09fec09c747fb26633c221df8e3d3d0fe39ce30ca0a31547e9ec693a0f2d83e26d231386ff45f8e4fd5c060958681f9d3bd6db5e940b1e4a0b424f5c463c79c5748a14a3a38da4dd7a5499dcc14a70ba82a50be5fe082890c89a27e56067d2eae952e0bcba4d6beb5359520845f1fdb7df99868786055555187ba46c69ee67fa2d2c79e74a364a8b3544997dc29cc625395e2f45bf8bdb2c9d8df0d5af1a59a58ad08b32cdbec3819fa49201bb5b5aadeee8f2f096ac029055713b77054e8af07cd61fe97f7365d0aa92d570be98acb8941b8a2b0053b54f18bfde092eb"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;

    .line 102
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308201dd30820146020101300d06092a864886f70d010105050030373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b3009060355040613025553301e170d3137303232333036303730325a170d3437303231363036303730325a30373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b300906035504061302555330819f300d06092a864886f70d010101050003818d00308189028181008aa6cf56e3ba4d0921da3baf527529205efbe440e1f351c40603afa5e6966e6a6ef2def780c8be80d189dc6101935e6f8340e61dc699cfd34d50e37d69bf66fbb58619d0ebf66f22db5dbe240b6087719aa3ceb1c68f3fa277b8846f1326763634687cc286b0760e51d1b791689fa2d948ae5f31cb8e807e00bd1eb72788b2330203010001300d06092a864886f70d0101050500038181007b2b7e432bff612367fbb6fdf8ed0ad1a19b969e4c4ddd8837d71ae2ec0c35f52fe7c8129ccdcdc41325f0bcbc90c38a0ad6fc0c604a73720917d37421955c47f9104ea56ad05031b90c748b94831969a266fa7c55bc083e20899a13089402be49a5edc769811adc2b0496a8a066924af9eeb33f8d57d625a5fa150f7bc18e55"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

    .line 116
    new-instance v0, Ljava/io/File;

    .line 117
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "theme"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    .line 119
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "fonts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    .line 120
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "audio"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    .line 121
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    const-string/jumbo v2, "ringtones"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_RINGTONE_DIR:Ljava/io/File;

    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    const-string v2, "notifications"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_NOTIFICATION_DIR:Ljava/io/File;

    .line 125
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    const-string v2, "alarms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_ALARM_DIR:Ljava/io/File;

    .line 126
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    const-string/jumbo v2, "ui"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    .line 127
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string v2, "bootanimation.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_BOOTANIMATION_DIR:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    const-string/jumbo v2, "shutdownanimation.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_SHUTDOWNANIMATION_DIR:Ljava/io/File;

    .line 132
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/content/pm/Signature;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SUBSTRATUM_SIGNATURE:Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SUBSTRATUM_CI_SIGNATURE:Landroid/content/pm/Signature;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/server/substratum/SubstratumService;->AUTHORIZED_SIGNATURES:[Landroid/content/pm/Signature;

    .line 137
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/substratum/SubstratumService$Sound;

    new-instance v2, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v5, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    .line 138
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/SoundsCache/ui/"

    const-string v8, "Effect_Tick"

    const-string v9, "Effect_Tick"

    const/4 v10, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v3, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    .line 140
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/SoundsCache/ui/"

    const-string v6, "lock_sound"

    const-string v7, "Lock"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v3, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/SoundsCache/ui/"

    const-string/jumbo v5, "unlock_sound"

    const-string v6, "Unlock"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_ALARM_DIR:Ljava/io/File;

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/SoundsCache/alarms/"

    const-string v10, "alarm"

    const-string v11, "alarm"

    const/4 v12, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_NOTIFICATION_DIR:Ljava/io/File;

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/SoundsCache/notifications/"

    const-string v6, "notification"

    const-string v7, "notification"

    const/4 v8, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lcom/android/server/substratum/SubstratumService$Sound;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_RINGTONE_DIR:Ljava/io/File;

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/SoundsCache/ringtones/"

    const-string/jumbo v6, "ringtone"

    const-string/jumbo v7, "ringtone"

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/substratum/SubstratumService$Sound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/substratum/SubstratumService;->SOUNDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mLock:Ljava/lang/Object;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/substratum/SubstratumService;->mSigOverride:Z

    .line 160
    new-instance v0, Lcom/android/server/substratum/SubstratumService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/substratum/SubstratumService$SettingsObserver;-><init>(Lcom/android/server/substratum/SubstratumService;)V

    iput-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mObserver:Lcom/android/server/substratum/SubstratumService$SettingsObserver;

    .line 163
    new-instance v0, Lcom/android/server/substratum/SubstratumService$1;

    invoke-direct {v0, p0}, Lcom/android/server/substratum/SubstratumService$1;-><init>(Lcom/android/server/substratum/SubstratumService;)V

    iput-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mHelperConnection:Landroid/content/ServiceConnection;

    .line 272
    new-instance v0, Lcom/android/server/substratum/SubstratumService$2;

    invoke-direct {v0, p0}, Lcom/android/server/substratum/SubstratumService$2;-><init>(Lcom/android/server/substratum/SubstratumService;)V

    iput-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mService:Landroid/os/IBinder;

    .line 179
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/substratum/SubstratumService;)Lcom/android/internal/substratum/ISubstratumHelperService;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/server/substratum/SubstratumService;Lcom/android/internal/substratum/ISubstratumHelperService;)Lcom/android/internal/substratum/ISubstratumHelperService;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->restartUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/substratum/SubstratumService;)Landroid/content/om/IOverlayManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/substratum/SubstratumService;->mOm:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/substratum/SubstratumService;Ljava/io/File;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->makeDir(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->clearBootAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->copyBootAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->clearFonts()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->copyFonts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/substratum/SubstratumService;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->checkCallerAuthorization(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->clearSounds()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->applyThemedSounds(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200()Ljava/io/File;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/io/File;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshFonts()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshSounds()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->clearShutdownAnimation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->copyShutdownAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->updateSettings()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mInstalledPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/substratum/SubstratumService;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/substratum/SubstratumService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->waitForHelperConnection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->isOverlayEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/substratum/SubstratumService;Ljava/lang/String;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->switchOverlayState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/substratum/SubstratumService;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/substratum/SubstratumService;->mPm:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/substratum/SubstratumService;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/android/server/substratum/SubstratumService;->mIsWaiting:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/substratum/SubstratumService;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/server/substratum/SubstratumService;->mIsWaiting:Z

    return p1
.end method

.method private applyThemedSounds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopySounds - Package ID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopySounds - File name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    const-string v2, "SoundsCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 776
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 777
    if-nez v1, :cond_1

    .line 778
    const-string v1, "Could not create cache directory"

    invoke-direct {p0, v1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 783
    :cond_1
    const-string v1, ".zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 788
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 790
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 792
    :try_start_1
    invoke-static {p1, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 795
    :cond_3
    goto :goto_1

    .line 793
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 791
    :catch_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    :goto_0
    if-eqz p1, :cond_4

    :try_start_4
    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 794
    const-string p2, "There is an exception when trying to copy themed sounds"

    invoke-direct {p0, p2, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 798
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 801
    if-nez p1, :cond_5

    .line 802
    const-string p1, "Could not delete ZIP file"

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 805
    :cond_5
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->clearSounds()V

    .line 806
    sget-object p1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->makeDir(Ljava/io/File;)Z

    .line 808
    sget-object p1, Lcom/android/server/substratum/SubstratumService;->SOUNDS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/substratum/SubstratumService$Sound;

    .line 809
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    iget-object v3, p2, Lcom/android/server/substratum/SubstratumService$Sound;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_7

    .line 812
    goto :goto_2

    .line 815
    :cond_7
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/substratum/SubstratumService;->makeDir(Ljava/io/File;)Z

    .line 817
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/android/server/substratum/SubstratumService$Sound;->cachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 818
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/substratum/SubstratumService$Sound;->cachePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 820
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".ogg"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_3

    .line 822
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 823
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".mp3"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 826
    :cond_9
    :goto_3
    goto/16 :goto_2

    .line 829
    :cond_a
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 830
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshSounds()V

    .line 831
    return-void
.end method

.method private checkCallerAuthorization(I)V
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    nop

    .line 254
    const-string/jumbo v1, "projekt.substratum"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    sget-object v1, Lcom/android/server/substratum/SubstratumService;->AUTHORIZED_SIGNATURES:[Landroid/content/pm/Signature;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 256
    invoke-direct {p0, p1, v3}, Lcom/android/server/substratum/SubstratumService;->doSignaturesMatch(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    return-void

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/substratum/SubstratumService;->mSigOverride:Z

    if-eqz v0, :cond_2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not an authorized calling package, but the user has explicitly allowed all calling packages, validating calling package permissions..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    .line 266
    return-void

    .line 269
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller is not authorized"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :catch_0
    move-exception p1

    .line 251
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Cannot check caller authorization"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearBootAnimation()V
    .locals 1

    .line 657
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_BOOTANIMATION_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_BOOTANIMATION_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 659
    if-nez v0, :cond_0

    .line 660
    const-string v0, "Could not delete themed boot animation"

    invoke-direct {p0, v0}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method private clearFonts()V
    .locals 1

    .line 743
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 744
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshFonts()V

    .line 745
    return-void
.end method

.method private clearShutdownAnimation()V
    .locals 1

    .line 675
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_SHUTDOWNANIMATION_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_SHUTDOWNANIMATION_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 677
    if-nez v0, :cond_0

    .line 678
    const-string v0, "Could not delete themed shutdown animation"

    invoke-direct {p0, v0}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 681
    :cond_0
    return-void
.end method

.method private clearSounds()V
    .locals 1

    .line 834
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 835
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshSounds()V

    .line 836
    return-void
.end method

.method private copyBootAnimation(Ljava/lang/String;)V
    .locals 1

    .line 649
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->waitForHelperConnection()V

    .line 650
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    invoke-interface {p1}, Lcom/android/internal/substratum/ISubstratumHelperService;->applyBootAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    goto :goto_0

    .line 651
    :catch_0
    move-exception p1

    .line 652
    const-string v0, "There is an exception when trying to apply boot animation"

    invoke-direct {p0, v0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    :goto_0
    return-void
.end method

.method private copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 970
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 971
    nop

    .line 973
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 974
    array-length v1, p1

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 975
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 978
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-direct {p0, v3, v4}, Lcom/android/server/substratum/SubstratumService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_1

    .line 981
    :cond_0
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 974
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_1
    move v0, v2

    goto :goto_2

    .line 986
    :cond_2
    nop

    .line 988
    :goto_2
    return v0
.end method

.method private copyFonts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copy Fonts - Package ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_CACHE_DIR:Ljava/io/File;

    const-string v2, "FontCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 692
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 693
    if-nez v1, :cond_1

    .line 694
    const-string v1, "SubstratumService"

    const-string v2, "Could not create cache directory..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v1, "Could not create cache directory"

    invoke-direct {p0, v1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 699
    :cond_1
    const-string v1, "/system/fonts"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/substratum/SubstratumService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 703
    const-string v1, ".zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".zip"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 708
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 710
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 711
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 712
    :try_start_1
    invoke-static {p1, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 715
    :cond_3
    goto :goto_1

    .line 713
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 711
    :catch_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 713
    :goto_0
    if-eqz p1, :cond_4

    :try_start_4
    invoke-static {p2, p1}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 714
    const-string p2, "There is an exception when trying to copy themed fonts"

    invoke-direct {p0, p2, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    .line 721
    if-nez p1, :cond_5

    .line 722
    const-string p1, "Could not delete ZIP file"

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 726
    :cond_5
    new-instance p1, Ljava/io/File;

    const-string p2, "/system/etc/fonts.xml"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 727
    new-instance p2, Ljava/io/File;

    const-string v1, "fonts.xml"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 729
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 733
    :cond_6
    sget-object p1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-static {p1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 734
    sget-object p1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->makeDir(Ljava/io/File;)Z

    .line 735
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->copyDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 738
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 739
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->refreshFonts()V

    .line 740
    return-void
.end method

.method private copyShutdownAnimation(Ljava/lang/String;)V
    .locals 1

    .line 667
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->waitForHelperConnection()V

    .line 668
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    invoke-interface {p1}, Lcom/android/internal/substratum/ISubstratumHelperService;->applyShutdownAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    goto :goto_0

    .line 669
    :catch_0
    move-exception p1

    .line 670
    const-string v0, "There is an exception when trying to apply shutdown animation"

    invoke-direct {p0, v0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 672
    :goto_0
    return-void
.end method

.method private doSignaturesMatch(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 3

    .line 230
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x40

    invoke-interface {v1, p1, v2, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 234
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v0

    .line 236
    invoke-virtual {p2, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 237
    return v2

    .line 241
    :cond_0
    goto :goto_0

    .line 239
    :catch_0
    move-exception p1

    .line 240
    return v0

    .line 243
    :cond_1
    :goto_0
    return v0
.end method

.method private getAppContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 608
    nop

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " context"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isOverlayEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 627
    nop

    .line 629
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mOm:Landroid/content/om/IOverlayManager;

    invoke-interface {v1, p1, v0}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p1

    .line 637
    move v0, p1

    goto :goto_0

    .line 633
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find OverlayInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    goto :goto_1

    .line 635
    :catch_0
    move-exception p1

    .line 636
    const-string v1, "There is an exception when trying to check overlay state"

    invoke-direct {p0, v1, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    :goto_1
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1019
    const-string v0, "SubstratumService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 1

    .line 1032
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1033
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1024
    if-eqz p2, :cond_0

    .line 1025
    const-string v0, "SubstratumService"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1027
    :cond_0
    const-string p2, "SubstratumService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :goto_0
    return-void
.end method

.method private makeDir(Ljava/io/File;)Z
    .locals 3

    .line 955
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1

    .line 959
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 960
    const/16 v0, 0x1ff

    .line 962
    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 963
    const/4 v2, -0x1

    invoke-static {p1, v0, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 966
    :cond_2
    return v1
.end method

.method private refreshFonts()V
    .locals 5

    .line 749
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_FONT_DIR:Ljava/io/File;

    const/16 v1, 0x1e7

    const/16 v2, 0x1fd

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/substratum/SubstratumService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 754
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->restoreconThemeDir()Z

    .line 758
    :cond_0
    const-string/jumbo v0, "sys.refresh_font"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_scale"

    const v4, 0x33d6bf95    # 1.0E-7f

    add-float/2addr v0, v4

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 763
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->restartUi()V

    .line 764
    return-void
.end method

.method private refreshSounds()V
    .locals 10

    .line 839
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/substratum/SoundUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    .line 842
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/substratum/SoundUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    .line 843
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/substratum/SoundUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    .line 844
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_sound"

    const-string v3, "Lock.ogg"

    invoke-static {v0, v1, v3}, Lcom/android/server/substratum/SoundUtils;->setDefaultUISounds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "unlock_sound"

    const-string v3, "Unlock.ogg"

    invoke-static {v0, v1, v3}, Lcom/android/server/substratum/SoundUtils;->setDefaultUISounds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 848
    :cond_0
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_AUDIO_DIR:Ljava/io/File;

    const/16 v3, 0x1e7

    const/16 v4, 0x1fd

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/substratum/SubstratumService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 852
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SOUNDS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/substratum/SubstratumService$Sound;

    .line 853
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 856
    goto :goto_0

    .line 860
    :cond_2
    iget v5, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    if-eq v5, v1, :cond_3

    packed-switch v5, :pswitch_data_0

    .line 871
    const-string v5, "Theme"

    goto :goto_1

    .line 865
    :pswitch_0
    const-string v5, "Theme Notification"

    .line 866
    goto :goto_1

    .line 862
    :pswitch_1
    const-string v5, "Theme Ringtone"

    .line 863
    goto :goto_1

    .line 868
    :cond_3
    const-string v5, "Theme Alarm"

    .line 869
    nop

    .line 874
    :goto_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 875
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".ogg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 877
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 878
    iget-object v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    sget-object v6, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    if-eqz v4, :cond_4

    .line 880
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    iget-object v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    invoke-static {v4, v7, v5, v3}, Lcom/android/server/substratum/SoundUtils;->setUIAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 881
    :cond_4
    iget-object v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    sget-object v6, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 882
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    .line 883
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 882
    invoke-static {v4, v3, v5}, Lcom/android/server/substratum/SoundUtils;->setUISounds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 885
    :cond_5
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    invoke-static {v4, v7, v3, v5}, Lcom/android/server/substratum/SoundUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 887
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 888
    iget-object v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    sget-object v7, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    if-eqz v4, :cond_7

    .line 890
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    iget-object v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    invoke-static {v4, v6, v5, v3}, Lcom/android/server/substratum/SoundUtils;->setUIAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    goto :goto_2

    .line 891
    :cond_7
    iget-object v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    sget-object v7, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 892
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    .line 893
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-static {v4, v3, v5}, Lcom/android/server/substratum/SoundUtils;->setUISounds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 895
    :cond_8
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    invoke-static {v4, v6, v3, v5}, Lcom/android/server/substratum/SoundUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z

    goto :goto_2

    .line 898
    :cond_9
    iget-object v4, v3, Lcom/android/server/substratum/SubstratumService$Sound;->themePath:Ljava/lang/String;

    sget-object v5, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_UI_SOUNDS_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 899
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->soundPath:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ogg"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/server/substratum/SoundUtils;->setDefaultUISounds(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 902
    :cond_a
    iget-object v4, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget v3, v3, Lcom/android/server/substratum/SubstratumService$Sound;->type:I

    invoke-static {v4, v3}, Lcom/android/server/substratum/SoundUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    .line 905
    :goto_2
    goto/16 :goto_0

    .line 909
    :cond_b
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.REFRESH_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 913
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    .line 915
    :goto_4
    if-eqz v2, :cond_d

    .line 916
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 917
    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 918
    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 920
    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restartUi()V
    .locals 3

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.RESTART_THEME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 645
    return-void
.end method

.method private restoreconThemeDir()Z
    .locals 1

    .line 1014
    sget-object v0, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private switchOverlayState(Ljava/lang/String;Z)V
    .locals 2

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mOm:Landroid/content/om/IOverlayManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_0

    .line 621
    :catch_0
    move-exception p1

    .line 622
    const-string p2, "There is an exception when trying to switch overlay state"

    invoke-direct {p0, p2, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    :goto_0
    return-void
.end method

.method private unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 923
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 927
    const/16 p1, 0x2000

    const/4 v1, 0x0

    :try_start_1
    new-array p1, p1, [B

    .line 929
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 930
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    move-object v4, v3

    goto :goto_1

    .line 931
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 933
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 934
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to ensure directory: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 939
    goto :goto_0

    .line 942
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 943
    :goto_3
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 944
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 946
    :cond_4
    :try_start_3
    invoke-static {v1, v2}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 947
    goto :goto_0

    .line 946
    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_4

    .line 942
    :catch_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 946
    :catchall_1
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_4
    :try_start_5
    invoke-static {p2, v2}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 948
    :cond_5
    :try_start_6
    invoke-static {v1, v0}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 950
    goto :goto_6

    .line 948
    :catchall_2
    move-exception p1

    goto :goto_5

    .line 923
    :catch_1
    move-exception p1

    move-object v1, p1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 948
    :goto_5
    :try_start_8
    invoke-static {v1, v0}, Lcom/android/server/substratum/SubstratumService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p1

    .line 949
    const-string p2, "There is an exception when trying to unzip"

    invoke-direct {p0, p2, p1}, Lcom/android/server/substratum/SubstratumService;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 951
    :goto_6
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 1036
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_authorize_substratum_packages"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/substratum/SubstratumService;->mSigOverride:Z

    .line 1040
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForHelperConnection()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "projekt.substratum.helper.SubstratumHelperService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v1, "projekt.substratum.helper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService;->mHelperConnection:Landroid/content/ServiceConnection;

    const v3, 0x800001

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 218
    nop

    .line 219
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/substratum/SubstratumService;->mHelperService:Lcom/android/internal/substratum/ISubstratumHelperService;

    if-nez v1, :cond_0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 221
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3

    .line 184
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 185
    sget-object p1, Lcom/android/server/substratum/SubstratumService;->SYSTEM_THEME_DIR:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->makeDir(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->restoreconThemeDir()Z

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_authorize_substratum_packages"

    .line 190
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/substratum/SubstratumService;->mObserver:Lcom/android/server/substratum/SubstratumService$SettingsObserver;

    .line 189
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    invoke-direct {p0}, Lcom/android/server/substratum/SubstratumService;->updateSettings()V

    .line 194
    const-string/jumbo p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mOm:Landroid/content/om/IOverlayManager;

    .line 195
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService;->mPm:Landroid/content/pm/IPackageManager;

    .line 196
    const-string/jumbo p1, "substratum"

    iget-object v0, p0, Lcom/android/server/substratum/SubstratumService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/substratum/SubstratumService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 198
    const-string/jumbo p1, "published substratum service"

    invoke-direct {p0, p1}, Lcom/android/server/substratum/SubstratumService;->log(Ljava/lang/String;)V

    .line 200
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 205
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    .line 210
    return-void
.end method

.method setPermissions(Ljava/io/File;I)V
    .locals 1

    .line 992
    const/4 v0, -0x1

    invoke-static {p1, p2, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 993
    return-void
.end method

.method setPermissionsRecursive(Ljava/io/File;II)V
    .locals 5

    .line 996
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    invoke-virtual {p0, p1, p2}, Lcom/android/server/substratum/SubstratumService;->setPermissions(Ljava/io/File;I)V

    .line 998
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1002
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/substratum/SubstratumService;->setPermissionsRecursive(Ljava/io/File;II)V

    .line 1004
    invoke-virtual {p0, v3, p3}, Lcom/android/server/substratum/SubstratumService;->setPermissions(Ljava/io/File;I)V

    goto :goto_1

    .line 1006
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/server/substratum/SubstratumService;->setPermissions(Ljava/io/File;I)V

    .line 1001
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/substratum/SubstratumService;->setPermissions(Ljava/io/File;I)V

    .line 1011
    return-void
.end method
