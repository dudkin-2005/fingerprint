.class Lcom/android/server/content/SyncManager$14;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$startServiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 753
    iput-object p1, p0, Lcom/android/server/content/SyncManager$14;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$14;->val$startServiceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 756
    iget-object v0, p0, Lcom/android/server/content/SyncManager$14;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$14;->val$startServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 757
    return-void
.end method
