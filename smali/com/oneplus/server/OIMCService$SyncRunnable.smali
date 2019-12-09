.class Lcom/oneplus/server/OIMCService$SyncRunnable;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRunnable"
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    .line 260
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 264
    monitor-enter p0

    .line 265
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 267
    monitor-exit p0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 267
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 273
    const/4 v0, 0x0

    return v0
.end method
