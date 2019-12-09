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
    .locals 0

    .line 3928
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    .line 3939
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    .line 3948
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0

    .line 3933
    if-eqz p2, :cond_0

    .line 3934
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 3936
    :cond_0
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    .line 3942
    if-eqz p2, :cond_0

    .line 3943
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$UidObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->postRemoveForStopped(I)V

    .line 3945
    :cond_0
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0

    .line 3930
    return-void
.end method
