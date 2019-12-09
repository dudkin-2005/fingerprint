.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field public static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field public static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 87
    const-string v0, "/vendor/bin/hw/android.hardware.camera.provider@2.4-service"

    const-string v1, "/vendor/bin/hw/android.hardware.wifi@1.0-service"

    const-string v2, "/vendor/bin/hw/hostapd"

    const-string v3, "/vendor/bin/hw/wpa_supplicant"

    const-string v4, "/system/bin/netd"

    const-string v5, "/system/bin/wificond"

    const-string v6, "/system/bin/audioserver"

    const-string v7, "/system/bin/cameraserver"

    const-string v8, "/system/bin/drmserver"

    const-string v9, "/system/bin/mediadrmserver"

    const-string v10, "/system/bin/mediaserver"

    const-string v11, "/system/bin/sdcard"

    const-string v12, "/system/bin/surfaceflinger"

    const-string/jumbo v13, "media.extractor"

    const-string/jumbo v14, "media.metrics"

    const-string/jumbo v15, "media.codec"

    const-string v16, "com.android.bluetooth"

    const-string/jumbo v17, "statsd"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 110
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v4, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v5, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v6, "android.hardware.media.omx@1.0::IOmx"

    const-string v7, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v8, "android.hardware.sensors@1.0::ISensors"

    const-string v9, "android.hardware.vr@1.0::IVr"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 269
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 133
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 277
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 279
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    const-wide/32 v5, 0xea60

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 297
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 302
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 732
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 733
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 734
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 737
    .local v2, "line":Ljava/lang/String;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_21

    .line 738
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 739
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_11

    .line 741
    :cond_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 742
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 746
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_33

    .line 743
    :catch_28
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 747
    .end local v0    # "e":Ljava/io/IOException;
    :goto_33
    return-void
.end method

.method private binderStateRead()V
    .registers 5

    .line 751
    :try_start_0
    const-string v0, "Watchdog"

    const-string v1, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/kernel/debug/binder/state"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 754
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/BinderTraces_pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 759
    .local v2, "line":Ljava/lang/String;
    :goto_37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_47

    .line 760
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 761
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_37

    .line 763
    :cond_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 764
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 767
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_56

    .line 765
    :catch_4e
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to collect state file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    .end local v0    # "e":Ljava/io/IOException;
    :goto_56
    return-void
.end method

