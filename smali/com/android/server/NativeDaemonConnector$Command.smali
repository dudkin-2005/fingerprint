.class public Lcom/android/server/NativeDaemonConnector$Command;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field private mArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCmd:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    .line 576
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    .line 577
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 578
    invoke-virtual {p0, v1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mCmd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$Command;->mArguments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method
