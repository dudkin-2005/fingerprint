.class Lcom/android/server/BatteryService$Led$1;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/BatteryService$Led;

    .line 1282
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1285
    iget-object v0, p0, Lcom/android/server/BatteryService$Led$1;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1286
    return-void
.end method
