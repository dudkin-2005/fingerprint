.class Lcom/android/server/NetworkManagementService$4;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$4;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1588
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$4;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    iget v1, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1588
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1591
    return-void
.end method