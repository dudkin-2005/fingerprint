.class Lcom/android/server/location/ContextHubService$2;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createLoadTransactionCallback(ILandroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;

.field final synthetic val$contextHubId:I

.field final synthetic val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;ILandroid/hardware/location/NanoAppBinary;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/location/ContextHubService;

    .line 299
    iput-object p1, p0, Lcom/android/server/location/ContextHubService$2;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$2;->val$contextHubId:I

    iput-object p3, p0, Lcom/android/server/location/ContextHubService$2;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .registers 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p2, "nanoAppStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    return-void
.end method

.method public onTransactionComplete(I)V
    .registers 5
    .param p1, "result"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/location/ContextHubService$2;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$2;->val$contextHubId:I

    iget-object v2, p0, Lcom/android/server/location/ContextHubService$2;->val$nanoAppBinary:Landroid/hardware/location/NanoAppBinary;

    # invokes: Lcom/android/server/location/ContextHubService;->handleLoadResponseOldApi(IILandroid/hardware/location/NanoAppBinary;)V
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/location/ContextHubService;->access$700(Lcom/android/server/location/ContextHubService;IILandroid/hardware/location/NanoAppBinary;)V

    .line 303
    return-void
.end method
