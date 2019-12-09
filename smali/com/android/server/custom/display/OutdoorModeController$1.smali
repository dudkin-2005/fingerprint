.class Lcom/android/server/custom/display/OutdoorModeController$1;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"

# interfaces
.implements Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/OutdoorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/OutdoorModeController;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/OutdoorModeController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController$1;->this$0:Lcom/android/server/custom/display/OutdoorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(IF)V
    .locals 1

    .line 238
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/android/server/custom/display/OutdoorModeController$1;->this$0:Lcom/android/server/custom/display/OutdoorModeController;

    monitor-enter p1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController$1;->this$0:Lcom/android/server/custom/display/OutdoorModeController;

    invoke-static {v0}, Lcom/android/server/custom/display/OutdoorModeController;->access$000(Lcom/android/server/custom/display/OutdoorModeController;)Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 241
    monitor-exit p1

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/server/custom/display/OutdoorModeController$1;->this$0:Lcom/android/server/custom/display/OutdoorModeController;

    invoke-static {v0, p2}, Lcom/android/server/custom/display/OutdoorModeController;->access$002(Lcom/android/server/custom/display/OutdoorModeController;Z)Z

    .line 245
    iget-object p2, p0, Lcom/android/server/custom/display/OutdoorModeController$1;->this$0:Lcom/android/server/custom/display/OutdoorModeController;

    invoke-static {p2}, Lcom/android/server/custom/display/OutdoorModeController;->access$100(Lcom/android/server/custom/display/OutdoorModeController;)V

    .line 246
    monitor-exit p1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
