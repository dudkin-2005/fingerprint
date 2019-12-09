.class Lcom/android/server/SystemServer$AdbPortObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbPortObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/server/SystemServer$AdbPortObserver;->this$0:Lcom/android/server/SystemServer;

    .line 332
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 333
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 337
    iget-object p1, p0, Lcom/android/server/SystemServer$AdbPortObserver;->this$0:Lcom/android/server/SystemServer;

    invoke-static {p1}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_port"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 340
    const-string v0, "adb.network.port"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method
