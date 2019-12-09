.class Lcom/android/server/policy/pocket/PocketLock$2;
.super Ljava/lang/Object;
.source "PocketLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/pocket/PocketLock;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/pocket/PocketLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/pocket/PocketLock;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->access$000(Lcom/android/server/policy/pocket/PocketLock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/pocket/PocketLock$2;->this$0:Lcom/android/server/policy/pocket/PocketLock;

    invoke-static {v0}, Lcom/android/server/policy/pocket/PocketLock;->access$200(Lcom/android/server/policy/pocket/PocketLock;)V

    .line 79
    return-void
.end method
