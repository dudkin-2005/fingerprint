.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 46
    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 60
    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object p0
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2

    .line 232
    packed-switch p0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :pswitch_0
    const-string p0, "ATTENDEE_STATUS_TENTATIVE"

    return-object p0

    .line 236
    :pswitch_1
    const-string p0, "ATTENDEE_STATUS_INVITED"

    return-object p0

    .line 235
    :pswitch_2
    const-string p0, "ATTENDEE_STATUS_DECLINED"

    return-object p0

    .line 234
    :pswitch_3
    const-string p0, "ATTENDEE_STATUS_ACCEPTED"

    return-object p0

    .line 233
    :pswitch_4
    const-string p0, "ATTENDEE_STATUS_NONE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :pswitch_0
    const-string p0, "AVAILABILITY_TENTATIVE"

    return-object p0

    .line 245
    :pswitch_1
    const-string p0, "AVAILABILITY_FREE"

    return-object p0

    .line 244
    :pswitch_2
    const-string p0, "AVAILABILITY_BUSY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPrimaryCalendars()Landroid/util/ArraySet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 96
    const-string v3, "_id"

    const-string v4, "(account_name=ownerAccount) AS \"primary\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 99
    nop

    .line 101
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "\"primary\" = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :goto_0
    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 108
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ConditionProviders.CT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPrimaryCalendars took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    return-object v2

    .line 107
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v3, :cond_3

    .line 108
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 18

    .line 176
    move-object/from16 v0, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 177
    const-string v6, "event_id = ? AND attendeeEmail = ?"

    .line 178
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v11, 0x1

    aput-object v0, v7, v11

    .line 183
    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 186
    if-eqz v3, :cond_6

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 190
    :cond_0
    nop

    .line 191
    move v4, v10

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 193
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 195
    move-object/from16 v12, p1

    iget v13, v12, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v13, v8}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v13

    .line 196
    sget-boolean v14, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "ConditionProviders.CT"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "status=%s, meetsReply=%s"

    new-array v10, v9, [Ljava/lang/Object;

    .line 199
    invoke-static {v8}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    aput-object v8, v10, v17

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v16, 0x1

    aput-object v8, v10, v16

    .line 198
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :cond_1
    move/from16 v17, v10

    :goto_1
    move/from16 v8, p2

    int-to-long v10, v8

    cmp-long v5, v5, v10

    if-nez v5, :cond_2

    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    if-eqz v13, :cond_2

    .line 202
    const/4 v5, 0x1

    goto :goto_2

    .line 200
    :cond_2
    nop

    .line 202
    move/from16 v5, v17

    :goto_2
    or-int/2addr v4, v5

    .line 203
    nop

    .line 191
    move/from16 v10, v17

    const/4 v11, 0x1

    goto :goto_0

    .line 204
    :cond_3
    nop

    .line 206
    if-eqz v3, :cond_4

    .line 207
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meetsAttendee took "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    return v4

    .line 206
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 187
    :cond_6
    :goto_3
    :try_start_1
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ConditionProviders.CT"

    const-string v4, "No attendees found"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_7
    nop

    .line 206
    if-eqz v3, :cond_8

    .line 207
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_8
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meetsAttendee took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 206
    :goto_4
    if-eqz v3, :cond_a

    .line 207
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_a
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meetsAttendee took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConditionProviders.CT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    throw v0
.end method

.method private static meetsReply(II)Z
    .locals 2

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 261
    return v0

    .line 254
    :pswitch_0
    if-ne p1, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 256
    :pswitch_1
    if-eq p1, v1, :cond_2

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 259
    :pswitch_2
    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .locals 5

    .line 214
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 217
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_2

    .line 218
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 222
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ConditionProviders.CT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegistered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p1, :cond_5

    .line 224
    sget-boolean p1, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "ConditionProviders.CT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register content observer u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    sget-object p1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 226
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 227
    sget-object p1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    move-wide/from16 v2, p2

    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 117
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 118
    const-wide/32 v5, 0x5265c00

    add-long/2addr v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 119
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 120
    iget-object v4, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v12, "begin ASC"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 122
    new-instance v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v7}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    .line 123
    iput-wide v5, v7, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 125
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getPrimaryCalendars()Landroid/util/ArraySet;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :goto_0
    if-eqz v4, :cond_f

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 127
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 128
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 129
    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 130
    const/4 v15, 0x3

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v10, :cond_0

    .line 131
    move v13, v10

    goto :goto_1

    .line 130
    :cond_0
    nop

    .line 131
    move v13, v6

    :goto_1
    const/4 v15, 0x4

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 132
    const/4 v15, 0x5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    const/4 v15, 0x6

    move-object/from16 v19, v7

    :try_start_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    const/4 v15, 0x7

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 135
    const/16 v15, 0x8

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 137
    sget-boolean v20, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v20, :cond_1

    :try_start_3
    const-string v15, "ConditionProviders.CT"

    move-object/from16 v21, v5

    const-string v5, "%s %s-%s v=%s a=%s eid=%s n=%s o=%s cid=%s p=%s"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v22, v4

    const/16 v4, 0xa

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v14, v4, v18

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x1

    aput-object v14, v4, v17

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v11, v12}, Ljava/util/Date;-><init>(J)V

    const/16 v16, 0x2

    aput-object v14, v4, v16

    .line 140
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v16, 0x3

    aput-object v14, v4, v16

    .line 141
    invoke-static {v2}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    aput-object v14, v4, v16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x5

    aput-object v14, v4, v16

    const/4 v14, 0x6

    aput-object v6, v4, v14

    const/4 v14, 0x7

    aput-object v7, v4, v14

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v4, v1

    const/16 v0, 0x9

    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    .line 137
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    move-object/from16 v1, v22

    goto/16 :goto_d

    .line 165
    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v4, v19

    goto/16 :goto_b

    .line 143
    :cond_1
    move-object/from16 v22, v4

    move-object/from16 v21, v5

    const/16 v18, 0x0

    :goto_2
    move-wide/from16 v0, p2

    cmp-long v4, v0, v8

    if-ltz v4, :cond_2

    cmp-long v4, v0, v11

    if-gez v4, :cond_2

    .line 144
    const/4 v4, 0x1

    goto :goto_3

    .line 143
    :cond_2
    nop

    .line 144
    move/from16 v4, v18

    :goto_3
    if-eqz v13, :cond_4

    if-eqz v3, :cond_4

    move-object/from16 v3, p1

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 145
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 146
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    :cond_3
    const/4 v5, 0x1

    goto :goto_4

    .line 146
    :cond_4
    move-object/from16 v3, p1

    .line 147
    :cond_5
    move/from16 v5, v18

    :goto_4
    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    .line 148
    const/16 v18, 0x1

    goto :goto_5

    .line 147
    :cond_6
    nop

    .line 148
    :goto_5
    if-eqz v5, :cond_d

    if-eqz v18, :cond_d

    .line 149
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ConditionProviders.CT"

    const-string v5, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_7
    move-object/from16 v2, p0

    invoke-direct {v2, v3, v10, v7}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v5

    .line 151
    if-eqz v5, :cond_c

    .line 152
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "ConditionProviders.CT"

    const-string v6, "    MEETS ATTENDEE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_8
    if-eqz v4, :cond_a

    .line 154
    sget-boolean v4, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "ConditionProviders.CT"

    const-string v5, "      MEETS TIME"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :cond_9
    move-object/from16 v4, v19

    const/4 v5, 0x1

    :try_start_5
    iput-boolean v5, v4, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    goto :goto_6

    .line 157
    :cond_a
    move-object/from16 v4, v19

    :goto_6
    cmp-long v5, v8, v0

    if-lez v5, :cond_b

    iget-wide v5, v4, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v5, v8, v5

    if-gez v5, :cond_b

    .line 158
    iput-wide v8, v4, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_7

    .line 165
    :catch_2
    move-exception v0

    goto :goto_9

    .line 159
    :cond_b
    cmp-long v5, v11, v0

    if-lez v5, :cond_e

    iget-wide v5, v4, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v5, v11, v5

    if-gez v5, :cond_e

    .line 160
    iput-wide v11, v4, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 164
    :cond_c
    move-object/from16 v4, v19

    goto :goto_7

    :cond_d
    move-object/from16 v4, v19

    move-object/from16 v2, p0

    .line 126
    :cond_e
    :goto_7
    move-object v7, v4

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-wide/from16 v23, v0

    move-object v0, v2

    move-object v1, v3

    move-wide/from16 v2, v23

    goto/16 :goto_0

    .line 165
    :catch_3
    move-exception v0

    move-object/from16 v22, v4

    :goto_8
    move-object/from16 v4, v19

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v22, v4

    move-object v4, v7

    :goto_9
    move-object/from16 v1, v22

    goto :goto_b

    .line 168
    :cond_f
    move-object/from16 v22, v4

    move-object v4, v7

    if-eqz v22, :cond_10

    .line 169
    move-object/from16 v1, v22

    :goto_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 168
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_d

    .line 165
    :catch_5
    move-exception v0

    move-object v1, v4

    move-object v4, v7

    .line 166
    :goto_b
    :try_start_6
    const-string v2, "ConditionProviders.CT"

    const-string v3, "error reading calendar"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 168
    if-eqz v1, :cond_10

    .line 169
    goto :goto_a

    .line 172
    :cond_10
    :goto_c
    return-object v4

    .line 168
    :catchall_2
    move-exception v0

    :goto_d
    if-eqz v1, :cond_11

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "u="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 90
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 83
    iget-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 84
    return-void
.end method
