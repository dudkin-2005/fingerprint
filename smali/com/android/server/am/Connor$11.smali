.class Lcom/android/server/am/Connor$11;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Connor;->notifyPredictUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;

.field final synthetic val$predict:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 827
    iput-object p1, p0, Lcom/android/server/am/Connor$11;->this$0:Lcom/android/server/am/Connor;

    iput-object p2, p0, Lcom/android/server/am/Connor$11;->val$predict:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 830
    iget-object v0, p0, Lcom/android/server/am/Connor$11;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/Connor;->access$2100(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 831
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/Connor$11;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2100(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 832
    iget-object v2, p0, Lcom/android/server/am/Connor$11;->this$0:Lcom/android/server/am/Connor;

    # getter for: Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2100(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/Connor$Callbacks;

    iget-object v3, p0, Lcom/android/server/am/Connor$11;->val$predict:[Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/am/Connor$Callbacks;->onPredictUpdated([Ljava/lang/String;)V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 834
    .end local v1    # "i":I
    :cond_28
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2a

    throw v1
.end method
