.class public Lcom/android/server/BrickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 28
    const-string p1, "BrickReceiver"

    const-string p2, "!!! BRICKING DEVICE !!!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string p1, "brick"

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 30
    return-void
.end method
