.class Lcom/android/server/am/Connor$4;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 255
    iput-object p1, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mIsScreenOff:Z
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$800(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 260
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mIsDebugMode:Z
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$700(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->isBatFullAndCharged()Z
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$900(Lcom/android/server/am/Connor;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/android/server/am/Connor;->nativeGetSysTemp(I)I

    move-result v0

    const v1, 0x9858

    if-ge v0, v1, :cond_2e

    .line 261
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->resetModelCheck()V
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$1000(Lcom/android/server/am/Connor;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/Connor;->setTraining(Z)V

    .line 264
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/Connor$4;->this$0:Lcom/android/server/am/Connor;

    # invokes: Lcom/android/server/am/Connor;->triggerTraining()V
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$1100(Lcom/android/server/am/Connor;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 268
    :cond_33
    goto :goto_38

    .line 266
    :catch_34
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method
