.class Lcom/android/server/notification/EventConditionProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EventConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EventConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/server/notification/EventConditionProvider$3;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 329
    invoke-static {}, Lcom/android/server/notification/EventConditionProvider;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ConditionProviders.ECP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/EventConditionProvider$3;->this$0:Lcom/android/server/notification/EventConditionProvider;

    invoke-static {p1}, Lcom/android/server/notification/EventConditionProvider;->access$400(Lcom/android/server/notification/EventConditionProvider;)V

    .line 331
    return-void
.end method