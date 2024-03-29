.class public Lcom/oneplus/notification/NotificationVibrationController;
.super Ljava/lang/Object;
.source "NotificationVibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_VIBRATION_INTENSITY:Z

.field private static mFallbackVibrationPattern:[J

.field private static mOPDefaultVibrationPattern:[J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

.field private mVibrateIntensity:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/notification/NotificationVibrationController;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_18

    sput-object v0, Lcom/oneplus/notification/NotificationVibrationController;->mOPDefaultVibrationPattern:[J

    return-void

    nop

    :array_18
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mVibrateIntensity:I

    .line 28
    iput-object p1, p0, Lcom/oneplus/notification/NotificationVibrationController;->mContext:Landroid/content/Context;

    .line 29
    sget-boolean v0, Lcom/oneplus/notification/NotificationVibrationController;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v0, :cond_18

    .line 30
    new-instance v0, Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;-><init>(Lcom/oneplus/notification/NotificationVibrationController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    .line 32
    :cond_18
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/notification/NotificationVibrationController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/notification/NotificationVibrationController;

    .line 17
    iget-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/notification/NotificationVibrationController;)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/notification/NotificationVibrationController;

    .line 17
    iget v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mVibrateIntensity:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/notification/NotificationVibrationController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/notification/NotificationVibrationController;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/oneplus/notification/NotificationVibrationController;->mVibrateIntensity:I

    return p1
.end method

.method static synthetic access$200()[J
    .registers 1

    .line 17
    sget-object v0, Lcom/oneplus/notification/NotificationVibrationController;->mOPDefaultVibrationPattern:[J

    return-object v0
.end method

.method public static getDefaultVibration()[J
    .registers 1

    .line 81
    sget-boolean v0, Lcom/oneplus/notification/NotificationVibrationController;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oneplus/notification/NotificationVibrationController;->mOPDefaultVibrationPattern:[J

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/oneplus/notification/NotificationVibrationController;->mFallbackVibrationPattern:[J

    :goto_9
    return-object v0
.end method


# virtual methods
.method public observe()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    invoke-virtual {v0}, Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;->observe()V

    .line 68
    :cond_9
    return-void
.end method

.method public setFallbackVibrationPattern([J)V
    .registers 2
    .param p1, "pattern"    # [J

    .line 77
    sput-object p1, Lcom/oneplus/notification/NotificationVibrationController;->mFallbackVibrationPattern:[J

    .line 78
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 71
    iget-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/oneplus/notification/NotificationVibrationController;->mSettingsObserver:Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/oneplus/notification/NotificationVibrationController$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 74
    :cond_9
    return-void
.end method
