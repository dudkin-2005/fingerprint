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
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p5, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p6, "extractorNames"    # [Ljava/lang/String;

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
    new-instance v0, Lcom/android/server/notification/NotificationComparator;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateBadgingEnabled()V

    .line 135
    array-length v0, p6

    .line 136
    .local v0, "N":I
    new-array v1, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v1, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 137
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3a
    if-ge v2, v0, :cond_c0

    .line 139
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aget-object v4, p6, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 140
    .local v3, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 141
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 142
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 143
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 144
    invoke-interface {v4, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 145
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v4, v5, v2
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_5e} :catch_9d
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_5e} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_5e} :catch_5f

    .end local v3    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    goto :goto_bb

    .line 150
    :catch_5f
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem accessing extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_bc

    .line 148
    :catch_7e
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t instantiate extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_bb

    .line 146
    :catch_9d
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_bb
    nop

    .line 137
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    .line 155
    .end local v2    # "i":I
    :cond_c0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_ce

    move v1, v3

    nop

    :cond_ce
    iput-boolean v1, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 158
    return-void
.end method

.method private createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 367
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x10401bf

    if-eqz v0, :cond_23

    .line 368
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 369
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 370
    return-void

    .line 373
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 375
    return-void

    .line 380
    :cond_2a
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "miscellaneous"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 382
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 384
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 385
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 386
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v1, v4, :cond_55

    .line 387
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 389
    :cond_55
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v1, :cond_5c

    .line 390
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 392
    :cond_5c
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v1, v4, :cond_63

    .line 393
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 395
    :cond_63
    iget-object v1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method private deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 352
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 354
    return-void

    .line 357
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 359
    return-void

    .line 363
    :cond_13
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method private static dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 14
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
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

    .line 1141
    .local p4, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1143
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_9a

    .line 1144
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1145
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1146
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1148
    .local v3, "fToken":J
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1149
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1150
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1151
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1152
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1153
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1155
    iget-object v5, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1156
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1157
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_5f

    .line 1158
    :cond_74
    iget-object v5, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1159
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1160
    .end local v6    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_7e

    .line 1162
    :cond_93
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1143
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v3    # "fToken":J
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1165
    .end local v1    # "i":I
    :cond_9a
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
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

    .line 1170
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1171
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_d9

    .line 1172
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1173
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1174
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_30

    const-string v3, "UNKNOWN_UID"

    goto :goto_36

    :cond_30
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_36
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1180
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_52

    .line 1181
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    :cond_52
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_64

    .line 1185
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    :cond_64
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v3, v4, :cond_76

    .line 1189
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    :cond_76
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1195
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1196
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1200
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    goto :goto_91

    .line 1201
    :cond_ae
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1202
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1206
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_b8

    .line 1171
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1209
    .end local v1    # "i":I
    :cond_d9
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1444
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1445
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1446
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1444
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1434
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1435
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1436
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1438
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1437
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1440
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1439
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1434
    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 304
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/16 v5, -0x3e8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I
    .param p4, "priority"    # I
    .param p5, "visibility"    # I
    .param p6, "showBadge"    # Z

    .line 310
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 312
    :try_start_7
    sget v2, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne p2, v2, :cond_14

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_11
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    goto :goto_1b

    :cond_14
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_11

    .line 314
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    :goto_1b
    if-nez v2, :cond_5c

    .line 315
    new-instance v3, Lcom/android/server/notification/RankingHelper$Record;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$1;)V

    move-object v2, v3

    .line 316
    iput-object p1, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 317
    iput p2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 318
    iput p3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 319
    iput p4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 320
    iput p5, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 321
    iput-boolean p6, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_5e

    .line 324
    :try_start_30
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_5e

    .line 327
    goto :goto_4b

    .line 325
    :catch_34
    move-exception v3

    .line 326
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_35
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4b
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_57

    .line 330
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 332
    :cond_57
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_5c
    :goto_5c
    monitor-exit v1

    return-object v2

    .line 336
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1339
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1340
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 1341
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1342
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v5, 0x0

    .line 1343
    .local v5, "channelCount":I
    move v6, v5

    move v5, v2

    .local v5, "j":I
    .local v6, "channelCount":I
    :goto_1d
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_38

    .line 1344
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_35

    .line 1345
    add-int/lit8 v6, v6, 0x1

    .line 1343
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1348
    .end local v5    # "j":I
    :cond_38
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v6    # "channelCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1350
    .end local v3    # "i":I
    :cond_44
    monitor-exit v1

    .line 1351
    return-object v0

    .line 1350
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v2
.end method

