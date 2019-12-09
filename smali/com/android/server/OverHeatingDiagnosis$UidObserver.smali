.class final Lcom/android/server/OverHeatingDiagnosis$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 1361
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1374
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis;->handleOnUidStateChanged(II)V

    .line 1365
    return-void
.end method
