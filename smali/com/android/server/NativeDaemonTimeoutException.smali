.class public Lcom/android/server/NativeDaemonTimeoutException;
.super Lcom/android/server/NativeDaemonConnectorException;
.source "NativeDaemonTimeoutException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/android/server/NativeDaemonEvent;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    .line 26
    return-void
.end method
