.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "HardwarePropertiesManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwarePropertiesManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 64
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V

    .line 66
    monitor-exit p1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 14

    .line 111
    const-string/jumbo v5, "temperatures: "

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 113
    const-string/jumbo v12, "throttling temperatures: "

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 115
    const-string/jumbo v5, "shutdown temperatures: "

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 117
    const-string/jumbo v12, "vr throttling temperatures: "

    const/4 v13, 0x3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method private dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/HardwarePropertiesManagerService;->getDeviceTemperatures(Ljava/lang/String;II)[F

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 165
    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    .line 166
    iget-object v2, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 167
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1, p1, v0}, Lcom/android/server/vr/VrManagerInternal;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "The caller is neither a device owner, nor holding the DEVICE_POWER permission, nor the current VrListener."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 106
    :cond_0
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string p3, "HardwarePropertiesManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    const-string p1, "****** Dump of HardwarePropertiesManagerService ******"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/HardwarePropertiesManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object p1

    .line 133
    const-string p3, "CPU "

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 134
    const-string p3, "GPU "

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 135
    const/4 p3, 0x2

    const-string v1, "Battery "

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 136
    const/4 p3, 0x3

    const-string v1, "Skin "

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getFanSpeeds(Ljava/lang/String;)[F

    move-result-object p3

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fan speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    move-result-object p1

    .line 142
    nop

    .line 143
    :goto_0
    array-length p3, p1

    if-ge v0, p3, :cond_1

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cpu usage of core: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    .line 145
    invoke-virtual {v1}, Landroid/os/CpuUsageInfo;->getActive()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    .line 146
    invoke-virtual {v1}, Landroid/os/CpuUsageInfo;->getTotal()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 144
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const-string p1, "****** End of HardwarePropertiesManagerService dump ******"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceTemperatures(Ljava/lang/String;II)[F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 76
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 77
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public getFanSpeeds(Ljava/lang/String;)[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