.method private cleanupProcesses(J)V
    .registers 7
    .param p1, "timeout"    # J

    .line 702
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v1, "watchdogKillerThread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V

    .line 711
    .local v0, "cleanupThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 713
    const-wide/16 v1, 0x3e8

    :try_start_d
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    .line 714
    goto :goto_12

    :catch_11
    move-exception v3

    .line 715
    :goto_12
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 716
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 389
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 390
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 392
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 396
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .registers 5
    .param p1, "c"    # C

    .line 722
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 724
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 727
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_16

    .line 725
    :catch_e
    move-exception v0

    .line 726
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 371
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 372
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 370
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 380
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 381
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 385
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 261
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 262
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 265
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getInterestingHalPids()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 401
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 402
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 403
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 404
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 406
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    .line 407
    goto :goto_12

    .line 410
    :cond_24
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 411
    goto :goto_12

    .line 414
    :cond_2f
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_12

    .line 416
    :cond_39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v3

    .line 417
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_3f
    move-exception v0

    .line 418
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private getInterestingNativePids()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 423
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 425
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 426
    .local v1, "nativePids":[I
    if-eqz v1, :cond_25

    .line 427
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 428
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 429
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 433
    :cond_25
    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 334
    monitor-enter p0

    .line 335
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 338
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 339
    monitor-exit p0

    .line 340
    return-void

    .line 336
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .line 343
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 344
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 347
    monitor-enter p0

    .line 348
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    .line 351
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v4    # "name":Ljava/lang/String;
    monitor-exit p0

    .line 354
    return-void

    .line 349
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 306
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 308
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 314
    monitor-enter p0

    .line 315
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 316
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 318
    :cond_b
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 360
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebooting system because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 363
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 365
    goto :goto_25

    .line 364
    :catch_24
    move-exception v1

    .line 366
    :goto_25
    return-void
.end method

.method public run()V
    .registers 25

    .line 438
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 439
    .local v0, "waitedHalf":Z
    const/4 v2, 0x0

    move v3, v0

    move-object v0, v2

    .line 439
    .local v0, "initialStack":Ljava/io/File;
    .local v3, "waitedHalf":Z
    :goto_6
    move-object v4, v0

    .line 444
    .end local v0    # "initialStack":Ljava/io/File;
    .local v4, "initialStack":Ljava/io/File;
    const/4 v5, 0x0

    .line 445
    .local v5, "debuggerWasConnected":I
    monitor-enter p0

    .line 446
    const-wide/16 v6, 0x7530

    .line 449
    .local v6, "timeout":J
    const/4 v8, 0x0

    move v0, v8

    .line 449
    .local v0, "i":I
    :goto_d
    :try_start_d
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_2fd

    if-ge v0, v9, :cond_23

    .line 450
    :try_start_15
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/Watchdog$HandlerChecker;

    .line 451
    .local v9, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v9}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_302

    .line 449
    .end local v9    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 454
    .end local v0    # "i":I
    :cond_23
    if-lez v5, :cond_27

    .line 455
    add-int/lit8 v5, v5, -0x1

    .line 462
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2fd

    .line 463
    .local v9, "start":J
    :goto_2b
    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    const-wide/16 v11, 0x7530

    if-lez v0, :cond_56

    .line 464
    :try_start_33
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_302

    if-eqz v0, :cond_3b

    .line 465
    const/4 v0, 0x2

    .line 468
    .end local v5    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v5, v0

    .line 468
    .end local v0    # "debuggerWasConnected":I
    .restart local v5    # "debuggerWasConnected":I
    :cond_3b
    :try_start_3b
    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_302

    .line 471
    goto :goto_46

    .line 469
    :catch_3f
    move-exception v0

    move-object v13, v0

    .line 470
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_41
    const-string v13, "Watchdog"

    invoke-static {v13, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_46
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 473
    const/4 v0, 0x2

    .line 475
    .end local v5    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v5, v0

    .line 475
    .end local v0    # "debuggerWasConnected":I
    .restart local v5    # "debuggerWasConnected":I
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_302

    sub-long/2addr v13, v9

    sub-long v6, v11, v13

    goto :goto_2b

    .line 478
    :cond_56
    const/4 v0, 0x0

    .line 479
    .local v0, "fdLimitTriggered":Z
    :try_start_57
    iget-object v13, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_2fd

    if-eqz v13, :cond_62

    .line 480
    :try_start_5b
    iget-object v13, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v13}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v13

    move v0, v13

    .line 483
    :cond_62
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v0, :cond_ac

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v15

    .line 485
    .local v15, "waitState":I
    if-nez v15, :cond_70

    .line 487
    const/4 v3, 0x0

    .line 488
    monitor-exit p0

    .line 439
    :goto_6e
    move-object v0, v4

    goto :goto_6

    .line 489
    :cond_70
    if-ne v15, v14, :cond_74

    .line 491
    monitor-exit p0

    goto :goto_6e

    .line 492
    :cond_74
    if-ne v15, v13, :cond_a3

    .line 493
    if-nez v3, :cond_a1

    .line 496
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v13, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    nop

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v11

    .line 498
    invoke-static {v14, v13, v2, v2, v11}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    move-object v4, v11

    .line 500
    const/4 v3, 0x1

    .line 503
    const-string/jumbo v11, "sys.debug.watchdog"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 504
    const-wide/16 v11, 0x7530

    invoke-direct {v1, v11, v12}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 508
    .end local v13    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a1
    monitor-exit p0

    goto :goto_6e

    .line 512
    :cond_a3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v11

    .line 513
    .local v11, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v1, v11}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12
    :try_end_ab
    .catchall {:try_start_5b .. :try_end_ab} :catchall_302

    .line 514
    .end local v15    # "waitState":I
    .local v12, "subject":Ljava/lang/String;
    goto :goto_b2

    .line 515
    .end local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v12    # "subject":Ljava/lang/String;
    :cond_ac
    :try_start_ac
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 516
    .restart local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v12, "Open FD high water mark reached"

    .line 518
    .restart local v12    # "subject":Ljava/lang/String;
    :goto_b2
    iget-boolean v15, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 518
    .end local v0    # "fdLimitTriggered":Z
    .end local v6    # "timeout":J
    .end local v9    # "start":J
    move v6, v15

    .line 519
    .local v6, "allowRestart":Z
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_2fd

    move-object v7, v11

    .line 524
    .end local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v7, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/16 v0, 0xaf2

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 527
    .local v9, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_da

    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_da
    if-nez v3, :cond_dd

    goto :goto_de

    :cond_dd
    move v14, v8

    .line 532
    :goto_de
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    .line 531
    invoke-static {v14, v9, v2, v2, v0}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 535
    .local v10, "finalStack":Ljava/io/File;
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_ed

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 541
    :cond_ed
    const-wide/16 v14, 0x7d0

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 543
    const-string v0, "dalvik.vm.stack-trace-dir"

    const-string v11, ""

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, "tracesDirProp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "traces_SystemServer_WDT"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 546
    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_pid"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 548
    .local v13, "newTracesPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 550
    .local v0, "oldTraceMechanism":Z
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_169

    .line 553
    const-string v14, "dalvik.vm.stack-trace-file"

    invoke-static {v14, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 554
    .local v14, "tracesPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 555
    .local v2, "lpos":I
    if-eq v15, v2, :cond_15e

    .line 556
    new-instance v15, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    add-int/lit8 v0, v2, 0x1

    .line 557
    .end local v0    # "oldTraceMechanism":Z
    .local v18, "oldTraceMechanism":Z
    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 557
    .end local v2    # "lpos":I
    .local v19, "lpos":I
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 557
    .local v0, "watchdogTraces":Ljava/io/File;
    goto :goto_167

    .line 559
    .end local v18    # "oldTraceMechanism":Z
    .end local v19    # "lpos":I
    .local v0, "oldTraceMechanism":Z
    .restart local v2    # "lpos":I
    :cond_15e
    move/from16 v18, v0

    move/from16 v19, v2

    .line 559
    .end local v0    # "oldTraceMechanism":Z
    .end local v2    # "lpos":I
    .restart local v18    # "oldTraceMechanism":Z
    .restart local v19    # "lpos":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "watchdogTraces":Ljava/io/File;
    :goto_167
    const/4 v2, 0x1

    .line 562
    .end local v14    # "tracesPath":Ljava/lang/String;
    .end local v18    # "oldTraceMechanism":Z
    .end local v19    # "lpos":I
    .local v2, "oldTraceMechanism":Z
    goto :goto_178

    .line 564
    .end local v2    # "oldTraceMechanism":Z
    .local v0, "oldTraceMechanism":Z
    :cond_169
    move/from16 v18, v0

    .line 564
    .end local v0    # "oldTraceMechanism":Z
    .restart local v18    # "oldTraceMechanism":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, "tracesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    .end local v0    # "tracesDir":Ljava/io/File;
    move-object v0, v2

    move/from16 v2, v18

    .line 565
    .end local v18    # "oldTraceMechanism":Z
    .local v0, "watchdogTraces":Ljava/io/File;
    .restart local v2    # "oldTraceMechanism":Z
    :goto_178
    move-object v8, v0

    .line 568
    .end local v0    # "watchdogTraces":Ljava/io/File;
    .local v8, "watchdogTraces":Ljava/io/File;
    :try_start_179
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_206

    .line 569
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x180

    const/4 v15, -0x1

    invoke-static {v0, v14, v15, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 575
    if-eqz v4, :cond_1d3

    if-nez v2, :cond_1d3

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 580
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sub-long v14, v14, v16

    .line 581
    .local v14, "age":J
    const-wide/32 v16, 0x493e0

    .line 582
    .local v16, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v18, 0x493e0

    cmp-long v0, v14, v18

    if-gez v0, :cond_1c7

    .line 583
    const-string v0, "Watchdog"
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a3} :catch_214

    move/from16 v20, v2

    :try_start_1a5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .end local v2    # "oldTraceMechanism":Z
    .local v20, "oldTraceMechanism":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1aa} :catch_1c3

    move/from16 v21, v3

    :try_start_1ac
    const-string v3, "First set of traces taken from "

    .line 583
    .end local v3    # "waitedHalf":Z
    .local v21, "waitedHalf":Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {v1, v8, v4}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1d2

    .line 604
    .end local v14    # "age":J
    .end local v16    # "FIVE_MINUTES_IN_MILLIS":J
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    :catch_1c3
    move-exception v0

    move/from16 v21, v3

    .line 604
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    goto :goto_219

    .line 587
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    .restart local v14    # "age":J
    .restart local v16    # "FIVE_MINUTES_IN_MILLIS":J
    :cond_1c7
    move/from16 v20, v2

    move/from16 v21, v3

    .line 587
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v14    # "age":J
    .end local v16    # "FIVE_MINUTES_IN_MILLIS":J
    :goto_1d2
    goto :goto_1de

    .line 591
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :cond_1d3
    move/from16 v20, v2

    move/from16 v21, v3

    .line 591
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "First set of traces are empty!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_1de
    if-eqz v10, :cond_1fe

    .line 595
    const-string v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second set of traces taken from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {v1, v8, v10}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_211

    .line 599
    :cond_1fe
    const-string v0, "Watchdog"

    const-string v2, "Second set of traces are empty!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_211

    .line 602
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :cond_206
    move/from16 v20, v2

    move/from16 v21, v3

    .line 602
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_211} :catch_212

    .line 608
    :goto_211
    goto :goto_220

    .line 604
    :catch_212
    move-exception v0

    goto :goto_219

    .line 604
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :catch_214
    move-exception v0

    move/from16 v20, v2

    move/from16 v21, v3

    .line 607
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    :goto_219
    const-string v2, "Watchdog"

    const-string v3, "Exception creating Watchdog dump file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_220
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v2, "watchdogWriteToDropbox"

    invoke-direct {v0, v1, v2, v12, v10}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object v2, v0

    .line 620
    .local v2, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 622
    const-wide/16 v14, 0x7d0

    :try_start_22e
    invoke-virtual {v2, v14, v15}, Ljava/lang/Thread;->join(J)V
    :try_end_231
    .catch Ljava/lang/InterruptedException; {:try_start_22e .. :try_end_231} :catch_232

    .line 623
    goto :goto_233

    :catch_232
    move-exception v0

    .line 628
    :goto_233
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    .line 629
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 630
    .local v14, "crashOnWatchdog":Z
    if-eqz v14, :cond_25b

    .line 633
    const-string v0, "Watchdog"

    const-string v3, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v0, 0x77

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 635
    const/16 v0, 0x6c

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 638
    move-object/from16 v22, v2

    const-wide/16 v2, 0xbb8

    .line 638
    .end local v2    # "dropboxThread":Ljava/lang/Thread;
    .local v22, "dropboxThread":Ljava/lang/Thread;
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 640
    const/16 v0, 0x63

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    goto :goto_25d

    .line 644
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .restart local v2    # "dropboxThread":Ljava/lang/Thread;
    :cond_25b
    move-object/from16 v22, v2

    .line 644
    .end local v2    # "dropboxThread":Ljava/lang/Thread;
    .restart local v22    # "dropboxThread":Ljava/lang/Thread;
    :goto_25d
    monitor-enter p0

    .line 645
    :try_start_25e
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v2, v0

    .line 646
    .local v2, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_262
    .catchall {:try_start_25e .. :try_end_262} :catchall_2fa

    .line 647
    if-eqz v2, :cond_27d

    .line 648
    const-string v0, "Watchdog"

    const-string v3, "Reporting stuck state to activity controller"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_26b
    invoke-interface {v2, v12}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 656
    .local v0, "res":I
    if-ltz v0, :cond_27b

    .line 657
    const-string v3, "Watchdog"

    const-string v15, "Activity controller requested to coninue to wait"

    invoke-static {v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_26b .. :try_end_278} :catch_27c

    .line 658
    const/4 v3, 0x0

    .line 659
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    goto/16 :goto_2f6

    .line 662
    .end local v0    # "res":I
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    :cond_27b
    goto :goto_27d

    .line 661
    :catch_27c
    move-exception v0

    .line 666
    :cond_27d
    :goto_27d
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 667
    const/4 v5, 0x2

    .line 669
    :cond_284
    const/4 v3, 0x2

    if-lt v5, v3, :cond_291

    .line 670
    const-string v0, "Watchdog"

    const-string v3, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    .end local v2    # "controller":Landroid/app/IActivityController;
    .local v23, "controller":Landroid/app/IActivityController;
    :goto_28e
    move-object/from16 v23, v2

    goto :goto_2f4

    .line 671
    .end local v23    # "controller":Landroid/app/IActivityController;
    .restart local v2    # "controller":Landroid/app/IActivityController;
    :cond_291
    if-lez v5, :cond_29b

    .line 672
    const-string v0, "Watchdog"

    const-string v3, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28e

    .line 673
    :cond_29b
    if-nez v6, :cond_2a5

    .line 674
    const-string v0, "Watchdog"

    const-string v3, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28e

    .line 676
    :cond_2a5
    const-string v0, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v7}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 680
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2ca

    .line 681
    const/4 v3, 0x0

    .line 682
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    goto :goto_2f6

    .line 684
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    :cond_2ca
    move-object/from16 v23, v2

    const-wide/32 v2, 0xea60

    .line 684
    .end local v2    # "controller":Landroid/app/IActivityController;
    .restart local v23    # "controller":Landroid/app/IActivityController;
    invoke-direct {v1, v2, v3}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 685
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    if-eqz v0, :cond_2ec

    .line 686
    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 688
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_2f4

    .line 690
    :cond_2ec
    const-string v0, "Watchdog"

    const-string/jumbo v2, "the status is completed after KillingAllProcessesByWatchdog skip killing system_server"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :goto_2f4
    const/4 v3, 0x0

    .line 696
    .end local v5    # "debuggerWasConnected":I
    .end local v6    # "allowRestart":Z
    .end local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v8    # "watchdogTraces":Ljava/io/File;
    .end local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "finalStack":Ljava/io/File;
    .end local v11    # "tracesDirProp":Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "newTracesPath":Ljava/lang/String;
    .end local v14    # "crashOnWatchdog":Z
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .end local v23    # "controller":Landroid/app/IActivityController;
    .restart local v3    # "waitedHalf":Z
    nop

    .line 439
    .end local v4    # "initialStack":Ljava/io/File;
    .local v0, "initialStack":Ljava/io/File;
    :goto_2f6
    move-object v0, v4

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 646
    .end local v0    # "initialStack":Ljava/io/File;
    .end local v3    # "waitedHalf":Z
    .restart local v4    # "initialStack":Ljava/io/File;
    .restart local v5    # "debuggerWasConnected":I
    .restart local v6    # "allowRestart":Z
    .restart local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v8    # "watchdogTraces":Ljava/io/File;
    .restart local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "finalStack":Ljava/io/File;
    .restart local v11    # "tracesDirProp":Ljava/lang/String;
    .restart local v12    # "subject":Ljava/lang/String;
    .restart local v13    # "newTracesPath":Ljava/lang/String;
    .restart local v14    # "crashOnWatchdog":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    .restart local v22    # "dropboxThread":Ljava/lang/Thread;
    :catchall_2fa
    move-exception v0

    :try_start_2fb
    monitor-exit p0
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_2fa

    throw v0

    .line 519
    .end local v6    # "allowRestart":Z
    .end local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v8    # "watchdogTraces":Ljava/io/File;
    .end local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "finalStack":Ljava/io/File;
    .end local v11    # "tracesDirProp":Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "newTracesPath":Ljava/lang/String;
    .end local v14    # "crashOnWatchdog":Z
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .restart local v3    # "waitedHalf":Z
    :catchall_2fd
    move-exception v0

    move/from16 v21, v3

    :goto_300
    :try_start_300
    monitor-exit p0
    :try_end_301
    .catchall {:try_start_300 .. :try_end_301} :catchall_302

    throw v0

    :catchall_302
    move-exception v0

    goto :goto_300
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 322
    monitor-enter p0

    .line 323
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 324
    monitor-exit p0

    .line 325
    return-void

    .line 324
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .line 328
    monitor-enter p0

    .line 329
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 330
    monitor-exit p0

    .line 331
    return-void

    .line 330
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
