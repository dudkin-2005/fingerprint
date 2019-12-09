.class Lcom/android/server/pm/BackgroundDexOptService$3;
.super Ljava/lang/Object;
.source "BackgroundDexOptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/BackgroundDexOptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$3;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundDexOptService;->access$200(Lcom/android/server/pm/BackgroundDexOptService;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 299
    return-void
.end method
