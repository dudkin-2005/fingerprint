.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$Hl56UaJa0DLooMsM68-or-QNF1Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$17;->lambda$run$0(I)Z

    move-result p1

    return p1
.end method
