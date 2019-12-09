.class Lcom/android/server/display/ColorDisplayService$CustomAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 2

    .line 540
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    .line 541
    invoke-virtual {p1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 542
    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 548
    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;)V
    .locals 0

    .line 530
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method private updateActivated()V
    .locals 5

    .line 551
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v1, v0}, Lcom/android/server/display/ColorDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 553
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v2, v1}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 554
    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    .line 556
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v4, :cond_1

    .line 558
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 559
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v3

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v3, :cond_3

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 569
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 7

    .line 572
    if-eqz p1, :cond_1

    .line 573
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {p1, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {p1, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 575
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 576
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-string v4, "ColorDisplayService"

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 578
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 606
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 607
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 625
    const-string v0, "ColorDisplayService"

    const-string v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 627
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 619
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 620
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 621
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 612
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 613
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 614
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 582
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 583
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 586
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 587
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 589
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 592
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    .line 593
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 601
    return-void
.end method
