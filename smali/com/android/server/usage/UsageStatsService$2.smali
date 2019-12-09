.class Lcom/android/server/usage/UsageStatsService$2;
.super Landroid/app/IUidObserver$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    .line 276
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 279
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2

    .line 270
    const/16 p2, 0x13

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/UsageStatsService$2;->onUidStateChanged(IIJ)V

    .line 271
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    .line 266
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0

    .line 260
    iget-object p3, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p3, p3, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method
