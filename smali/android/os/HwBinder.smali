.class public abstract Landroid/os/HwBinder;
.super Ljava/lang/Object;
.source "HwBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBinder"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 139
    invoke-static {}, Landroid/os/HwBinder;->native_init()J

    move-result-wide v2

    .line 141
    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/HwBinder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Landroid/os/HwBinder;->native_setup()V

    .line 42
    sget-object v0, Landroid/os/HwBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public static final native configureRpcThreadpool(JZ)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public static enableInstrumentation()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 164
    return-void
.end method

.method public static final getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    return-object p0
.end method

.method public static final native getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native joinRpcThreadpool()V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method private static final native native_init()J
.end method

.method private static native native_report_sysprop_change()V
.end method

.method private final native native_setup()V
.end method

.method public static reportSyspropChanged()V
    .locals 0

    .line 174
    invoke-static {}, Landroid/os/HwBinder;->native_report_sysprop_change()V

    .line 175
    return-void
.end method


# virtual methods
.method public abstract onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native registerService(Ljava/lang/String;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final native transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