.method private getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 297
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 299
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    monitor-exit v1

    return-object v2

    .line 300
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v2
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 340
    iget v0, p1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 341
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 342
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_16

    .line 344
    return v3

    .line 348
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private updateConfig()V
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 468
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 469
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 471
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 472
    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 1038
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1472
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1473
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1474
    return v1

    .line 1476
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_29

    .line 1477
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 1478
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_25

    .line 1477
    move v1, v3

    goto :goto_26

    .line 1478
    :cond_25
    nop

    .line 1477
    :goto_26
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1482
    :cond_29
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 559
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    return v0
.end method

.method clearLockedFields(Landroid/app/NotificationChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 700
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 701
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)V
    .registers 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z
    .param p5, "hasDndAccess"    # Z

    .line 618
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 623
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_12c

    .line 626
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_3b

    .line 627
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_3b
    :goto_3b
    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_124

    .line 632
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 634
    .local v2, "existing":Landroid/app/NotificationChannel;
    const/4 v3, 0x0

    if-eqz v2, :cond_c4

    if-eqz p4, :cond_c4

    .line 635
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 636
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 639
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 643
    :cond_6d
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 644
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 646
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_93

    .line 647
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 652
    :cond_93
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    if-nez v1, :cond_aa

    .line 653
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-ge v1, v3, :cond_aa

    .line 654
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 659
    :cond_aa
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    if-nez v1, :cond_c0

    if-eqz p5, :cond_c0

    .line 660
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    .line 661
    .local v1, "bypassDnd":Z
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 663
    iget-boolean v3, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq v1, v3, :cond_c0

    .line 664
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 668
    .end local v1    # "bypassDnd":Z
    :cond_c0
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 669
    return-void

    .line 671
    :cond_c4
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-ltz v4, :cond_11c

    .line 672
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_11c

    .line 677
    if-eqz p4, :cond_e0

    if-nez p5, :cond_e0

    .line 678
    iget v4, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_dc

    move v4, v1

    goto :goto_dd

    :cond_dc
    move v4, v3

    :goto_dd
    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 680
    :cond_e0
    if-eqz p4, :cond_e7

    .line 681
    iget v4, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 683
    :cond_e7
    invoke-virtual {p0, p3}, Lcom/android/server/notification/RankingHelper;->clearLockedFields(Landroid/app/NotificationChannel;)V

    .line 684
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v4

    if-ne v4, v1, :cond_f5

    .line 685
    const/16 v4, -0x3e8

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 687
    :cond_f5
    iget-boolean v4, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-nez v4, :cond_fc

    .line 688
    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 691
    :cond_fc
    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq v3, v4, :cond_110

    .line 693
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 695
    :cond_110
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 697
    return-void

    .line 673
    :cond_11c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid importance level"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    .end local v2    # "existing":Landroid/app/NotificationChannel;
    :cond_124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Reserved id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_12c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .line 592
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 597
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_5d

    .line 600
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 601
    .local v1, "oldGroup":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 603
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/RankingHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 605
    :cond_41
    if-eqz v1, :cond_53

    .line 606
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 608
    if-eqz p4, :cond_53

    .line 609
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 612
    :cond_53
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void

    .line 598
    .end local v1    # "oldGroup":Landroid/app/NotificationChannelGroup;
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 770
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_7

    .line 771
    return-void

    .line 773
    :cond_7
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 774
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_2d

    .line 775
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 776
    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 777
    .local v2, "lm":Landroid/metrics/LogMaker;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 778
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 780
    iget-boolean v3, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v3, :cond_2d

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 781
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 784
    .end local v2    # "lm":Landroid/metrics/LogMaker;
    :cond_2d
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
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

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 892
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v1, :cond_3d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_3d

    .line 896
    :cond_12
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 899
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_3c

    .line 900
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 901
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 902
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 903
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 906
    .end local v3    # "i":I
    :cond_3c
    return-object v0

    .line 893
    .end local v2    # "N":I
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1126
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1127
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1d

    .line 1128
    const-wide v2, 0x20900000001L

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v4, v4, v1

    .line 1129
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1128
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1131
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1132
    const-wide v2, 0x20b00000002L

    :try_start_25
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, v2, v3, p2, v4}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1133
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_36

    .line 1134
    const-wide v1, 0x20b00000003L

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1136
    return-void

    .line 1133
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1103
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1104
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v1, "mSignalExtractors.length = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1107
    const/4 v1, 0x0

    .line 1107
    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2c

    .line 1108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1113
    .end local v1    # "i":I
    :cond_2c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    const-string/jumbo v1, "per-package config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    const-string v1, "Records:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1118
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1119
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_4e

    .line 1120
    const-string v1, "Restored without uid:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1122
    return-void

    .line 1119
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1275
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1276
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1277
    .local v1, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1278
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1279
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1280
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_39

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1281
    :cond_39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1283
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_3e
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1284
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 1287
    goto :goto_4f

    .line 1285
    :catch_4b
    move-exception v7

    .line 1286
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 1288
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_4f
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1290
    .end local v3    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "banJson":Lorg/json/JSONObject;
    :cond_52
    goto :goto_11

    .line 1291
    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1319
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1320
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1321
    .local v1, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1322
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1323
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1324
    :cond_2b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1326
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_30
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 1330
    goto :goto_44

    .line 1328
    :catch_40
    move-exception v6

    .line 1329
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1331
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_44
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1333
    .end local v3    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "channelCountJson":Lorg/json/JSONObject;
    :cond_47
    goto :goto_11

    .line 1334
    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 14
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1213
    .local v0, "ranking":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1215
    .local v1, "records":Lorg/json/JSONArray;
    :try_start_a
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_17

    .line 1218
    goto :goto_18

    .line 1216
    :catch_17
    move-exception v2

    .line 1219
    :goto_18
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1220
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1221
    .local v3, "N":I
    const/4 v4, 0x0

    .line 1221
    .local v4, "i":I
    :goto_22
    if-ge v4, v3, :cond_ec

    .line 1222
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;

    .line 1223
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p1, :cond_36

    iget-object v6, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 1224
    :cond_36
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_f6

    .line 1226
    .local v6, "record":Lorg/json/JSONObject;
    :try_start_3b
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1227
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_61

    .line 1229
    const-string/jumbo v7, "importance"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1231
    :cond_61
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_71

    .line 1232
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    :cond_71
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v8, :cond_81

    .line 1235
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1237
    :cond_81
    iget-boolean v7, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_92

    .line 1238
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1240
    :cond_92
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1241
    .local v7, "channels":Lorg/json/JSONArray;
    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1242
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1243
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    goto :goto_a1

    .line 1244
    :cond_b5
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1245
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1246
    .local v8, "groups":Lorg/json/JSONArray;
    iget-object v9, v5, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 1247
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1248
    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_c9

    .line 1249
    :cond_dd
    const-string/jumbo v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e3
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_e3} :catch_e4
    .catchall {:try_start_3b .. :try_end_e3} :catchall_f6

    .line 1252
    .end local v7    # "channels":Lorg/json/JSONArray;
    .end local v8    # "groups":Lorg/json/JSONArray;
    goto :goto_e5

    .line 1250
    :catch_e4
    move-exception v7

    .line 1253
    :goto_e5
    :try_start_e5
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1221
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v6    # "record":Lorg/json/JSONObject;
    :cond_e8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 1256
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_f6

    .line 1258
    :try_start_ed
    const-string/jumbo v2, "records"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f3
    .catch Lorg/json/JSONException; {:try_start_ed .. :try_end_f3} :catch_f4

    .line 1261
    goto :goto_f5

    .line 1259
    :catch_f4
    move-exception v2

    .line 1262
    :goto_f5
    return-object v0

    .line 1256
    :catchall_f6
    move-exception v3

    :try_start_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v3
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 174
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_21

    .line 175
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 177
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_a
    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v3

    .line 178
    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v3, :cond_15

    .line 179
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v4, v3}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    .line 183
    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_15
    goto :goto_1e

    .line 181
    :catch_16
    move-exception v3

    .line 182
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "RankingHelper"

    const-string v5, "NotificationSignalExtractor failed."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 185
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .registers 6
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
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 163
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 164
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 165
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 166
    return-object v2

    .line 163
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBlockedAppCount(I)I
    .registers 8
    .param p1, "userId"    # I

    .line 988
    const/4 v0, 0x0

    .line 989
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 990
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 991
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_26

    .line 992
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 993
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_23

    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v5, :cond_23

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 991
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 998
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_26
    monitor-exit v1

    .line 999
    return v0

    .line 998
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 971
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "blockedCount":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 974
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_b

    .line 975
    return v0

    .line 977
    :cond_b
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 978
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_2d

    .line 979
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 980
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-nez v5, :cond_2a

    .line 981
    add-int/lit8 v0, v0, 0x1

    .line 978
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 984
    .end local v3    # "i":I
    :cond_2d
    return v0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 954
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, "deletedCount":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 957
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_b

    .line 958
    return v0

    .line 960
    :cond_b
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 961
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_27

    .line 962
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 963
    .local v4, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 964
    add-int/lit8 v0, v0, 0x1

    .line 961
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 967
    .end local v3    # "i":I
    :cond_27
    return v0
