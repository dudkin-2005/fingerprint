.class public final Lcom/android/server/QCNsrmAlarmExtension;
.super Ljava/lang/Object;
.source "QCNsrmAlarmExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;
    }
.end annotation


# static fields
.field private static final BLOCKED_UID_CHECK_INTERVAL:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "QCNsrmAlarmExtn"

.field static final localLOGV:Z = false

.field private static final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private almHandle:Lcom/android/server/AlarmManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/QCNsrmAlarmExtension;->almHandle:Lcom/android/server/AlarmManagerService;

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/QCNsrmAlarmExtension;)Lcom/android/server/AlarmManagerService;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/QCNsrmAlarmExtension;->almHandle:Lcom/android/server/AlarmManagerService;

    return-object p0
.end method


# virtual methods
.method protected addTriggeredUid(I)V
    .locals 2

    .line 81
    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected hasBlockedUid(I)Z
    .locals 1

    .line 92
    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected processBlockedUids(IZLandroid/os/PowerManager$WakeLock;)V
    .locals 3

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    sget-object p2, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/QCNsrmAlarmExtension$CheckBlockedUidTimerTask;-><init>(Lcom/android/server/QCNsrmAlarmExtension;ILandroid/os/PowerManager$WakeLock;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    sget-object p1, Lcom/android/server/QCNsrmAlarmExtension;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 77
    :goto_0
    return-void
.end method

.method protected removeTriggeredUid(I)V
    .locals 2

    .line 87
    sget-object v0, Lcom/android/server/QCNsrmAlarmExtension;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
