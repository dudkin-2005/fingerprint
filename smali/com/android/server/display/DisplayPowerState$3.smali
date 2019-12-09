.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$002(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 322
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 323
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    nop

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "DisplayPowerState"

    const-string v1, "Screen ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayPowerState;->access$602(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 329
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$700(Lcom/android/server/display/DisplayPowerState;)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    const-string v0, "DisplayPowerState"

    const-string v1, "Screen not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3
    :goto_0
    return-void
.end method