.end method

.method public getImportance(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    return v0
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 553
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 554
    .local v0, "userLockedFields":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 752
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 754
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 755
    return-object v1

    .line 757
    :cond_b
    if-nez p3, :cond_10

    .line 758
    const-string/jumbo p3, "miscellaneous"

    .line 760
    :cond_10
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 761
    .local v2, "nc":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_23

    if-nez p4, :cond_22

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_23

    .line 762
    :cond_22
    return-object v2

    .line 764
    :cond_23
    return-object v1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 837
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 839
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_b

    .line 840
    const/4 v1, 0x0

    return-object v1

    .line 842
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    return-object v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 816
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 818
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_52

    if-eqz p3, :cond_52

    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_52

    .line 821
    :cond_14
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v1

    .line 822
    .local v1, "group":Landroid/app/NotificationChannelGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 823
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 824
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    if-ge v3, v2, :cond_51

    .line 825
    iget-object v4, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 826
    .local v4, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_41

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 827
    :cond_41
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 828
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 824
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 832
    .end local v3    # "i":I
    :cond_51
    return-object v1

    .line 819
    .end local v1    # "group":Landroid/app/NotificationChannelGroup;
    .end local v2    # "N":I
    :cond_52
    :goto_52
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .param p4, "includeNonGrouped"    # Z
    .param p5, "includeEmpty"    # Z
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

    .line 848
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 850
    .local v0, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 851
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_13

    .line 852
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 854
    :cond_13
    new-instance v2, Landroid/app/NotificationChannelGroup;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 855
    .local v2, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 856
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v4, :cond_79

    .line 857
    iget-object v6, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 858
    .local v6, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_32

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_76

    .line 859
    :cond_32
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_73

    .line 860
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_76

    .line 861
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    .line 862
    .local v7, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v7, :cond_6f

    .line 863
    iget-object v8, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v8}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v7

    .line 864
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v8}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 865
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_6f
    invoke-virtual {v7, v6}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 869
    .end local v7    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_76

    .line 871
    :cond_73
    invoke-virtual {v2, v6}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 856
    .end local v6    # "nc":Landroid/app/NotificationChannel;
    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 875
    .end local v5    # "i":I
    :cond_79
    if-eqz p4, :cond_88

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_88

    .line 876
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_88
    if-eqz p5, :cond_b2

    .line 879
    iget-object v3, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_94
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    .line 880
    .local v5, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 881
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .end local v5    # "group":Landroid/app/NotificationChannelGroup;
    :cond_b1
    goto :goto_94

    .line 885
    :cond_b2
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
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

    .line 912
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 913
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_c

    .line 914
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 916
    :cond_c
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
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

    .line 922
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 925
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_13

    .line 926
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 928
    :cond_13
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 929
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_32

    .line 930
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 931
    .local v4, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_2c

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 932
    :cond_2c
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    .end local v4    # "nc":Landroid/app/NotificationChannel;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 935
    .end local v3    # "i":I
    :cond_32
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1296
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1297
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1298
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2b

    .line 1299
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1300
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v5, :cond_28

    .line 1301
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1305
    .end local v3    # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1306
    .end local v1    # "N":I
    .end local v2    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    return v0
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 586
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
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

    .line 535
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 571
    return v0

    .line 573
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 574
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 575
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    if-nez v2, :cond_13

    .line 576
    return v0

    .line 578
    :cond_13
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0
.end method

