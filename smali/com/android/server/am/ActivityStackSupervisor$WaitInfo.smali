.class Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitInfo"
.end annotation


# instance fields
.field private final mResult:Landroid/app/WaitResult;

.field private final mStartTimeMs:J

.field private final mTargetComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .locals 0

    .line 4999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5000
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 5001
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 5002
    iput-wide p3, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mStartTimeMs:J

    .line 5003
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 5022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WaitInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mTargetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    invoke-virtual {v0, p1, p2}, Landroid/app/WaitResult;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5026
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 5018
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getResult()Landroid/app/WaitResult;
    .locals 1

    .line 5010
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 5014
    iget-wide v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mStartTimeMs:J

    return-wide v0
.end method

.method public matches(Landroid/content/ComponentName;)Z
    .locals 1

    .line 5006
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
