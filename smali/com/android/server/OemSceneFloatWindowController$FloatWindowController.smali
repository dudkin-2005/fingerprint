.class public Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
.super Ljava/lang/Object;
.source "OemSceneFloatWindowController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneFloatWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatWindowController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneFloatWindowController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneFloatWindowController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneFloatWindowController;

    .line 78
    iput-object p1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "OemSceneFloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] FloatWindowController: config => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1a
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 99
    iget-object v1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V
    invoke-static {v1, v3}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    goto :goto_3c

    .line 100
    :cond_2e
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 101
    iget-object v1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    # invokes: Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    .line 103
    :cond_3c
    :goto_3c
    return v2
.end method

.method public start(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneFloatWindowController"

    const-string v1, "[scene] FloatWindowController: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneFloatWindowController"

    const-string v1, "[scene] FloatWindowController: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    .line 91
    return v1
.end method
