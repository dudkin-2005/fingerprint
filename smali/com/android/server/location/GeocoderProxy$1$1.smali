.class Lcom/android/server/location/GeocoderProxy$1$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy$1;->run(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GeocoderProxy$1;

.field final synthetic val$provider:Landroid/location/IGeocodeProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeocoderProxy$1;Landroid/location/IGeocodeProvider;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/location/GeocoderProxy$1;

    .line 88
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->val$provider:Landroid/location/IGeocodeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 92
    :try_start_0
    const-string v0, "GeocoderProxy"

    const-string v1, "getFromLocation...Start!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->val$provider:Landroid/location/IGeocodeProvider;

    iget-object v3, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-wide v3, v3, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-object v5, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-wide v5, v5, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget v7, v7, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v8, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v8, v8, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v9, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v9, v9, Lcom/android/server/location/GeocoderProxy$1;->val$addrs:Ljava/util/List;

    invoke-interface/range {v2 .. v9}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    const-string v0, "GeocoderProxy"

    const-string v1, "getFromLocation...Successful!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_4a
    .catchall {:try_start_0 .. :try_end_2f} :catchall_48

    .line 101
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_38
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v0

    goto :goto_63

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_45

    throw v1

    .line 101
    :catchall_48
    move-exception v0

    goto :goto_87

    .line 98
    :catch_4a
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_57
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v0

    .line 104
    :goto_63
    goto :goto_83

    .line 103
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_64

    throw v1

    .line 96
    :catch_67
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_68
    const-string v1, "GeocoderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_48

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v0, v0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_76
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v0

    goto :goto_63

    .line 105
    :goto_83
    return-void

    .line 103
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_84

    throw v1

    .line 101
    :goto_87
    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v1, v1, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_90
    iget-object v2, p0, Lcom/android/server/location/GeocoderProxy$1$1;->this$1:Lcom/android/server/location/GeocoderProxy$1;

    iget-object v2, v2, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    # getter for: Lcom/android/server/location/GeocoderProxy;->mGetLocation:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/location/GeocoderProxy;->access$000(Lcom/android/server/location/GeocoderProxy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_9d

    throw v0

    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v0
.end method
