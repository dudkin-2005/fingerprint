.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public expectedMaxWhenElapsed:J

.field public expectedWhenElapsed:J

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p12

    move-object/from16 v7, p14

    .line 3265
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3266
    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 3267
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 3268
    const/4 v8, 0x2

    if-eq v1, v8, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .line 3270
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3271
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 3272
    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 3273
    move-wide v2, p6

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 3274
    invoke-static/range {p8 .. p9}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3275
    move-wide/from16 v2, p10

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 3276
    iput-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 3277
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    .line 3278
    iput-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    .line 3279
    invoke-static {v6, v7, v1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    .line 3280
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3281
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 3282
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3283
    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 3284
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    .line 3285
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3286
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    :goto_3
    iput v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3287
    return-void
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 3290
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3291
    :cond_0
    const-string p2, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "*walarm*:"

    .line 3292
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 2

    .line 3330
    iget p5, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 p6, 0x1

    if-eq p5, p6, :cond_1

    iget p5, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    nop

    .line 3331
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p5, "tag="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p5, "type="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    .line 3333
    const-string p5, " expectedWhenElapsed="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3335
    const-string p5, " expectedMaxWhenElapsed="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3337
    const-string p5, " whenElapsed="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3339
    const-string p5, " maxWhenElapsed="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-static {v0, v1, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3341
    const-string p5, " when="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3342
    if-eqz p6, :cond_2

    .line 3343
    new-instance p3, Ljava/util/Date;

    iget-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {p3, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3345
    :cond_2
    iget-wide p5, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {p5, p6, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3347
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "window="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-static {p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3349
    const-string p3, " repeatInterval="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->print(J)V

    .line 3350
    const-string p3, " count="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 3351
    const-string p3, " flags=0x"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    iget-object p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p3, :cond_3

    .line 3353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Alarm clock:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  triggerTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3355
    new-instance p3, Ljava/util/Date;

    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p4

    invoke-direct {p3, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "  showIntent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3358
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "operation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3359
    iget-object p3, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p3, :cond_4

    .line 3360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "listener="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3362
    :cond_4
    return-void
.end method

.method public makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;
    .locals 4

    .line 3296
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3297
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 3298
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3299
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<listener>:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 3296
    return-object v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 1

    .line 3304
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3305
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3306
    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3304
    :goto_0
    return p1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 3310
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3315
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3316
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3320
    const-string v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3321
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3322
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 2

    .line 3366
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3368
    iget-object p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    const-wide v0, 0x10900000001L

    invoke-virtual {p1, v0, v1, p6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3369
    iget p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide v0, 0x10e00000002L

    invoke-virtual {p1, v0, v1, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3370
    iget-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr p6, p4

    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3371
    iget-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide p6, 0x10300000004L

    invoke-virtual {p1, p6, p7, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3372
    iget-wide p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide p6, 0x10300000005L

    invoke-virtual {p1, p6, p7, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3373
    iget p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    const-wide p5, 0x10500000006L

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3374
    iget p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    const-wide p5, 0x10500000007L

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3375
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p4, :cond_0

    .line 3376
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const-wide p5, 0x10b00000008L

    invoke-virtual {p4, p1, p5, p6}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3378
    :cond_0
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    .line 3379
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const-wide p5, 0x10b00000009L

    invoke-virtual {p4, p1, p5, p6}, Landroid/app/PendingIntent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3381
    :cond_1
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p4, :cond_2

    .line 3382
    const-wide p4, 0x1090000000aL

    iget-object p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p6}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3385
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3386
    return-void
.end method
