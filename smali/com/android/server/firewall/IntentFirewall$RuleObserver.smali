.class Lcom/android/server/firewall/IntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleObserver"
.end annotation


# static fields
.field private static final MONITORED_EVENTS:I = 0x3c8


# instance fields
.field final synthetic this$0:Lcom/android/server/firewall/IntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    .line 560
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3c8

    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 561
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    .line 565
    const-string p1, ".xml"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object p1, p1, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->removeMessages(I)V

    .line 570
    iget-object p1, p0, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->this$0:Lcom/android/server/firewall/IntentFirewall;

    iget-object p1, p1, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    :cond_0
    return-void
.end method
