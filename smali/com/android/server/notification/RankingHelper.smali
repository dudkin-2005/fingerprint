.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;,
        Lcom/android/server/notification/RankingHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v0}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 126
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 127
    iput-object p3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 128
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 129
    iput-object p4, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 131
    new-instance p1, Lcom/android/server/notification/NotificationComparator;

    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateBadgingEnabled()V

    .line 135
    array-length p1, p6

    .line 136
    new-array p2, p1, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 137
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    aget-object v1, p6, p3

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    nop

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 142
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 143
    invoke-interface {v0, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 144
    invoke-interface {v0, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v0, v1, p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "RankingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem accessing extractor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p6, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 148
    :catch_1
    move-exception v0

    .line 149
    const-string v1, "RankingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t instantiate extractor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p6, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 146
    :catch_2
    move-exception v0

    .line 147
    const-string v1, "RankingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find extractor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p6, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_1
    nop

    .line 137
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iget p1, p1, Landroid/app/NotificationManager$Policy;->state:I

    const/4 p3, 0x1

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_1

    move p2, p3

    nop

    :cond_1
    iput-boolean p2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 158
    return-void
.end method

.method private createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 360
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x1040217

    if-eqz v0, :cond_0

    .line 361
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v0, "miscellaneous"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 363
    return-void

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    return-void

    .line 373
    :cond_1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v2, "miscellaneous"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 377
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 378
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 379
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v1, v4, :cond_3

    .line 380
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 382
    :cond_3
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v1, :cond_4

    .line 383
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 385
    :cond_4
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v1, v4, :cond_5

    .line 386
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 388
    :cond_5
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method private deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 345
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    return-void

    .line 356
    :cond_1
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v0, "miscellaneous"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method private static dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .line 1127
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1129
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1130
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1131
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1132
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1134
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1135
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1136
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1137
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1138
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1139
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1141
    iget-object v5, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1142
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1143
    goto :goto_1

    .line 1144
    :cond_0
    iget-object v2, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 1145
    const-wide v6, 0x20b00000008L

    invoke-virtual {v5, p0, v6, v7}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1146
    goto :goto_2

    .line 1148
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1151
    :cond_3
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .line 1156
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1157
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 1158
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1159
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1160
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_0

    const-string v3, "UNKNOWN_UID"

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1165
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1166
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_1

    .line 1167
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    :cond_1
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_2

    .line 1171
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v3, v4, :cond_3

    .line 1175
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    :cond_3
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1181
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1182
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1186
    goto :goto_2

    .line 1187
    :cond_4
    iget-object v2, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 1188
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    const-string v4, "  "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    const-string v4, "  "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1192
    goto :goto_3

    .line 1157
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1195
    :cond_6
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2

    .line 1430
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1431
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1432
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1434
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1430
    return-object p1
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2

    .line 1420
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1421
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1422
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1424
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1423
    const/16 v1, 0x359

    invoke-virtual {p2, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1426
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1425
    const/16 v0, 0x35a

    invoke-virtual {p2, v0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 1420
    return-object p1
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 7

    .line 297
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/16 v5, -0x3e8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;
    .locals 4

    .line 303
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 305
    :try_start_0
    sget v2, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 307
    :goto_1
    if-nez v2, :cond_2

    .line 308
    new-instance v2, Lcom/android/server/notification/RankingHelper$Record;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$1;)V

    .line 309
    iput-object p1, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 310
    iput p2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 311
    iput p3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 312
    iput p4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 313
    iput p5, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 314
    iput-boolean p6, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    goto :goto_2

    .line 318
    :catch_0
    move-exception p2

    .line 319
    :try_start_2
    const-string p3, "RankingHelper"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "createDefaultChannelIfNeeded - Exception: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_2
    iget p2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget p3, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne p2, p3, :cond_1

    .line 323
    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    :goto_3
    monitor-exit v1

    return-object v2

    .line 329
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private getPackageChannels()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1325
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1326
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1327
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1328
    nop

    .line 1329
    move v5, v2

    move v6, v5

    :goto_1
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1330
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1331
    add-int/lit8 v6, v6, 0x1

    .line 1329
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1334
    :cond_1
    iget-object v4, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1336
    :cond_2
    monitor-exit v1

    .line 1337
    return-object v0

    .line 1336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 1

    .line 290
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/RankingHelper$Record;

    monitor-exit p2

    return-object p1

    .line 293
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 333
    iget v0, p1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 335
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 337
    return v2

    .line 341
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private updateConfig()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 454
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 458
    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .locals 5

    .line 1458
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1459
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1460
    return v0

    .line 1462
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_2

    .line 1463
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 1464
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_badging"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1463
    move v0, v2

    goto :goto_0

    .line 1464
    :cond_1
    nop

    .line 1463
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 0

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    return p1
.end method

.method clearLockedFields(Landroid/app/NotificationChannel;)V
    .locals 1

    .line 686
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 687
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)V
    .locals 4

    .line 604
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p2

    .line 609
    if-eqz p2, :cond_f

    .line 612
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_1
    :goto_0
    const-string v0, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 618
    iget-object v0, p2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 620
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 621
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 622
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 625
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 629
    :cond_2
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 632
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 633
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 638
    :cond_3
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p1

    if-nez p1, :cond_4

    .line 639
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 640
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 645
    :cond_4
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p1

    if-nez p1, :cond_5

    if-eqz p5, :cond_5

    .line 646
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    .line 647
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 649
    iget-boolean p2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq p1, p2, :cond_5

    .line 650
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 654
    :cond_5
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 655
    return-void

    .line 657
    :cond_6
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-ltz v0, :cond_d

    .line 658
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_d

    .line 663
    if-eqz p4, :cond_8

    if-nez p5, :cond_8

    .line 664
    iget p5, p2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v0, 0x2

    if-ne p5, v0, :cond_7

    move p5, v1

    goto :goto_1

    :cond_7
    move p5, v2

    :goto_1
    invoke-virtual {p3, p5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 666
    :cond_8
    if-eqz p4, :cond_9

    .line 667
    iget p4, p2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 669
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/notification/RankingHelper;->clearLockedFields(Landroid/app/NotificationChannel;)V

    .line 670
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p4

    if-ne p4, v1, :cond_a

    .line 671
    const/16 p4, -0x3e8

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 673
    :cond_a
    iget-boolean p4, p2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-nez p4, :cond_b

    .line 674
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 677
    :cond_b
    iget-object p2, p2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p2

    iget-boolean p4, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq p2, p4, :cond_c

    .line 679
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 681
    :cond_c
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 683
    return-void

    .line 659
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid importance level"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 616
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Reserved id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .locals 2

    .line 578
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p2

    .line 583
    if-eqz p2, :cond_2

    .line 586
    iget-object v0, p2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    .line 587
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/RankingHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 591
    :cond_0
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 594
    if-eqz p4, :cond_1

    .line 595
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 598
    :cond_1
    iget-object p1, p2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void

    .line 584
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p2

    .line 756
    if-nez p2, :cond_0

    .line 757
    return-void

    .line 759
    :cond_0
    iget-object p2, p2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannel;

    .line 760
    if-eqz p2, :cond_1

    .line 761
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 762
    invoke-direct {p0, p2, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 763
    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 764
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 766
    iget-boolean p1, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 770
    :cond_1
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 878
    if-eqz p1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 882
    :cond_0
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 885
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 886
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 887
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 889
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_2
    return-object v0

    .line 879
    :cond_3
    :goto_1
    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5

    .line 1112
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1113
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1114
    const-wide v2, 0x20900000001L

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v4, v4, v1

    .line 1115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1114
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1118
    const-wide v1, 0x20b00000002L

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    const-wide v0, 0x20b00000003L

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1122
    return-void

    .line 1119
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1090
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    const-string v1, "mSignalExtractors.length = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1093
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1094
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    const-string/jumbo v0, "per-package config:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    const-string v0, "Records:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    const-string v0, "Restored without uid:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1108
    return-void

    .line 1105
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 6

    .line 1261
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1263
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1266
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1267
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1269
    :try_start_0
    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1270
    const-string/jumbo v3, "packageName"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_1

    .line 1271
    :catch_0
    move-exception v2

    .line 1272
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1274
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1276
    :cond_1
    goto :goto_0

    .line 1277
    :cond_2
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 6

    .line 1305
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1306
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1307
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1309
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1310
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1312
    :try_start_0
    const-string/jumbo v5, "packageName"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1313
    const-string v3, "channelCount"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    goto :goto_1

    .line 1314
    :catch_0
    move-exception v2

    .line 1315
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1317
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1319
    :cond_1
    goto :goto_0

    .line 1320
    :cond_2
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 10

    .line 1198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1199
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1201
    :try_start_0
    const-string v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    goto :goto_0

    .line 1202
    :catch_0
    move-exception v2

    .line 1205
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1206
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1207
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    .line 1208
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;

    .line 1209
    if-eqz p1, :cond_0

    iget-object v6, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1210
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    :try_start_2
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1213
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_1

    .line 1215
    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1217
    :cond_1
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_2

    .line 1218
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1220
    :cond_2
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v8, :cond_3

    .line 1221
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1223
    :cond_3
    iget-boolean v7, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 1224
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1226
    :cond_4
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1227
    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1228
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1229
    goto :goto_2

    .line 1230
    :cond_5
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1232
    iget-object v5, v5, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 1233
    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1234
    goto :goto_3

    .line 1235
    :cond_6
    const-string v5, "groups"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1238
    goto :goto_4

    .line 1236
    :catch_1
    move-exception v5

    .line 1239
    :goto_4
    :try_start_3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1207
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1242
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    :try_start_4
    const-string/jumbo p1, "records"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1247
    goto :goto_5

    .line 1245
    :catch_2
    move-exception p1

    .line 1248
    :goto_5
    return-object v0

    .line 1242
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 174
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 177
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v3, v2}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    goto :goto_1

    .line 181
    :catch_0
    move-exception v2

    .line 182
    const-string v3, "RankingHelper"

    const-string v4, "NotificationSignalExtractor failed."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 163
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    return-object v2

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockedAppCount(I)I
    .locals 6

    .line 974
    nop

    .line 975
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 977
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 978
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 979
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_0

    iget v4, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v4, :cond_0

    .line 981
    add-int/lit8 v3, v3, 0x1

    .line 977
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    :cond_1
    monitor-exit v0

    .line 985
    return v3

    .line 984
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 4

    .line 957
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    nop

    .line 959
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 960
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 961
    return p2

    .line 963
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 964
    move v1, p2

    :goto_0
    if-ge p2, v0, :cond_2

    .line 965
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 966
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-nez v2, :cond_1

    .line 967
    add-int/lit8 v1, v1, 0x1

    .line 964
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 970
    :cond_2
    return v1
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 3

    .line 940
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    nop

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 943
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 944
    return p2

    .line 946
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 947
    move v1, p2

    :goto_0
    if-ge p2, v0, :cond_2

    .line 948
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 949
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 950
    add-int/lit8 v1, v1, 0x1

    .line 947
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 953
    :cond_2
    return v1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 0

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    return p1
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .locals 0

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 540
    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 0

    .line 738
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 740
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 741
    return-object p2

    .line 743
    :cond_0
    if-nez p3, :cond_1

    .line 744
    const-string p3, "miscellaneous"

    .line 746
    :cond_1
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    .line 747
    if-eqz p1, :cond_3

    if-nez p4, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p3

    if-nez p3, :cond_3

    .line 748
    :cond_2
    return-object p1

    .line 750
    :cond_3
    return-object p2
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 0

    .line 823
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p2

    .line 825
    if-nez p2, :cond_0

    .line 826
    const/4 p1, 0x0

    return-object p1

    .line 828
    :cond_0
    iget-object p2, p2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    return-object p1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 4

    .line 802
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 804
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 807
    :cond_0
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object p2

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 809
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 810
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 811
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 812
    if-nez p4, :cond_1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 813
    :cond_1
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 814
    invoke-virtual {p2, v2}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 810
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    :cond_3
    return-object p2

    .line 805
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 834
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 836
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 837
    if-nez p1, :cond_0

    .line 838
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1

    .line 840
    :cond_0
    new-instance p2, Landroid/app/NotificationChannelGroup;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 841
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 842
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 843
    iget-object v4, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 844
    if-nez p3, :cond_1

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 845
    :cond_1
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 846
    iget-object v5, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 847
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 848
    if-nez v5, :cond_2

    .line 849
    iget-object v5, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v5

    .line 850
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 851
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_2
    invoke-virtual {v5, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 855
    goto :goto_1

    .line 857
    :cond_3
    invoke-virtual {p2, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 842
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 861
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 862
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_6
    if-eqz p5, :cond_8

    .line 865
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationChannelGroup;

    .line 866
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 867
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :cond_7
    goto :goto_2

    .line 871
    :cond_8
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 899
    if-nez p1, :cond_0

    .line 900
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 902
    :cond_0
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 908
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 911
    if-nez p1, :cond_0

    .line 912
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1

    .line 914
    :cond_0
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 915
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 916
    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 917
    if-nez p3, :cond_1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 918
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    :cond_3
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1283
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1284
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1285
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1286
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v5, :cond_0

    .line 1287
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1291
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .locals 0

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    return p1
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .locals 0

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return p1
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 556
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 557
    return v0

    .line 559
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 560
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannelGroup;

    .line 561
    if-nez p1, :cond_1

    .line 562
    return v0

    .line 564
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    return p1
.end method

.method lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1062
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1065
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1066
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1068
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1069
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1071
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1072
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1073
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1075
    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1076
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1078
    :cond_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1079
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 1080
    :cond_6
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1082
    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p1

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    if-eq p1, v0, :cond_8

    .line 1083
    const/16 p1, 0x80

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1085
    :cond_8
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .locals 6

    .line 1353
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1355
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1356
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1357
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1358
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1359
    iget-object v3, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1360
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040217

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1359
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1365
    :cond_1
    monitor-exit v0

    .line 1366
    return-void

    .line 1365
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)V
    .locals 8

    .line 1370
    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1373
    :cond_0
    nop

    .line 1374
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1376
    array-length p1, p3

    array-length p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1377
    move p2, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1378
    aget-object p2, p3, v0

    .line 1379
    aget v2, p4, v0

    .line 1380
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1381
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p2, v2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    nop

    .line 1377
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1386
    :cond_1
    goto :goto_4

    .line 1387
    :cond_2
    array-length p1, p3

    move p4, v0

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v2, p3, v0

    .line 1389
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1390
    if-eqz v3, :cond_3

    .line 1392
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 1393
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1395
    :try_start_3
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v6, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v6, v7}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    monitor-exit v4

    .line 1397
    nop

    .line 1400
    nop

    .line 1404
    move p4, v1

    goto :goto_2

    .line 1396
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1398
    :catch_0
    move-exception v3

    .line 1404
    :cond_3
    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1405
    invoke-virtual {v3, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 1404
    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v2

    .line 1406
    if-eqz v2, :cond_4

    .line 1407
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 1408
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1410
    :cond_4
    goto :goto_3

    :catch_1
    move-exception v2

    .line 1387
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1414
    :cond_5
    move p2, p4

    :goto_4
    if-eqz p2, :cond_6

    .line 1415
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1417
    :cond_6
    return-void

    .line 1371
    :cond_7
    :goto_5
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 1341
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1342
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1343
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1345
    iget v2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1346
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1343
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1349
    :cond_1
    monitor-exit v0

    .line 1350
    return-void

    .line 1349
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    .line 931
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 932
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string p2, "miscellaneous"

    .line 933
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 934
    return v0

    .line 936
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 775
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 778
    if-nez p1, :cond_0

    .line 779
    return-void

    .line 781
    :cond_0
    iget-object p1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    return-void
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .locals 2

    .line 786
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 788
    if-nez p1, :cond_0

    .line 789
    return-void

    .line 791
    :cond_0
    iget-object p2, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 792
    :goto_0
    if-ltz p2, :cond_2

    .line 793
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 794
    const-string v1, "miscellaneous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    iget-object v1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 798
    :cond_2
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 189
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 190
    const/4 v10, 0x2

    if-eq v0, v10, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "ranking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 195
    :cond_1
    iget-object v0, v8, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 196
    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_d

    .line 197
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    const/4 v12, 0x3

    if-ne v0, v12, :cond_3

    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    return-void

    .line 201
    :cond_3
    if-ne v0, v10, :cond_2

    .line 202
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string/jumbo v0, "uid"

    sget v1, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {v9, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 204
    const-string v0, "name"

    const/4 v13, 0x0

    invoke-interface {v9, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 206
    const/4 v14, 0x0

    if-eqz p2, :cond_4

    .line 209
    :try_start_0
    iget-object v0, v8, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    nop

    .line 215
    move v3, v0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 215
    :cond_4
    move v3, v1

    :goto_1
    const-string v0, "importance"

    .line 216
    const/16 v7, -0x3e8

    invoke-static {v9, v0, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "priority"

    .line 218
    invoke-static {v9, v0, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "visibility"

    .line 219
    invoke-static {v9, v0, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v0, "show_badge"

    .line 221
    invoke-static {v9, v0, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    move-object v1, v8

    move v10, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 223
    const-string v1, "importance"

    invoke-static {v9, v1, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 225
    const-string/jumbo v1, "priority"

    invoke-static {v9, v1, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 227
    const-string/jumbo v1, "visibility"

    invoke-static {v9, v1, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 229
    const-string/jumbo v1, "show_badge"

    invoke-static {v9, v1, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 231
    const-string v1, "app_user_locked_fields"

    invoke-static {v9, v1, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 234
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 235
    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v11, :cond_b

    if-ne v2, v12, :cond_6

    .line 237
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_b

    .line 238
    :cond_6
    if-eq v2, v12, :cond_5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 239
    goto :goto_2

    .line 242
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v3, "channelGroup"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 245
    const-string v3, "id"

    invoke-interface {v9, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v4, "name"

    invoke-interface {v9, v13, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 248
    new-instance v5, Landroid/app/NotificationChannelGroup;

    invoke-direct {v5, v3, v4}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v5, v9}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 251
    iget-object v4, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_8
    const-string v3, "channel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 256
    const-string v2, "id"

    invoke-interface {v9, v13, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string v3, "name"

    invoke-interface {v9, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    const-string v4, "importance"

    invoke-static {v9, v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 260
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 261
    new-instance v5, Landroid/app/NotificationChannel;

    invoke-direct {v5, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 263
    if-eqz p2, :cond_9

    .line 264
    iget-object v3, v8, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v3}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_3

    .line 266
    :cond_9
    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 268
    :goto_3
    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_a
    goto :goto_2

    .line 274
    :cond_b
    :try_start_1
    invoke-direct {v8, v0}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    goto :goto_4

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string v1, "RankingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_c
    :goto_4
    nop

    .line 196
    const/4 v10, 0x2

    goto/16 :goto_0

    .line 282
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .locals 0

    .line 1051
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    .line 1052
    iget p2, p1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1053
    return-void

    .line 1056
    :cond_0
    iget p2, p1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 1057
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1058
    return-void
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 2

    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, p3, :cond_1

    .line 1039
    return-void

    .line 1041
    :cond_1
    nop

    .line 1042
    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    nop

    .line 1041
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    .line 1043
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 0

    .line 1032
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iput p3, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 1033
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1034
    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 0

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p1

    iput-boolean p3, p1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 551
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 552
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 463
    add-int/lit8 v1, v0, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 464
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 463
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 472
    :goto_1
    if-ltz v1, :cond_2

    .line 473
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 474
    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 475
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 477
    if-nez v5, :cond_1

    .line 478
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 514
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 483
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_7

    .line 484
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 485
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 486
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v6

    .line 494
    if-nez v6, :cond_3

    .line 495
    const-string v6, "nsk"

    goto :goto_3

    .line 496
    :cond_3
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 497
    const-string v6, "esk"

    goto :goto_3

    .line 499
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 502
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    .line 503
    const-string v8, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    .line 506
    nop

    .line 505
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v10

    const/16 v11, 0x31

    const/16 v12, 0x30

    const/4 v13, 0x1

    if-eqz v10, :cond_5

    .line 506
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    if-le v10, v13, :cond_5

    .line 507
    nop

    .line 505
    move v10, v12

    goto :goto_4

    .line 507
    :cond_5
    nop

    .line 505
    move v10, v11

    :goto_4
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    aput-object v10, v9, v1

    .line 508
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v13

    const/4 v5, 0x2

    .line 509
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move v12, v11

    :goto_5
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x3

    aput-object v6, v9, v5

    const/4 v5, 0x4

    .line 511
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 504
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 513
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 514
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 518
    return-void

    .line 514
    :goto_6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateBadgingEnabled()V
    .locals 8

    .line 1438
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 1441
    :cond_0
    nop

    .line 1443
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1444
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1445
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 1446
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1449
    move v5, v7

    goto :goto_1

    .line 1446
    :cond_1
    nop

    .line 1449
    move v5, v0

    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1450
    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v7, v0

    :goto_2
    or-int/2addr v2, v7

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    :cond_3
    if-eqz v2, :cond_4

    .line 1453
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1455
    :cond_4
    return-void
.end method

.method public updateChannelsBypassingDnd()V
    .locals 9

    .line 989
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 991
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 992
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 993
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 995
    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    .line 996
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 997
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 998
    iget-boolean v1, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-nez v1, :cond_0

    .line 999
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1000
    invoke-virtual {p0, v1}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1002
    :cond_0
    monitor-exit v0

    return-void

    .line 995
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 991
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1006
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_4

    .line 1009
    iput-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1010
    invoke-virtual {p0, v2}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1012
    :cond_4
    return-void

    .line 1006
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 3

    .line 692
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object p2

    .line 695
    if-eqz p2, :cond_8

    .line 698
    iget-object v0, p2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .line 699
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 702
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 703
    const/16 v1, -0x3e8

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 705
    :cond_0
    if-nez p4, :cond_1

    .line 706
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 708
    :cond_1
    if-eqz p4, :cond_2

    .line 709
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 710
    invoke-virtual {p0, v0, p3}, Lcom/android/server/notification/RankingHelper;->lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 712
    :cond_2
    iget-object p4, p2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string p4, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 717
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    iput p4, p2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 718
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 719
    const/4 p4, 0x2

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    iput p4, p2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 720
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p4

    iput p4, p2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 721
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p4

    iput-boolean p4, p2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 724
    :cond_4
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 726
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 729
    :cond_5
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq p1, p2, :cond_6

    .line 730
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 732
    :cond_6
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 733
    return-void

    .line 700
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Channel does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid package"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateZenPolicy(Z)V
    .locals 9

    .line 1015
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1019
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1020
    :goto_0
    move v7, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1016
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1021
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const-string/jumbo v0, "ranking"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 397
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_c

    .line 398
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/RankingHelper$Record;

    .line 400
    if-eqz p2, :cond_0

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    goto/16 :goto_6

    .line 403
    :cond_0
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-ne v7, v8, :cond_2

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-nez v7, :cond_2

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-ne v7, v8, :cond_2

    iget-boolean v7, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-ne v7, v2, :cond_2

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    if-nez v7, :cond_2

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    .line 409
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_2

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    .line 410
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_1

    .line 411
    :cond_1
    move v7, v4

    goto :goto_2

    .line 410
    :cond_2
    :goto_1
    nop

    .line 411
    move v7, v2

    :goto_2
    if-eqz v7, :cond_b

    .line 412
    const-string/jumbo v7, "package"

    invoke-interface {p1, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const-string v7, "name"

    iget-object v9, v6, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-interface {p1, v1, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v7, v8, :cond_3

    .line 415
    const-string v7, "importance"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    :cond_3
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_4

    .line 418
    const-string/jumbo v7, "priority"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_4
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v8, :cond_5

    .line 421
    const-string/jumbo v7, "visibility"

    iget v8, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    :cond_5
    const-string/jumbo v7, "show_badge"

    iget-boolean v8, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string v7, "app_user_locked_fields"

    iget v8, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 425
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-interface {p1, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    if-nez p2, :cond_6

    .line 428
    const-string/jumbo v7, "uid"

    iget v8, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    :cond_6
    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    .line 432
    invoke-virtual {v8, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 433
    goto :goto_3

    .line 435
    :cond_7
    iget-object v6, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 436
    if-eqz p2, :cond_8

    .line 437
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_9

    .line 438
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1, v8}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_5

    .line 441
    :cond_8
    invoke-virtual {v7, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 443
    :cond_9
    :goto_5
    goto :goto_4

    .line 445
    :cond_a
    const-string/jumbo v6, "package"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 448
    :cond_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const-string/jumbo p2, "ranking"

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    return-void

    .line 448
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
