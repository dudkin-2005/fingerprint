.class Lcom/android/server/location/GeofenceManager$1;
.super Landroid/database/ContentObserver;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {p1}, Lcom/android/server/location/GeofenceManager;->access$000(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->access$100(Lcom/android/server/location/GeofenceManager;)V

    .line 139
    monitor-exit p1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
