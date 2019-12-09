.class final Lcom/android/server/AppStateTracker$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    .line 704
    const/4 p3, 0x5

    if-ne p4, p3, :cond_0

    .line 705
    iget-object p3, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p3}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 707
    :cond_0
    iget-object p3, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p3}, Lcom/android/server/AppStateTracker;->access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    .line 709
    :goto_0
    if-eqz p1, :cond_1

    .line 710
    iget-object p1, p0, Lcom/android/server/AppStateTracker$StandbyTracker;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyExemptChanged()V

    .line 712
    :cond_1
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 0

    .line 716
    return-void
.end method
