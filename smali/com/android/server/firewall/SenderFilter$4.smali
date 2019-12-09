.class Lcom/android/server/firewall/SenderFilter$4;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 100
    invoke-static {p4, p5}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 101
    invoke-virtual {p1, p4, p7}, Lcom/android/server/firewall/IntentFirewall;->signaturesMatch(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 100
    :goto_1
    return p1
.end method
