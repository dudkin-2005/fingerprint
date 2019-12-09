.class Lcom/android/server/am/ActivityManagerService$CpuBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$CpuBinder;)V
    .locals 0

    .line 2966
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 2

    .line 2970
    if-eqz p4, :cond_0

    return-void

    .line 2971
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string p3, "cpuinfo"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2972
    return-void

    .line 2973
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter p1

    .line 2974
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2975
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2975
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2977
    monitor-exit p1

    .line 2978
    return-void

    .line 2977
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
