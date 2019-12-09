.class public Lcom/android/server/updates/NetworkWatchlistInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "NetworkWatchlistInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-string v0, "/data/misc/network_watchlist/"

    const-string v1, "network_watchlist.xml"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 34
    :try_start_0
    const-class p2, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1}, Landroid/net/NetworkWatchlistManager;->reloadWatchlist()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 37
    const-string p1, "NetworkWatchlistInstallReceiver"

    const-string p2, "Unable to reload watchlist"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
.end method