.method lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 5
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1076
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1077
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1079
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1080
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1082
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1083
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1085
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 1086
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1087
    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1089
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1090
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1092
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1093
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1094
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1096
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_82

    .line 1097
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1099
    :cond_82
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1367
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1369
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1369
    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_43

    .line 1370
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1371
    .local v3, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_40

    .line 1372
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1373
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1373
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1369
    .end local v3    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1379
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_43
    monitor-exit v0

    .line 1380
    return-void

    .line 1379
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)V
    .registers 14
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 1384
    if-eqz p3, :cond_84

    array-length v0, p3

    if-nez v0, :cond_7

    goto/16 :goto_84

    .line 1387
    :cond_7
    const/4 v0, 0x0

    .line 1388
    .local v0, "updated":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 1390
    array-length v2, p3

    array-length v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1391
    .local v2, "size":I
    nop

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_31

    .line 1392
    aget-object v3, p3, v1

    .line 1393
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v1

    .line 1394
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1395
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    .line 1397
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const/4 v0, 0x1

    .line 1391
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1396
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_2e
    move-exception v6

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v6

    .line 1400
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_31
    goto :goto_7e

    .line 1401
    :cond_32
    array-length v2, p3

    :goto_33
    if-ge v1, v2, :cond_7e

    aget-object v3, p3, v1

    .line 1403
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1404
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v4, :cond_67

    .line 1406
    :try_start_41
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 1407
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_53} :catch_66

    .line 1409
    :try_start_53
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    monitor-exit v5

    .line 1411
    const/4 v0, 0x1

    .line 1414
    goto :goto_67

    .line 1410
    :catchall_63
    move-exception v6

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_63

    :try_start_65
    throw v6
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_66} :catch_66

    .line 1412
    :catch_66
    move-exception v5

    .line 1418
    :cond_67
    :goto_67
    :try_start_67
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 1419
    invoke-virtual {v5, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    .line 1418
    invoke-direct {p0, v3, v5}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v5

    .line 1420
    .local v5, "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v5, :cond_79

    .line 1421
    invoke-direct {p0, v5}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 1422
    invoke-direct {p0, v5}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_79
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_79} :catch_7a

    .line 1424
    .end local v5    # "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    :cond_79
    goto :goto_7b

    :catch_7a
    move-exception v5

    .line 1401
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1428
    :cond_7e
    :goto_7e
    if-eqz v0, :cond_83

    .line 1429
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1431
    :cond_83
    return-void

    .line 1385
    .end local v0    # "updated":Z
    :cond_84
    :goto_84
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1355
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1357
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 1358
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1359
    .local v3, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 1360
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1357
    .end local v3    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1363
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_25
    monitor-exit v0

    .line 1364
    return-void

    .line 1363
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 945
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 946
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v3, "miscellaneous"

    .line 947
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 948
    return v2

    .line 950
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 789
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 792
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_d

    .line 793
    return-void

    .line 795
    :cond_d
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    return-void
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 800
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 802
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_a

    .line 803
    return-void

    .line 805
    :cond_a
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 806
    .local v1, "N":I
    move v2, v1

    .line 806
    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2e

    .line 807
    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 808
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 809
    iget-object v4, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .end local v3    # "key":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 812
    .end local v2    # "i":I
    :cond_2e
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
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
    .local v0, "type":I
    const/4 v10, 0x2

    if-eq v0, v10, :cond_c

    return-void

    .line 191
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    .line 195
    :cond_1a
    iget-object v2, v8, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 196
    :goto_1f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v11, v2

    .line 196
    .end local v0    # "type":I
    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v2, v12, :cond_194

    .line 197
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 198
    .end local v1    # "tag":Ljava/lang/String;
    .local v13, "tag":Ljava/lang/String;
    const/4 v14, 0x3

    if-ne v11, v14, :cond_38

    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 199
    return-void

    .line 201
    :cond_38
    if-ne v11, v10, :cond_18f

    .line 202
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 203
    const-string/jumbo v0, "uid"

    sget v1, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {v9, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, "uid":I
    const-string/jumbo v0, "name"

    const/4 v7, 0x0

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 206
    const/4 v5, 0x0

    if-eqz p2, :cond_67

    .line 209
    :try_start_5d
    iget-object v0, v8, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_63} :catch_66

    .line 212
    .end local v1    # "uid":I
    .local v0, "uid":I
    nop

    .line 215
    move v15, v0

    goto :goto_68

    .line 210
    .end local v0    # "uid":I
    .restart local v1    # "uid":I
    :catch_66
    move-exception v0

    .line 215
    :cond_67
    move v15, v1

    .line 215
    .end local v1    # "uid":I
    .local v15, "uid":I
    :goto_68
    const-string/jumbo v0, "importance"

    .line 216
    const/16 v4, -0x3e8

    invoke-static {v9, v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "priority"

    .line 218
    invoke-static {v9, v1, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v1, "visibility"

    .line 219
    invoke-static {v9, v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v1, "show_badge"

    .line 221
    invoke-static {v9, v1, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 215
    move-object v1, v8

    move-object v2, v6

    move v3, v15

    move v10, v4

    move v4, v0

    move v14, v5

    move/from16 v5, v16

    move-object/from16 v16, v6

    move/from16 v6, v17

    .line 215
    .end local v6    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 223
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    const-string/jumbo v0, "importance"

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 225
    const-string/jumbo v0, "priority"

    invoke-static {v9, v0, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 227
    const-string/jumbo v0, "visibility"

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 229
    const-string/jumbo v0, "show_badge"

    invoke-static {v9, v0, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 231
    const-string v0, "app_user_locked_fields"

    invoke-static {v9, v0, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 234
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 234
    .local v0, "innerDepth":I
    :goto_c8
    move v2, v0

    .line 235
    .end local v0    # "innerDepth":I
    .local v2, "innerDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v11, v0

    if-eq v0, v12, :cond_171

    const/4 v3, 0x3

    if-ne v11, v3, :cond_d9

    .line 237
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_171

    .line 238
    :cond_d9
    if-eq v11, v3, :cond_16d

    const/4 v0, 0x4

    if-ne v11, v0, :cond_e0

    .line 239
    goto/16 :goto_16d

    .line 242
    :cond_e0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "tagName":Ljava/lang/String;
    const-string v4, "channelGroup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 245
    const-string/jumbo v4, "id"

    const/4 v5, 0x0

    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "groupName":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_110

    .line 248
    new-instance v7, Landroid/app/NotificationChannelGroup;

    invoke-direct {v7, v4, v6}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 250
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7, v9}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 251
    iget-object v14, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "groupName":Ljava/lang/CharSequence;
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_110

    .line 255
    :cond_10f
    const/4 v5, 0x0

    :cond_110
    :goto_110
    const-string v4, "channel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16c

    .line 256
    const-string/jumbo v4, "id"

    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4    # "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "channelName":Ljava/lang/String;
    const-string/jumbo v7, "importance"

    invoke-static {v9, v7, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 261
    .local v7, "channelImportance":I
    const-string v14, "com.android.dialer"

    iget-object v3, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    const-string/jumbo v3, "phone_incoming_call"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    const/4 v3, 0x5

    if-ge v7, v3, :cond_14b

    .line 263
    const/4 v7, 0x5

    .line 264
    const-string v3, "RankingHelper"

    const-string v14, "Fix channel importance of incoming call to IMPORTANCE_MAX."

    invoke-static {v3, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_14b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16c

    .line 268
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v4, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 270
    .local v3, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_164

    .line 271
    iget-object v14, v8, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v14}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_167

    .line 273
    :cond_164
    invoke-virtual {v3, v9}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 275
    :goto_167
    iget-object v14, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v14, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "channelName":Ljava/lang/String;
    .end local v7    # "channelImportance":I
    :cond_16c
    goto :goto_16e

    .line 234
    :cond_16d
    :goto_16d
    const/4 v5, 0x0

    :goto_16e
    move v0, v2

    goto/16 :goto_c8

    .line 281
    :cond_171
    :try_start_171
    invoke-direct {v8, v1}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_174
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_171 .. :try_end_174} :catch_175

    .line 284
    goto :goto_18d

    .line 282
    :catch_175
    move-exception v0

    move-object v3, v0

    .line 283
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RankingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v2    # "innerDepth":I
    .end local v15    # "uid":I
    .end local v16    # "name":Ljava/lang/String;
    :cond_18d
    :goto_18d
    move v0, v11

    .line 286
    .end local v11    # "type":I
    .local v0, "type":I
    goto :goto_190

    .line 196
    .end local v0    # "type":I
    .restart local v11    # "type":I
    :cond_18f
    move v0, v11

    .line 196
    .end local v11    # "type":I
    .end local v13    # "tag":Ljava/lang/String;
    .restart local v0    # "type":I
    .local v1, "tag":Ljava/lang/String;
    :goto_190
    move-object v1, v13

    const/4 v10, 0x2

    goto/16 :goto_1f

    .line 289
    .end local v0    # "type":I
    .restart local v11    # "type":I
    :cond_194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 1066
    .local v0, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 1067
    return-void

    .line 1070
    :cond_b
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 1071
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1072
    return-void
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 1052
    .local v0, "wasEnabled":Z
    :goto_a
    if-ne v0, p3, :cond_d

    .line 1053
    return-void

    .line 1055
    :cond_d
    nop

    .line 1056
    if-eqz p3, :cond_13

    const/16 v1, -0x3e8

    nop

    .line 1055
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    .line 1057
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 1047
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1048
    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 565
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 566
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 475
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v1, p0

    .line 475
    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 477
    .local v3, "N":I
    add-int/lit8 v0, v3, -0x1

    .line 477
    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_19

    .line 478
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 477
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 482
    .end local v0    # "i":I
    :cond_19
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 484
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 486
    add-int/lit8 v0, v3, -0x1

    .line 486
    .restart local v0    # "i":I
    :goto_23
    if-ltz v0, :cond_47

    .line 487
    :try_start_25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 488
    .local v5, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 489
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "groupKey":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 491
    .local v7, "existingProxy":Lcom/android/server/notification/NotificationRecord;
    if-nez v7, :cond_41

    .line 492
    iget-object v8, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v5    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "groupKey":Ljava/lang/String;
    .end local v7    # "existingProxy":Lcom/android/server/notification/NotificationRecord;
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 528
    .end local v0    # "i":I
    :catchall_44
    move-exception v0

    goto/16 :goto_ed

    .line 497
    :cond_47
    const/4 v0, 0x0

    move v5, v0

    .line 497
    .local v5, "i":I
    :goto_49
    if-ge v5, v3, :cond_e1

    .line 498
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 499
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 500
    .local v7, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v8

    .line 508
    .local v8, "groupSortKey":Ljava/lang/String;
    if-nez v8, :cond_6b

    .line 509
    const-string/jumbo v9, "nsk"

    .line 509
    .local v9, "groupSortKeyPortion":Ljava/lang/String;
    :goto_6a
    goto :goto_88

    .line 510
    .end local v9    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_6b
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 511
    const-string v9, "esk"

    goto :goto_6a

    .line 513
    :cond_76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "gsk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 516
    .restart local v9    # "groupSortKeyPortion":Ljava/lang/String;
    :goto_88
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    .line 517
    .local v10, "isGroupSummary":Z
    const-string/jumbo v11, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    .line 520
    nop

    .line 519
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v13

    const/16 v15, 0x30

    const/4 v14, 0x1

    if-eqz v13, :cond_a9

    .line 520
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    if-le v13, v14, :cond_a9

    .line 521
    nop

    .line 519
    move v13, v15

    goto :goto_ac

    .line 521
    :cond_a9
    nop

    .line 519
    const/16 v13, 0x31

    :goto_ac
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v12, v0

    .line 522
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    .line 523
    if-eqz v10, :cond_c0

    goto :goto_c2

    :cond_c0
    const/16 v15, 0x31

    :goto_c2
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v9, v12, v13

    const/4 v13, 0x4

    .line 525
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 518
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 517
    invoke-virtual {v6, v11}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 497
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "groupSortKey":Ljava/lang/String;
    .end local v9    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v10    # "isGroupSummary":Z
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_49

    .line 527
    .end local v5    # "i":I
    :cond_e1
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 528
    monitor-exit v4
    :try_end_e7
    .catchall {:try_start_25 .. :try_end_e7} :catchall_44

    .line 531
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 532
    return-void

    .line 528
    :goto_ed
    :try_start_ed
    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_44

    throw v0
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 1452
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 1453
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 1455
    :cond_b
    const/4 v0, 0x0

    .line 1457
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1457
    .local v0, "index":I
    .local v2, "changed":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 1458
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1459
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 1460
    .local v4, "oldValue":Z
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_35

    move v5, v7

    goto :goto_36

    :cond_35
    move v5, v1

    .line 1463
    .local v5, "newValue":Z
    :goto_36
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1464
    if-eq v4, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v7, v1

    :goto_3f
    or-int/2addr v2, v7

    .line 1457
    .end local v3    # "userId":I
    .end local v4    # "oldValue":Z
    .end local v5    # "newValue":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1466
    .end local v0    # "index":I
    :cond_43
    if-eqz v2, :cond_48

    .line 1467
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1469
    :cond_48
    return-void
.end method

.method public updateChannelsBypassingDnd()V
    .registers 10

    .line 1003
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1005
    .local v1, "numRecords":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "recordIndex":I
    :goto_b
    if-ge v3, v1, :cond_44

    .line 1006
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1007
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1009
    .local v5, "numChannels":I
    move v6, v2

    .local v6, "channelIndex":I
    :goto_1c
    if-ge v6, v5, :cond_41

    .line 1010
    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    .line 1011
    .local v7, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 1012
    iget-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-nez v2, :cond_3c

    .line 1013
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1014
    invoke-virtual {p0, v2}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1016
    :cond_3c
    monitor-exit v0

    return-void

    .line 1009
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1005
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v5    # "numChannels":I
    .end local v6    # "channelIndex":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1020
    .end local v1    # "numRecords":I
    .end local v3    # "recordIndex":I
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4f

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_4e

    .line 1023
    iput-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1024
    invoke-virtual {p0, v2}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1026
    :cond_4e
    return-void

    .line 1020
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .line 706
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 709
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_9c

    .line 712
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 713
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_94

    .line 716
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 717
    const/16 v2, -0x3e8

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 719
    :cond_30
    if-nez p4, :cond_39

    .line 720
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 722
    :cond_39
    if-eqz p4, :cond_45

    .line 723
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 724
    invoke-virtual {p0, v1, p3}, Lcom/android/server/notification/RankingHelper;->lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 726
    :cond_45
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 731
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 732
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 733
    const/4 v2, 0x2

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 734
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 735
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 738
    :cond_78
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 740
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 743
    :cond_85
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq v2, v3, :cond_90

    .line 744
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 746
    :cond_90
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 747
    return-void

    .line 714
    :cond_94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel does not exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateZenPolicy(Z)V
    .registers 11
    .param p1, "areChannelsBypassingDnd"    # Z

    .line 1029
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1030
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1033
    if-eqz p1, :cond_17

    const/4 v2, 0x1

    .line 1034
    :goto_15
    move v7, v2

    goto :goto_19

    :cond_17
    const/4 v2, 0x0

    goto :goto_15

    :goto_19
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1030
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1035
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 15
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    const-string/jumbo v0, "ranking"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 403
    :try_start_15
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 404
    .local v3, "N":I
    const/4 v4, 0x0

    move v5, v4

    .line 404
    .local v5, "i":I
    :goto_1d
    if-ge v5, v3, :cond_114

    .line 405
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/RankingHelper$Record;

    .line 407
    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_33

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 408
    goto/16 :goto_110

    .line 410
    :cond_33
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-ne v7, v8, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-nez v7, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-ne v7, v8, :cond_5c

    iget-boolean v7, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-ne v7, v2, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    if-nez v7, :cond_5c

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    .line 416
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_5c

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    .line 417
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_5a

    goto :goto_5c

    :cond_5a
    move v7, v4

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v7, v2

    .line 418
    .local v7, "hasNonDefaultSettings":Z
    :goto_5d
    if-eqz v7, :cond_110

    .line 419
    const-string/jumbo v9, "package"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const-string/jumbo v9, "name"

    iget-object v10, v6, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v9, v8, :cond_7d

    .line 422
    const-string/jumbo v9, "importance"

    iget v10, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    :cond_7d
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v9, :cond_8d

    .line 425
    const-string/jumbo v9, "priority"

    iget v10, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    :cond_8d
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v9, v8, :cond_9d

    .line 428
    const-string/jumbo v8, "visibility"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    :cond_9d
    const-string/jumbo v8, "show_badge"

    iget-boolean v9, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string v8, "app_user_locked_fields"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 432
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 431
    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    if-nez p2, :cond_c2

    .line 435
    const-string/jumbo v8, "uid"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    :cond_c2
    iget-object v8, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_cc
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_dc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 439
    .local v9, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 440
    .end local v9    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_cc

    .line 444
    :cond_dc
    iget-object v8, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 445
    .local v9, "object":Ljava/lang/Object;
    instance-of v10, v9, Landroid/app/NotificationChannel;

    if-nez v10, :cond_f5

    .line 446
    goto :goto_e6

    .line 448
    :cond_f5
    move-object v10, v9

    check-cast v10, Landroid/app/NotificationChannel;

    .line 450
    .local v10, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_106

    .line 451
    invoke-virtual {v10}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v11

    if-nez v11, :cond_109

    .line 452
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, p1, v11}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_109

    .line 455
    :cond_106
    invoke-virtual {v10, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 457
    .end local v9    # "object":Ljava/lang/Object;
    .end local v10    # "channel":Landroid/app/NotificationChannel;
    :cond_109
    :goto_109
    goto :goto_e6

    .line 459
    :cond_10a
    const-string/jumbo v8, "package"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v7    # "hasNonDefaultSettings":Z
    :cond_110
    :goto_110
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    .line 462
    .end local v3    # "N":I
    .end local v5    # "i":I
    :cond_114
    monitor-exit v0
    :try_end_115
    .catchall {:try_start_15 .. :try_end_115} :catchall_11c

    .line 463
    const-string/jumbo v0, "ranking"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    return-void

    .line 462
    :catchall_11c
    move-exception v1

    :try_start_11d
    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v1
.end method
