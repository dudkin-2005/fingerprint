.class final Lcom/android/server/AlarmManagerService$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 5388
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 5399
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 5408
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 5393
    if-eqz p2, :cond_9

    .line 5394
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 5396
    :cond_9
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 5402
    if-eqz p2, :cond_9

    .line 5403
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 5405
    :cond_9
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 5390
    return-void
.end method
