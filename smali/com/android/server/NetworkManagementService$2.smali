.class Lcom/android/server/NetworkManagementService$2;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 1591
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iput p2, p0, Lcom/android/server/NetworkManagementService$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1593
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iget v1, p0, Lcom/android/server/NetworkManagementService$2;->val$type:I

    .line 1595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1593
    const/4 v2, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1596
    return-void
.end method
