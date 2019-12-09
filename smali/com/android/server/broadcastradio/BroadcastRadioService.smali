.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BcRadioSrv"


# instance fields
.field private final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field private final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field private final mLock:Ljava/lang/Object;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    .line 48
    new-instance p1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 50
    new-instance p1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-direct {p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 53
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 54
    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/List;)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->getNextId(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-object p0
.end method

.method private static getNextId(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/server/broadcastradio/-$$Lambda$BroadcastRadioService$h9uu6awtPxlZjabQhUCMBWQXSFM;->INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$BroadcastRadioService$h9uu6awtPxlZjabQhUCMBWQXSFM;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$h9uu6awtPxlZjabQhUCMBWQXSFM(Landroid/hardware/radio/RadioManager$ModuleProperties;)I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 62
    const-string v0, "broadcastradio"

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    return-void
.end method
