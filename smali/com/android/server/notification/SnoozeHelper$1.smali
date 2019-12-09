.class Lcom/android/server/notification/SnoozeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SnoozeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SnoozeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SnoozeHelper;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 375
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 376
    const-string p1, "SnoozeHelper"

    const-string v0, "Reposting notification"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userId"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;I)V

    .line 382
    :cond_1
    return-void
.end method
