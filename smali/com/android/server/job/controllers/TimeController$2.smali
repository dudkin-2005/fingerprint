.class Lcom/android/server/job/controllers/TimeController$2;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/TimeController;

    .line 333
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 336
    # getter for: Lcom/android/server/job/controllers/TimeController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/TimeController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    const-string v0, "JobScheduler.Time"

    const-string v1, "Delay-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    # invokes: Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V
    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->access$200(Lcom/android/server/job/controllers/TimeController;)V

    .line 340
    return-void
.end method
