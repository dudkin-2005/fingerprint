.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)V

    .line 844
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;->this$1:Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    iget-object v0, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)V

    .line 845
    return-void
.end method