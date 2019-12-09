.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static mMax_brightness:I

.field public static mScreenBrightness:I


# instance fields
.field flinger:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private final mService:Lcom/android/server/lights/LightsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 57
    const/16 v1, 0x7f

    sput v1, Lcom/android/server/lights/LightsService;->mScreenBrightness:I

    .line 62
    sput v0, Lcom/android/server/lights/LightsService;->mMax_brightness:I

    .line 67
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->flinger:Landroid/os/IBinder;

    .line 70
    const/16 v1, 0x8

    new-array v2, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 361
    new-instance v2, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 372
    new-instance v2, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 336
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 339
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2b

    .line 340
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v4, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v4, v3, v2

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 342
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 46
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 46
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 46
    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method private getVrDisplayMode()I
    .registers 5

    .line 354
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 355
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 351
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 346
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 347
    return-void
.end method
