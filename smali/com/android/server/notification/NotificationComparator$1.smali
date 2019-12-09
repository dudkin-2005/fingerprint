.class Lcom/android/server/notification/NotificationComparator$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationComparator;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationComparator;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/android/server/notification/NotificationComparator$1;->this$0:Lcom/android/server/notification/NotificationComparator;

    const-string v0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 180
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static {p1, p2}, Lcom/android/server/notification/NotificationComparator;->access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    return-void
.end method
