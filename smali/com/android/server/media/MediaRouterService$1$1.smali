.class Lcom/android/server/media/MediaRouterService$1$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaRouterService$1;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/media/MediaRouterService$1;

    .line 122
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1$1;->this$1:Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$1$1;->this$1:Lcom/android/server/media/MediaRouterService$1;

    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 126
    return-void
.end method
