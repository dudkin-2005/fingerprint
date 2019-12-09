.class Lcom/android/server/location/LocationProviderProxy$1$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/ServiceWatcher$BinderRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationProviderProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/LocationProviderProxy$1;

.field final synthetic val$enabled:Z

.field final synthetic val$properties:[Lcom/android/internal/location/ProviderProperties;

.field final synthetic val$request:Lcom/android/internal/location/ProviderRequest;

.field final synthetic val$source:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy$1;[Lcom/android/internal/location/ProviderProperties;ZLcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    iput-boolean p3, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$enabled:Z

    iput-object p4, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    iput-object p5, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$source:Landroid/os/WorkSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/IBinder;)V
    .locals 3

    .line 114
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    invoke-interface {p1}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 118
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$properties:[Lcom/android/internal/location/ProviderProperties;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v2, v2, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid location provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$enabled:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {p1}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 126
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$request:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->val$source:Landroid/os/WorkSource;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 134
    const-string v0, "LocationProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy$1$1;->this$1:Lcom/android/server/location/LocationProviderProxy$1;

    iget-object v2, v2, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v2}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    :catch_1
    move-exception p1

    .line 131
    const-string v0, "LocationProviderProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_1
    :goto_0
    nop

    .line 136
    :goto_1
    return-void
.end method
